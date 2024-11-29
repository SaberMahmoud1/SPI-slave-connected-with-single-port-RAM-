module SPI_wrapper(
    input clk,
    input rst_n,

    input MOSI,
    input SS_n,

    output MISO
  );
  
  // IP -> slave, OP -> ram 
  wire [7:0] tx_data;  
  // IP -> slave, OP -> ram
  wire tx_valid;
  // OP -> slave, IP -> ram
  wire [9:0] rx_data;
  // OP -> slave, IP -> ram
  wire rx_valid;

  SPI_slave SLAVE (clk, rst_n, MOSI, SS_n, tx_data, tx_valid, MISO, rx_data, rx_valid);
  SPI_RAM RAM (clk, rst_n, rx_data, rx_valid, tx_data, tx_valid);  


endmodule : SPI_wrapper