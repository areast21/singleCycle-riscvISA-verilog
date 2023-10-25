// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Sep 17 18:20:46 2023
// Host        : adminadithya-Precision-Tower-3430 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/adminadithya/Desktop/singleCycleRiscV/singleCycleRiscV.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2049 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19312)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
