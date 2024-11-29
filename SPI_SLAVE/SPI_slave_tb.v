module SPI_slave_tb ();

  reg clk;
  reg rst_n;

  reg MOSI;
  reg SS_n;
  reg [7:0] tx_data;
  reg tx_valid;
   
  wire MISO;
  wire [9:0] rx_data;
  wire rx_valid;

  initial begin
    clk = 0;
    forever begin
      #1 clk = ~clk;
    end
  end

  SPI_slave S1(clk, rst_n, MOSI, SS_n, tx_data, tx_valid, MISO, rx_data, rx_valid);

  initial begin
    MOSI = 0;
    SS_n = 0;
    tx_data = 0;
    tx_valid = 0;
    rst_n = 0;

    #10;
    SS_n = 1;
    rst_n = 1;

    #10;

    // GO to CHK
    SS_n = 0;
    #2;
    // GO to WRITE
    SS_n = 0;
    MOSI = 0;
    #2;
    //SEND DATA
    repeat (10) begin
      MOSI = $random();
      #2;
    end

      // Go to IDLE
      SS_n = 1;
      #2;

      // GO TO CHK
      SS_n = 0;
      #2;

      // GO TO READ_ADD
      SS_n = 0;
      MOSI = 1;
      #2;

      repeat (10) begin
        MOSI = $random();
        #2;
      end

      // Go to IDLE
      SS_n = 1;
      #2;

       // GO TO CHK
      SS_n = 0;
      #2;

      // GO TO READ_DATA --> DUE INTERNAL WIRE
      SS_n = 0;
      MOSI = 1;
      #2;

      repeat (10) begin
        MOSI = $random();
        #2;
      end

      tx_data = 8'b0000_1111;
      tx_valid = 1;

      #16;

      // BACK TO IDLE 
      SS_n = 1;
      #2;

      /* ALL STATES COVERED */

  $stop;
  end

endmodule 