module SPI_slave #(
    parameter IDLE = 3'b000,
    parameter CHK_CMD = 3'b001,
    parameter WRITE = 3'b010,
    parameter READ_ADD = 3'b011,
    parameter READ_DATA = 3'b100
  ) 
  (
    input clk,
    input rst_n,

    input MOSI,
    input SS_n,
    input [7:0] tx_data,
    input tx_valid,

    output  MISO,
    output  [9:0] rx_data,
    output  rx_valid
  );
  
  (*fsm_encoding = "gray"*)
  reg [2:0] cs, ns;

  /* Internal signal to differentiate between READ_ADD and READ_DATA*/
  reg read_ADD_DATA;

  /* Internal signal to change serial data to parallel */
  reg [4:0] bit_count;

  /* Internal signal to hold the serial data till it becomes parallel data*/
  reg [9 : 0] rx_data_reg ;

  /* Internal signal to hold the serial output*/
  reg MISO_reg;

  /* Next state logic*/
  always@( cs or SS_n or MOSI )begin
   case (cs)
      IDLE : begin
        if(SS_n)
          ns = IDLE;
        else
          ns = CHK_CMD;
      end
      CHK_CMD : begin
        if(SS_n)
          ns = IDLE; 
        else if(SS_n == 0 && MOSI == 0)
          ns = WRITE;
        else if(SS_n == 0 && MOSI == 1 && read_ADD_DATA == 0) begin
          ns = READ_ADD; 
          read_ADD_DATA = 1;
        end
        else begin
          ns = READ_DATA;
          read_ADD_DATA = 0;
        end
      end
      WRITE : begin
        if(SS_n)
          ns = IDLE;
        else 
          ns = WRITE;
      end
      READ_ADD : begin
        if(SS_n)
          ns = IDLE;
        else 
          ns = READ_ADD;
      end
      default : begin
        if(SS_n)
          ns = IDLE;
        else 
          ns = READ_DATA;
      end
   endcase
  end

  /* Current state logic*/
  always@(posedge clk) begin
    if(~rst_n)
      cs <= IDLE;
    else
      cs <= ns;
  end

  /* Output logic*/
  always@(posedge clk) begin
    if(~rst_n) begin
      read_ADD_DATA <= 0;
      rx_data_reg <= 0;
      bit_count <= 0;
      MISO_reg <=0;
    end
    else begin

      if(ns == IDLE || ns == CHK_CMD) begin
        bit_count <= 0;
      end

      else if( cs == WRITE || cs == READ_ADD ) begin

          if(bit_count != 10) begin
            rx_data_reg <= rx_data_reg + (MOSI << ( 9 - bit_count )) ;
            bit_count <= bit_count + 1;
          end

      end
      
      else if(cs == READ_DATA && !tx_valid) begin
        if(bit_count != 10) begin
            rx_data_reg <= rx_data_reg + (MOSI << ( 9 - bit_count )) ;
            bit_count <= bit_count + 1;
          end
      end
      else if(cs == READ_DATA && tx_valid) begin  
        if(bit_count != 18) begin
          MISO_reg <= tx_data >> (17 - bit_count);
          bit_count <= bit_count + 1;
        end
      end
    
    end
  end

  assign rx_data = rx_data_reg;
  assign rx_valid = ((cs == WRITE || cs == READ_DATA || cs == READ_ADD)) ? 1 : 0;
  assign MISO = MISO_reg;

endmodule 