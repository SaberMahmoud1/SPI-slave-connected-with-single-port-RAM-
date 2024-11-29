module SPI_wrapper_tb();
reg MOSI,SS_n,clk,rst_n;
wire MISO;

SPI_wrapper M1(clk, rst_n, MOSI, SS_n, MISO);

initial begin
    clk=0;
  forever
     #1 clk=~clk;
end

initial begin

  MOSI = 0;
  SS_n = 0;
  rst_n=0;
  #10;
  SS_n=1;
  rst_n=1;
  #10;

  /*First test*/
  /********************************************************************************************************************************************************************/

  // --> Current state is the IDLE state
  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  SS_n = 0;
  MOSI = 0;
  #2;
  
  // --> Transition to WRITE ADDR state

  //give a write addr din = [00_1010_1010]
  MOSI=0;
  #2;
  MOSI =0;
  #2; 
     
  repeat(8) begin
    MOSI=~MOSI;
    #2;
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;  //--> TIME = 44
  #2;

  // --> Transition to IDLE state
  
  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=0;
  #2;
     
  // --> Transition to WRITE DATA state   

  //give write data din = [01_0101_0101]
  MOSI=0;
  #2;
  MOSI =1;
  #2; 
     
  repeat(8) begin
    MOSI=~MOSI;
    #2; 
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;
  #2;

  // --> Transition to IDLE state

  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=1;
  #2;
  
  // --> Transition to READ_ADDR state   

  //give a read addr din = [10_1010_1010]
  MOSI=1;
  #2;
  MOSI=0;
  #2; 
     
  repeat(8) begin
     MOSI=~MOSI;
     #2;
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;
  #2;

  // --> Transition to IDLE state

  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=1;
  #2;
  
  // --> Transition to READ_ADDR state
  
  // Read data from the address  given in the previous step --> din = [11_RANDOM/DON'T CARE]
  MOSI=1;
  #2; 
  MOSI=1;
  #2; 
  
  repeat(8) begin
    MOSI=$random();  
    #2; 
  end 
  
  // --> at the positive edge, the rx_valid is sent along with the rx_data
  // This time, we expect a feedback from the ram thus it's important to wait for an additional cycle till ram reads rx_valid
  // And from the next cycle the 1st bit is sent  
  // TOTAL WAIT = 9 CLOCK CYCLES
  #2;

  // --> RAM reads command at the posedge

  // Wait till all bits are sent through MISO --> 8 cycles
  #16;

  // --> Last bit is sent through MISO at the posedge

  SS_n=1;
  #2;

  // --> Transition to IDLE state


  /*Second test*/
  /********************************************************************************************************************************************************************/

  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  SS_n = 0;
  MOSI = 0;
  #2;
  
  // --> Transition to WRITE ADDR state

  //give a write addr din = [00_0101_0101]
  MOSI=0;
  #2;
  MOSI =0 ;
  #2; 
     
  MOSI = 1;
  repeat(8) begin
    MOSI=~MOSI;
    #2;
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;
  #2;
  // --> Transition to IDLE state
  
  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=0;
  #2;
     
  // --> Transition to WRITE DATA state   

  //give write data din = [01_1010_1010]
  MOSI=0;
  #2;
  MOSI =1;
  #2; 
  
  MOSI =0;
  repeat(8) begin
    MOSI=~MOSI;
    #2; 
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;
  #2;

  // --> Transition to IDLE state

  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=1;
  #2;
  
  // --> Transition to READ_ADDR state   

  //give a read addr din = [10_0101_0101]
  MOSI=1;
  #2;
  MOSI=0;
  #2; 
  
  MOSI =1;
  repeat(8) begin
     MOSI=~MOSI;
     #2;
  end

  // --> at the positive edge, the rx_valid is sent along with the rx_data

  SS_n=1;
  #2;

  // --> Transition to IDLE state

  SS_n=0;
  MOSI=0;
  #2;

  // --> Transition to CHK_CMD state

  MOSI=1;
  #2;
  
  // --> Transition to READ_ADDR state
  
  // Read data from the address  given in the previous step --> din = [11_RANDOM/DON'T CARE]
  MOSI=1;
  #2; 
  MOSI=1;
  #2; 
  
  repeat(8) begin
    MOSI=$random();  
    #2; 
  end 
  
  // --> at the positive edge, the rx_valid is sent along with the rx_data
  // This time, we expect a feedback from the ram thus it's important to wait for an additional cycle till ram reads rx_valid
  // And from the next cycle the 1st bit is sent  
  // TOTAL WAIT = 9 CLOCK CYCLES
  #2;

  // --> RAM reads command at the posedge

  // Wait till all bits are sent through MISO --> 8 cycles
  #16;

  // --> Last bit is sent through MISO at the posedge

  SS_n=1;
  #2;

  // --> Transition to IDLE state

  /********************************************************************************************************************************************************************/
  SS_n = 1;
  #4;

  $stop;
  end
endmodule