// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug 22 14:29:05 2023
// Host        : LAPTOP-AJOPQS6O running 64-bit major release  (build 9200)
// Command     : write_verilog -force SPI_netlist.v
// Design      : SPI_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SPI_RAM
   (SR,
    tx_valid,
    MISO_reg_reg,
    MISO_reg_reg_0,
    CLK,
    \rx_data_reg_reg[8] ,
    \rx_data_reg_reg[9] ,
    Q,
    rst_n_IBUF,
    \rx_data_reg_reg[9]_0 ,
    \bit_count_reg[2] ,
    E,
    \rx_data_reg_reg[8]_0 );
  output [0:0]SR;
  output tx_valid;
  output MISO_reg_reg;
  output MISO_reg_reg_0;
  input CLK;
  input \rx_data_reg_reg[8] ;
  input \rx_data_reg_reg[9] ;
  input [7:0]Q;
  input rst_n_IBUF;
  input \rx_data_reg_reg[9]_0 ;
  input [1:0]\bit_count_reg[2] ;
  input [0:0]E;
  input [0:0]\rx_data_reg_reg[8]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_reg_reg;
  wire MISO_reg_reg_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [1:0]\bit_count_reg[2] ;
  wire [7:0]read_addr;
  wire rst_n_IBUF;
  wire \rx_data_reg_reg[8] ;
  wire [0:0]\rx_data_reg_reg[8]_0 ;
  wire \rx_data_reg_reg[9] ;
  wire \rx_data_reg_reg[9]_0 ;
  wire [7:0]tx_data;
  wire tx_valid;
  wire [7:0]write_addr;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    MISO_reg_i_5
       (.I0(tx_data[3]),
        .I1(tx_data[7]),
        .I2(tx_data[5]),
        .I3(\bit_count_reg[2] [1]),
        .I4(\bit_count_reg[2] [0]),
        .I5(tx_data[1]),
        .O(MISO_reg_reg_0));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    MISO_reg_i_6
       (.I0(tx_data[2]),
        .I1(tx_data[6]),
        .I2(tx_data[0]),
        .I3(\bit_count_reg[2] [1]),
        .I4(\bit_count_reg[2] [0]),
        .I5(tx_data[4]),
        .O(MISO_reg_reg));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,write_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,read_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(\rx_data_reg_reg[8] ),
        .ENBWREN(\rx_data_reg_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[0]),
        .Q(read_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[1]),
        .Q(read_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[2]),
        .Q(read_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[3]),
        .Q(read_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[4]),
        .Q(read_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[5]),
        .Q(read_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[6] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[6]),
        .Q(read_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[7] 
       (.C(CLK),
        .CE(\rx_data_reg_reg[8]_0 ),
        .D(Q[7]),
        .Q(read_addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg_reg[9]_0 ),
        .Q(tx_valid),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(write_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(write_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(write_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(write_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(write_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(write_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(write_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(write_addr[7]),
        .R(SR));
endmodule

module SPI_slave
   (MISO_OBUF,
    tx_valid_reg,
    Q,
    \read_addr_reg[0] ,
    mem_reg,
    \read_addr_reg[0]_0 ,
    mem_reg_0,
    E,
    SR,
    CLK,
    tx_valid,
    rst_n_IBUF,
    SS_n_IBUF,
    D,
    mem_reg_1,
    mem_reg_2);
  output MISO_OBUF;
  output tx_valid_reg;
  output [7:0]Q;
  output [1:0]\read_addr_reg[0] ;
  output mem_reg;
  output [0:0]\read_addr_reg[0]_0 ;
  output mem_reg_0;
  output [0:0]E;
  input [0:0]SR;
  input CLK;
  input tx_valid;
  input rst_n_IBUF;
  input SS_n_IBUF;
  input [0:0]D;
  input mem_reg_1;
  input mem_reg_2;

  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[2]_i_2_n_0 ;
  wire MISO_OBUF;
  wire MISO_reg;
  wire MISO_reg_i_3_n_0;
  wire MISO_reg_i_4_n_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[4]_i_1_n_0 ;
  wire \bit_count[4]_i_2_n_0 ;
  wire [4:0]bit_count_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [1:1]ns__0;
  wire [4:1]p_0_in;
  wire p_1_in;
  wire read_ADD_DATA_i_1_n_0;
  wire read_ADD_DATA_reg_n_0;
  wire [1:0]\read_addr_reg[0] ;
  wire [0:0]\read_addr_reg[0]_0 ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire rx_data_reg;
  wire \rx_data_reg[9]_i_2_n_0 ;
  wire rx_valid;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h5555444455554044)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(cs[2]),
        .I2(read_ADD_DATA_reg_n_0),
        .I3(D),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF1500)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(cs[0]),
        .I1(D),
        .I2(read_ADD_DATA_reg_n_0),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(SS_n_IBUF),
        .O(ns__0));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(SS_n_IBUF),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(\FSM_sequential_cs[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:100,WRITE:011,READ_ADD:010,iSTATE:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:100,WRITE:011,READ_ADD:010,iSTATE:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns__0),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:100,WRITE:011,READ_ADD:010,iSTATE:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_cs[2]_i_2_n_0 ),
        .Q(cs[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    MISO_reg_i_1
       (.I0(tx_valid),
        .I1(MISO_reg_i_3_n_0),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(SS_n_IBUF),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'h0000001818180018)) 
    MISO_reg_i_2
       (.I0(bit_count_reg__0[3]),
        .I1(MISO_reg_i_4_n_0),
        .I2(bit_count_reg__0[4]),
        .I3(mem_reg_1),
        .I4(bit_count_reg__0[0]),
        .I5(mem_reg_2),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    MISO_reg_i_3
       (.I0(bit_count_reg__0[0]),
        .I1(\read_addr_reg[0] [0]),
        .I2(bit_count_reg__0[3]),
        .I3(bit_count_reg__0[4]),
        .I4(\read_addr_reg[0] [1]),
        .O(MISO_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    MISO_reg_i_4
       (.I0(\read_addr_reg[0] [0]),
        .I1(\read_addr_reg[0] [1]),
        .O(MISO_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg_reg
       (.C(CLK),
        .CE(MISO_reg),
        .D(p_1_in),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count_reg__0[0]),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(\read_addr_reg[0] [0]),
        .I1(bit_count_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1 
       (.I0(\read_addr_reg[0] [1]),
        .I1(bit_count_reg__0[0]),
        .I2(\read_addr_reg[0] [0]),
        .O(\bit_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_1 
       (.I0(bit_count_reg__0[3]),
        .I1(\read_addr_reg[0] [0]),
        .I2(bit_count_reg__0[0]),
        .I3(\read_addr_reg[0] [1]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFF01FFFF)) 
    \bit_count[4]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(SS_n_IBUF),
        .I4(rst_n_IBUF),
        .O(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003A003000330030)) 
    \bit_count[4]_i_2 
       (.I0(MISO_reg_i_3_n_0),
        .I1(\rx_data_reg[9]_i_2_n_0 ),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(tx_valid),
        .O(\bit_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bit_count[4]_i_3 
       (.I0(bit_count_reg__0[4]),
        .I1(bit_count_reg__0[3]),
        .I2(\read_addr_reg[0] [1]),
        .I3(bit_count_reg__0[0]),
        .I4(\read_addr_reg[0] [0]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(\bit_count[4]_i_2_n_0 ),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(bit_count_reg__0[0]),
        .R(\bit_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(\bit_count[4]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\read_addr_reg[0] [0]),
        .R(\bit_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(\bit_count[4]_i_2_n_0 ),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\read_addr_reg[0] [1]),
        .R(\bit_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(CLK),
        .CE(\bit_count[4]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(bit_count_reg__0[3]),
        .R(\bit_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(CLK),
        .CE(\bit_count[4]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(bit_count_reg__0[4]),
        .R(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8A8A888)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(bit_count_reg__0[4]),
        .I2(bit_count_reg__0[3]),
        .I3(\read_addr_reg[0] [0]),
        .I4(\read_addr_reg[0] [1]),
        .I5(rx_data[9]),
        .O(mem_reg));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_valid),
        .I2(rx_data[8]),
        .I3(rst_n_IBUF),
        .O(mem_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    mem_reg_i_3
       (.I0(bit_count_reg__0[4]),
        .I1(bit_count_reg__0[3]),
        .I2(\read_addr_reg[0] [0]),
        .I3(\read_addr_reg[0] [1]),
        .O(rx_valid));
  LUT4 #(
    .INIT(16'hFB10)) 
    read_ADD_DATA_i_1
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(read_ADD_DATA_reg_n_0),
        .O(read_ADD_DATA_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_ADD_DATA_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(read_ADD_DATA_i_1_n_0),
        .Q(read_ADD_DATA_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h5454544400000000)) 
    \read_addr[7]_i_1 
       (.I0(rx_data[8]),
        .I1(bit_count_reg__0[4]),
        .I2(bit_count_reg__0[3]),
        .I3(\read_addr_reg[0] [0]),
        .I4(\read_addr_reg[0] [1]),
        .I5(rx_data[9]),
        .O(\read_addr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000005510)) 
    \rx_data_reg[9]_i_1 
       (.I0(\rx_data_reg[9]_i_2_n_0 ),
        .I1(tx_valid),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(SS_n_IBUF),
        .O(rx_data_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \rx_data_reg[9]_i_2 
       (.I0(bit_count_reg__0[0]),
        .I1(\read_addr_reg[0] [0]),
        .I2(\read_addr_reg[0] [1]),
        .I3(bit_count_reg__0[3]),
        .I4(bit_count_reg__0[4]),
        .O(\rx_data_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[3]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[4]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[5]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[6]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[8] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(Q[7]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[9] 
       (.C(CLK),
        .CE(rx_data_reg),
        .D(rx_data[8]),
        .Q(rx_data[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAA800000)) 
    tx_valid_i_1
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .I3(tx_valid),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
  LUT6 #(
    .INIT(64'h0000000054545444)) 
    \write_addr[7]_i_1 
       (.I0(rx_data[8]),
        .I1(bit_count_reg__0[4]),
        .I2(bit_count_reg__0[3]),
        .I3(\read_addr_reg[0] [0]),
        .I4(\read_addr_reg[0] [1]),
        .I5(rx_data[9]),
        .O(E));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_wrapper
   (clk,
    rst_n,
    MOSI,
    SS_n,
    MISO);
  input clk;
  input rst_n;
  input MOSI;
  input SS_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_n_0;
  wire RAM_n_2;
  wire RAM_n_3;
  wire SLAVE_n_1;
  wire SLAVE_n_12;
  wire SLAVE_n_13;
  wire SLAVE_n_14;
  wire SLAVE_n_15;
  wire SS_n;
  wire SS_n_IBUF;
  wire [2:1]bit_count_reg__0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SPI_RAM RAM
       (.CLK(clk_IBUF_BUFG),
        .E(SLAVE_n_15),
        .MISO_reg_reg(RAM_n_2),
        .MISO_reg_reg_0(RAM_n_3),
        .Q(rx_data),
        .SR(RAM_n_0),
        .\bit_count_reg[2] (bit_count_reg__0),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg_reg[8] (SLAVE_n_12),
        .\rx_data_reg_reg[8]_0 (SLAVE_n_13),
        .\rx_data_reg_reg[9] (SLAVE_n_14),
        .\rx_data_reg_reg[9]_0 (SLAVE_n_1),
        .tx_valid(tx_valid));
  SPI_slave SLAVE
       (.CLK(clk_IBUF_BUFG),
        .D(MOSI_IBUF),
        .E(SLAVE_n_15),
        .MISO_OBUF(MISO_OBUF),
        .Q(rx_data),
        .SR(RAM_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .mem_reg(SLAVE_n_12),
        .mem_reg_0(SLAVE_n_14),
        .mem_reg_1(RAM_n_3),
        .mem_reg_2(RAM_n_2),
        .\read_addr_reg[0] (bit_count_reg__0),
        .\read_addr_reg[0]_0 (SLAVE_n_13),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(SLAVE_n_1));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
