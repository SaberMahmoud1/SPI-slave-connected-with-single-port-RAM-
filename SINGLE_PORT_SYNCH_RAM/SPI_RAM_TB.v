module SPI_RAM_tb ();
  reg clk;
  reg rst_n;

  reg [9:0] din;
  reg rx_valid;

  wire [7:0] dout;
  wire tx_valid;

  initial begin
    clk = 0;
    forever begin
      #1 clk = ~clk;
    end
  end

  SPI_RAM RAM(clk, rst_n, din, rx_valid, dout, tx_valid);

  initial begin
    din = 0;
    rx_valid = 0;
    rst_n = 0;
    #10;
    rst_n = 1;
    #10;

    #1;
    // Write add write case
    #0 rx_valid = 1;
    #0 din = 10'b00_0000_0001;
    // wait till ram senses input
    #2;

    // Wait
    #0 rx_valid = 0;
    #2;

    // Write Data case
    #0 rx_valid = 1;
    #0 din = 10'b01_1111_1111;
    // wait till ram senses input
    #2;

    // Wait
    #0 rx_valid = 0;
    #2;

    // Write add read case
    #0 rx_valid = 1;
    #0 din = 10'b10_0000_0001;  
    // wait till ram senses input  
    #2;

    // Wait
    #0 rx_valid = 0;
    #2;

    // read data case
    #0 rx_valid = 1;
    #0 din = 10'b11_1111_1111;
    // wait till ram senses input    
    #2;    
    // wait till the spi_slave feel tx_valid, then sends 1st bit
    #2;
    // Wait till slave sends the data --> 7-bits
    #14;

    // wait till cs goes to IDLE --> rx_valid goes to zero
    #2;
    #0 rx_valid = 0;

    // wait till ram senses Input  
    #2;
    if(tx_valid != 0)
      $display("ERROR");
  #4 $stop;
  end

endmodule 