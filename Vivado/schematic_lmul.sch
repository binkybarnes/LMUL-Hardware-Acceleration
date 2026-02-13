# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new fc_accel work:fc_accel:NOFILE
load symbol lmul_bf16 work:lmul_bf16:NOFILE HIERBOX pin clk input.left pin i_ready output.right pin i_valid input.left pin o_ready input.left pin o_valid output.right pin rstn input.left pinBus i_a input.left [15:0] pinBus i_b input.left [15:0] pinBus o_p output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX2 work MUX pin S input.bot pinBus I0 input.left [14:0] pinBus I1 input.left [14:0] pinBus O output.right [14:0] fillcolor 1
load symbol RTL_EQ0 work RTL(=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] fillcolor 1
load symbol RTL_OR workI0 OR pin I0 input.neg pin I1 input pin O output fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_ASYNC__BREG_1 workCLR GEN pin C input.clk.left pin CE input.left pin CLR input.neg.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_XOR work XOR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [14:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [16:0] pinBus I1 input.left [16:0] pinBus O output.right [16:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [16:0] pinBus I1 input.left [14:0] pinBus O output.right [16:0] fillcolor 1
load symbol RTL_EQ1 work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_OR0 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_REG_ASYNC__BREG_1 workCLR[15:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.neg.top pinBus D input.left [15:0] pinBus Q output.right [15:0] fillcolor 1 sandwich 3 prop @bundle 16
load inst mul lmul_bf16 work:lmul_bf16:NOFILE -attr @cell(#000000) lmul_bf16 -attr @fillcolor #fafafa -pinBusAttr i_a @name i_a[15:0] -pinBusAttr i_b @name i_b[15:0] -pinBusAttr o_p @name o_p[15:0] -pg 1 -lvl 1 -x 70 -y 58
load inst mul|a_reg0_i RTL_AND work -hier mul -attr @name a_reg0_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 170 -y 458
load inst mul|field_sel0_i RTL_MUX2 work -hier mul -attr @name field_sel0_i -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[14:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[14:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[14:0] -pg 1 -lvl 6 -x 1710 -y 138
load inst mul|field_sel1_i RTL_EQ0 work -hier mul -attr @name field_sel1_i -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"10\" -pg 1 -lvl 5 -x 1340 -y 108
load inst mul|field_sel2_i RTL_EQ0 work -hier mul -attr @name field_sel2_i -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\" -pg 1 -lvl 5 -x 1340 -y 198
load inst mul|field_sel_i RTL_MUX2 work -hier mul -attr @name field_sel_i -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[14:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[14:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[14:0] -pg 1 -lvl 7 -x 2030 -y 368
load inst mul|i_ready_i RTL_OR workI0 -hier mul -attr @name i_ready_i -attr @cell(#000000) RTL_OR -pg 1 -lvl 9 -x 2650 -y 518
load inst mul|o_valid0_i RTL_AND work -hier mul -attr @name o_valid0_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 6 -x 1710 -y 358
load inst mul|o_valid_i RTL_MUX work -hier mul -attr @name o_valid_i -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 7 -x 2030 -y 188
load inst mul|o_valid_reg RTL_REG_ASYNC__BREG_1 workCLR -hier mul -attr @name o_valid_reg -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 8 -x 2390 -y 178
load inst mul|out_sign0_i RTL_XOR work -hier mul -attr @name out_sign0_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 7 -x 2030 -y 638
load inst mul|out_sign_i RTL_MUX0 work -hier mul -attr @name out_sign_i -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=15'b000000000000000 -pinAttr I1 @attr S=default -pinBusAttr S @name S[14:0] -pg 1 -lvl 8 -x 2390 -y 368
load inst mul|sum_full0_i RTL_ADD0 work -hier mul -attr @name sum_full0_i -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[16:0] -pinBusAttr I1 @name I1[16:0] -pinBusAttr O @name O[16:0] -pg 1 -lvl 3 -x 690 -y 508
load inst mul|sum_full_i RTL_ADD work -hier mul -attr @name sum_full_i -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[16:0] -pinBusAttr I1 @name I1[14:0] -pinBusAttr I1 @attr V=B\"100000010000000\" -pinBusAttr O @name O[16:0] -pg 1 -lvl 4 -x 1040 -y 198
load inst mul|zero_or_sub0_i RTL_EQ1 work -hier mul -attr @name zero_or_sub0_i -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 5 -x 1340 -y 468
load inst mul|zero_or_sub0_i__0 RTL_EQ1 work -hier mul -attr @name zero_or_sub0_i__0 -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 5 -x 1340 -y 558
load inst mul|zero_or_sub_i RTL_OR0 work -hier mul -attr @name zero_or_sub_i -attr @cell(#000000) RTL_OR -pg 1 -lvl 6 -x 1710 -y 478
load inst mul|a_reg_reg[15:0] RTL_REG_ASYNC__BREG_1 workCLR[15:0]sssww -hier mul -attr @name a_reg_reg[15:0] -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 2 -x 400 -y 488
load inst mul|o_p_reg[15:0] RTL_REG_ASYNC__BREG_1 workCLR[15:0]sssww -hier mul -attr @name o_p_reg[15:0] -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 9 -x 2650 -y 268
load inst mul|b_reg_reg[15:0] RTL_REG_ASYNC__BREG_1 workCLR[15:0]sssww -hier mul -attr @name b_reg_reg[15:0] -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 2 -x 400 -y 658
load net mul|<const0> -ground -attr @name <const0> -pin mul|field_sel1_i I1[0] -pin mul|field_sel2_i I1[1] -pin mul|field_sel_i I0[14] -pin mul|field_sel_i I0[13] -pin mul|field_sel_i I0[12] -pin mul|field_sel_i I0[11] -pin mul|field_sel_i I0[10] -pin mul|field_sel_i I0[9] -pin mul|field_sel_i I0[8] -pin mul|field_sel_i I0[7] -pin mul|field_sel_i I0[6] -pin mul|field_sel_i I0[5] -pin mul|field_sel_i I0[4] -pin mul|field_sel_i I0[3] -pin mul|field_sel_i I0[2] -pin mul|field_sel_i I0[1] -pin mul|field_sel_i I0[0] -pin mul|out_sign_i I0 -pin mul|sum_full0_i I0[16] -pin mul|sum_full0_i I0[15] -pin mul|sum_full0_i I1[16] -pin mul|sum_full0_i I1[15] -pin mul|sum_full_i I1[13] -pin mul|sum_full_i I1[12] -pin mul|sum_full_i I1[11] -pin mul|sum_full_i I1[10] -pin mul|sum_full_i I1[9] -pin mul|sum_full_i I1[8] -pin mul|sum_full_i I1[6] -pin mul|sum_full_i I1[5] -pin mul|sum_full_i I1[4] -pin mul|sum_full_i I1[3] -pin mul|sum_full_i I1[2] -pin mul|sum_full_i I1[1] -pin mul|sum_full_i I1[0] -pin mul|zero_or_sub0_i I1[7] -pin mul|zero_or_sub0_i I1[6] -pin mul|zero_or_sub0_i I1[5] -pin mul|zero_or_sub0_i I1[4] -pin mul|zero_or_sub0_i I1[3] -pin mul|zero_or_sub0_i I1[2] -pin mul|zero_or_sub0_i I1[1] -pin mul|zero_or_sub0_i I1[0] -pin mul|zero_or_sub0_i__0 I1[7] -pin mul|zero_or_sub0_i__0 I1[6] -pin mul|zero_or_sub0_i__0 I1[5] -pin mul|zero_or_sub0_i__0 I1[4] -pin mul|zero_or_sub0_i__0 I1[3] -pin mul|zero_or_sub0_i__0 I1[2] -pin mul|zero_or_sub0_i__0 I1[1] -pin mul|zero_or_sub0_i__0 I1[0]
load net mul|<const1> -power -attr @name <const1> -pin mul|field_sel1_i I1[1] -pin mul|field_sel2_i I1[0] -pin mul|o_valid_i I0 -pin mul|sum_full_i I1[14] -pin mul|sum_full_i I1[7]
load net mul|a_fld[0] -attr @name a_fld[0] -attr @rip(#000000) 0 -pin mul|a_reg_reg[15:0] Q[0] -pin mul|sum_full0_i I0[0]
load net mul|a_fld[10] -attr @name a_fld[10] -pin mul|a_reg_reg[15:0] Q[10] -pin mul|sum_full0_i I0[10] -pin mul|zero_or_sub0_i I0[3]
load net mul|a_fld[11] -attr @name a_fld[11] -pin mul|a_reg_reg[15:0] Q[11] -pin mul|sum_full0_i I0[11] -pin mul|zero_or_sub0_i I0[4]
load net mul|a_fld[12] -attr @name a_fld[12] -pin mul|a_reg_reg[15:0] Q[12] -pin mul|sum_full0_i I0[12] -pin mul|zero_or_sub0_i I0[5]
load net mul|a_fld[13] -attr @name a_fld[13] -pin mul|a_reg_reg[15:0] Q[13] -pin mul|sum_full0_i I0[13] -pin mul|zero_or_sub0_i I0[6]
load net mul|a_fld[14] -attr @name a_fld[14] -pin mul|a_reg_reg[15:0] Q[14] -pin mul|sum_full0_i I0[14] -pin mul|zero_or_sub0_i I0[7]
load net mul|a_fld[1] -attr @name a_fld[1] -attr @rip(#000000) 1 -pin mul|a_reg_reg[15:0] Q[1] -pin mul|sum_full0_i I0[1]
load net mul|a_fld[2] -attr @name a_fld[2] -attr @rip(#000000) 2 -pin mul|a_reg_reg[15:0] Q[2] -pin mul|sum_full0_i I0[2]
load net mul|a_fld[3] -attr @name a_fld[3] -attr @rip(#000000) 3 -pin mul|a_reg_reg[15:0] Q[3] -pin mul|sum_full0_i I0[3]
load net mul|a_fld[4] -attr @name a_fld[4] -attr @rip(#000000) 4 -pin mul|a_reg_reg[15:0] Q[4] -pin mul|sum_full0_i I0[4]
load net mul|a_fld[5] -attr @name a_fld[5] -attr @rip(#000000) 5 -pin mul|a_reg_reg[15:0] Q[5] -pin mul|sum_full0_i I0[5]
load net mul|a_fld[6] -attr @name a_fld[6] -attr @rip(#000000) 6 -pin mul|a_reg_reg[15:0] Q[6] -pin mul|sum_full0_i I0[6]
load net mul|a_fld[7] -attr @name a_fld[7] -pin mul|a_reg_reg[15:0] Q[7] -pin mul|sum_full0_i I0[7] -pin mul|zero_or_sub0_i I0[0]
load net mul|a_fld[8] -attr @name a_fld[8] -pin mul|a_reg_reg[15:0] Q[8] -pin mul|sum_full0_i I0[8] -pin mul|zero_or_sub0_i I0[1]
load net mul|a_fld[9] -attr @name a_fld[9] -pin mul|a_reg_reg[15:0] Q[9] -pin mul|sum_full0_i I0[9] -pin mul|zero_or_sub0_i I0[2]
load net mul|a_reg0 -attr @name a_reg0 -pin mul|a_reg0_i O -pin mul|a_reg_reg[15:0] CE -pin mul|b_reg_reg[15:0] CE -pin mul|o_p_reg[15:0] CE -pin mul|o_valid_i S -pin mul|o_valid_reg D
netloc mul|a_reg0 1 1 8 300 398 NJ 398 NJ 398 NJ 398 1540J 408 1860 248N 2200 268 NJ
load net mul|a_sign -attr @name a_sign -pin mul|a_reg_reg[15:0] Q[15] -pin mul|out_sign0_i I0
load net mul|b_fld[0] -attr @name b_fld[0] -attr @rip(#000000) 0 -pin mul|b_reg_reg[15:0] Q[0] -pin mul|sum_full0_i I1[0]
load net mul|b_fld[10] -attr @name b_fld[10] -pin mul|b_reg_reg[15:0] Q[10] -pin mul|sum_full0_i I1[10] -pin mul|zero_or_sub0_i__0 I0[3]
load net mul|b_fld[11] -attr @name b_fld[11] -pin mul|b_reg_reg[15:0] Q[11] -pin mul|sum_full0_i I1[11] -pin mul|zero_or_sub0_i__0 I0[4]
load net mul|b_fld[12] -attr @name b_fld[12] -pin mul|b_reg_reg[15:0] Q[12] -pin mul|sum_full0_i I1[12] -pin mul|zero_or_sub0_i__0 I0[5]
load net mul|b_fld[13] -attr @name b_fld[13] -pin mul|b_reg_reg[15:0] Q[13] -pin mul|sum_full0_i I1[13] -pin mul|zero_or_sub0_i__0 I0[6]
load net mul|b_fld[14] -attr @name b_fld[14] -pin mul|b_reg_reg[15:0] Q[14] -pin mul|sum_full0_i I1[14] -pin mul|zero_or_sub0_i__0 I0[7]
load net mul|b_fld[1] -attr @name b_fld[1] -attr @rip(#000000) 1 -pin mul|b_reg_reg[15:0] Q[1] -pin mul|sum_full0_i I1[1]
load net mul|b_fld[2] -attr @name b_fld[2] -attr @rip(#000000) 2 -pin mul|b_reg_reg[15:0] Q[2] -pin mul|sum_full0_i I1[2]
load net mul|b_fld[3] -attr @name b_fld[3] -attr @rip(#000000) 3 -pin mul|b_reg_reg[15:0] Q[3] -pin mul|sum_full0_i I1[3]
load net mul|b_fld[4] -attr @name b_fld[4] -attr @rip(#000000) 4 -pin mul|b_reg_reg[15:0] Q[4] -pin mul|sum_full0_i I1[4]
load net mul|b_fld[5] -attr @name b_fld[5] -attr @rip(#000000) 5 -pin mul|b_reg_reg[15:0] Q[5] -pin mul|sum_full0_i I1[5]
load net mul|b_fld[6] -attr @name b_fld[6] -attr @rip(#000000) 6 -pin mul|b_reg_reg[15:0] Q[6] -pin mul|sum_full0_i I1[6]
load net mul|b_fld[7] -attr @name b_fld[7] -pin mul|b_reg_reg[15:0] Q[7] -pin mul|sum_full0_i I1[7] -pin mul|zero_or_sub0_i__0 I0[0]
load net mul|b_fld[8] -attr @name b_fld[8] -pin mul|b_reg_reg[15:0] Q[8] -pin mul|sum_full0_i I1[8] -pin mul|zero_or_sub0_i__0 I0[1]
load net mul|b_fld[9] -attr @name b_fld[9] -pin mul|b_reg_reg[15:0] Q[9] -pin mul|sum_full0_i I1[9] -pin mul|zero_or_sub0_i__0 I0[2]
load net mul|b_sign -attr @name b_sign -pin mul|b_reg_reg[15:0] Q[15] -pin mul|out_sign0_i I1
load net mul|carry2[0] -attr @name carry2[0] -attr @rip(#000000) O[15] -pin mul|field_sel1_i I0[0] -pin mul|field_sel2_i I0[0] -pin mul|sum_full_i O[15]
load net mul|carry2[1] -attr @name carry2[1] -attr @rip(#000000) O[16] -pin mul|field_sel1_i I0[1] -pin mul|field_sel2_i I0[1] -pin mul|sum_full_i O[16]
load net mul|clk -attr @name clk -hierPin mul clk -pin mul|a_reg_reg[15:0] C -pin mul|b_reg_reg[15:0] C -pin mul|o_p_reg[15:0] C -pin mul|o_valid_reg C
netloc mul|clk 1 0 9 NJ 268 340 268 NJ 268 NJ 268 NJ 268 NJ 268 NJ 268 2220 248 NJ
load net mul|field_sel0_i_n_0 -attr @name field_sel0_i_n_0 -attr @rip(#000000) O[14] -pin mul|field_sel0_i O[14] -pin mul|field_sel_i I1[14]
load net mul|field_sel0_i_n_1 -attr @name field_sel0_i_n_1 -attr @rip(#000000) O[13] -pin mul|field_sel0_i O[13] -pin mul|field_sel_i I1[13]
load net mul|field_sel0_i_n_10 -attr @name field_sel0_i_n_10 -attr @rip(#000000) O[4] -pin mul|field_sel0_i O[4] -pin mul|field_sel_i I1[4]
load net mul|field_sel0_i_n_11 -attr @name field_sel0_i_n_11 -attr @rip(#000000) O[3] -pin mul|field_sel0_i O[3] -pin mul|field_sel_i I1[3]
load net mul|field_sel0_i_n_12 -attr @name field_sel0_i_n_12 -attr @rip(#000000) O[2] -pin mul|field_sel0_i O[2] -pin mul|field_sel_i I1[2]
load net mul|field_sel0_i_n_13 -attr @name field_sel0_i_n_13 -attr @rip(#000000) O[1] -pin mul|field_sel0_i O[1] -pin mul|field_sel_i I1[1]
load net mul|field_sel0_i_n_14 -attr @name field_sel0_i_n_14 -attr @rip(#000000) O[0] -pin mul|field_sel0_i O[0] -pin mul|field_sel_i I1[0]
load net mul|field_sel0_i_n_2 -attr @name field_sel0_i_n_2 -attr @rip(#000000) O[12] -pin mul|field_sel0_i O[12] -pin mul|field_sel_i I1[12]
load net mul|field_sel0_i_n_3 -attr @name field_sel0_i_n_3 -attr @rip(#000000) O[11] -pin mul|field_sel0_i O[11] -pin mul|field_sel_i I1[11]
load net mul|field_sel0_i_n_4 -attr @name field_sel0_i_n_4 -attr @rip(#000000) O[10] -pin mul|field_sel0_i O[10] -pin mul|field_sel_i I1[10]
load net mul|field_sel0_i_n_5 -attr @name field_sel0_i_n_5 -attr @rip(#000000) O[9] -pin mul|field_sel0_i O[9] -pin mul|field_sel_i I1[9]
load net mul|field_sel0_i_n_6 -attr @name field_sel0_i_n_6 -attr @rip(#000000) O[8] -pin mul|field_sel0_i O[8] -pin mul|field_sel_i I1[8]
load net mul|field_sel0_i_n_7 -attr @name field_sel0_i_n_7 -attr @rip(#000000) O[7] -pin mul|field_sel0_i O[7] -pin mul|field_sel_i I1[7]
load net mul|field_sel0_i_n_8 -attr @name field_sel0_i_n_8 -attr @rip(#000000) O[6] -pin mul|field_sel0_i O[6] -pin mul|field_sel_i I1[6]
load net mul|field_sel0_i_n_9 -attr @name field_sel0_i_n_9 -attr @rip(#000000) O[5] -pin mul|field_sel0_i O[5] -pin mul|field_sel_i I1[5]
load net mul|field_sel1 -attr @name field_sel1 -pin mul|field_sel0_i I1[14] -pin mul|field_sel0_i I1[13] -pin mul|field_sel0_i I1[12] -pin mul|field_sel0_i I1[11] -pin mul|field_sel0_i I1[10] -pin mul|field_sel0_i I1[9] -pin mul|field_sel0_i I1[8] -pin mul|field_sel0_i I1[7] -pin mul|field_sel0_i I1[6] -pin mul|field_sel0_i I1[5] -pin mul|field_sel0_i I1[4] -pin mul|field_sel0_i I1[3] -pin mul|field_sel0_i I1[2] -pin mul|field_sel0_i I1[1] -pin mul|field_sel0_i I1[0] -pin mul|field_sel1_i O
netloc mul|field_sel1 1 5 1 1520 108n
load net mul|field_sel2 -attr @name field_sel2 -pin mul|field_sel0_i S -pin mul|field_sel2_i O
netloc mul|field_sel2 1 5 1 N 198
load net mul|i_a[0] -attr @name i_a[0] -attr @rip(#000000) i_a[0] -hierPin mul i_a[0] -pin mul|a_reg_reg[15:0] D[0]
load net mul|i_a[10] -attr @name i_a[10] -attr @rip(#000000) i_a[10] -hierPin mul i_a[10] -pin mul|a_reg_reg[15:0] D[10]
load net mul|i_a[11] -attr @name i_a[11] -attr @rip(#000000) i_a[11] -hierPin mul i_a[11] -pin mul|a_reg_reg[15:0] D[11]
load net mul|i_a[12] -attr @name i_a[12] -attr @rip(#000000) i_a[12] -hierPin mul i_a[12] -pin mul|a_reg_reg[15:0] D[12]
load net mul|i_a[13] -attr @name i_a[13] -attr @rip(#000000) i_a[13] -hierPin mul i_a[13] -pin mul|a_reg_reg[15:0] D[13]
load net mul|i_a[14] -attr @name i_a[14] -attr @rip(#000000) i_a[14] -hierPin mul i_a[14] -pin mul|a_reg_reg[15:0] D[14]
load net mul|i_a[15] -attr @name i_a[15] -attr @rip(#000000) i_a[15] -hierPin mul i_a[15] -pin mul|a_reg_reg[15:0] D[15]
load net mul|i_a[1] -attr @name i_a[1] -attr @rip(#000000) i_a[1] -hierPin mul i_a[1] -pin mul|a_reg_reg[15:0] D[1]
load net mul|i_a[2] -attr @name i_a[2] -attr @rip(#000000) i_a[2] -hierPin mul i_a[2] -pin mul|a_reg_reg[15:0] D[2]
load net mul|i_a[3] -attr @name i_a[3] -attr @rip(#000000) i_a[3] -hierPin mul i_a[3] -pin mul|a_reg_reg[15:0] D[3]
load net mul|i_a[4] -attr @name i_a[4] -attr @rip(#000000) i_a[4] -hierPin mul i_a[4] -pin mul|a_reg_reg[15:0] D[4]
load net mul|i_a[5] -attr @name i_a[5] -attr @rip(#000000) i_a[5] -hierPin mul i_a[5] -pin mul|a_reg_reg[15:0] D[5]
load net mul|i_a[6] -attr @name i_a[6] -attr @rip(#000000) i_a[6] -hierPin mul i_a[6] -pin mul|a_reg_reg[15:0] D[6]
load net mul|i_a[7] -attr @name i_a[7] -attr @rip(#000000) i_a[7] -hierPin mul i_a[7] -pin mul|a_reg_reg[15:0] D[7]
load net mul|i_a[8] -attr @name i_a[8] -attr @rip(#000000) i_a[8] -hierPin mul i_a[8] -pin mul|a_reg_reg[15:0] D[8]
load net mul|i_a[9] -attr @name i_a[9] -attr @rip(#000000) i_a[9] -hierPin mul i_a[9] -pin mul|a_reg_reg[15:0] D[9]
load net mul|i_b[0] -attr @name i_b[0] -attr @rip(#000000) i_b[0] -hierPin mul i_b[0] -pin mul|b_reg_reg[15:0] D[0]
load net mul|i_b[10] -attr @name i_b[10] -attr @rip(#000000) i_b[10] -hierPin mul i_b[10] -pin mul|b_reg_reg[15:0] D[10]
load net mul|i_b[11] -attr @name i_b[11] -attr @rip(#000000) i_b[11] -hierPin mul i_b[11] -pin mul|b_reg_reg[15:0] D[11]
load net mul|i_b[12] -attr @name i_b[12] -attr @rip(#000000) i_b[12] -hierPin mul i_b[12] -pin mul|b_reg_reg[15:0] D[12]
load net mul|i_b[13] -attr @name i_b[13] -attr @rip(#000000) i_b[13] -hierPin mul i_b[13] -pin mul|b_reg_reg[15:0] D[13]
load net mul|i_b[14] -attr @name i_b[14] -attr @rip(#000000) i_b[14] -hierPin mul i_b[14] -pin mul|b_reg_reg[15:0] D[14]
load net mul|i_b[15] -attr @name i_b[15] -attr @rip(#000000) i_b[15] -hierPin mul i_b[15] -pin mul|b_reg_reg[15:0] D[15]
load net mul|i_b[1] -attr @name i_b[1] -attr @rip(#000000) i_b[1] -hierPin mul i_b[1] -pin mul|b_reg_reg[15:0] D[1]
load net mul|i_b[2] -attr @name i_b[2] -attr @rip(#000000) i_b[2] -hierPin mul i_b[2] -pin mul|b_reg_reg[15:0] D[2]
load net mul|i_b[3] -attr @name i_b[3] -attr @rip(#000000) i_b[3] -hierPin mul i_b[3] -pin mul|b_reg_reg[15:0] D[3]
load net mul|i_b[4] -attr @name i_b[4] -attr @rip(#000000) i_b[4] -hierPin mul i_b[4] -pin mul|b_reg_reg[15:0] D[4]
load net mul|i_b[5] -attr @name i_b[5] -attr @rip(#000000) i_b[5] -hierPin mul i_b[5] -pin mul|b_reg_reg[15:0] D[5]
load net mul|i_b[6] -attr @name i_b[6] -attr @rip(#000000) i_b[6] -hierPin mul i_b[6] -pin mul|b_reg_reg[15:0] D[6]
load net mul|i_b[7] -attr @name i_b[7] -attr @rip(#000000) i_b[7] -hierPin mul i_b[7] -pin mul|b_reg_reg[15:0] D[7]
load net mul|i_b[8] -attr @name i_b[8] -attr @rip(#000000) i_b[8] -hierPin mul i_b[8] -pin mul|b_reg_reg[15:0] D[8]
load net mul|i_b[9] -attr @name i_b[9] -attr @rip(#000000) i_b[9] -hierPin mul i_b[9] -pin mul|b_reg_reg[15:0] D[9]
load net mul|i_ready -attr @name i_ready -hierPin mul i_ready -pin mul|a_reg0_i I1 -pin mul|i_ready_i O
netloc mul|i_ready 1 0 10 120 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 NJ 288 2530J 348 2810
load net mul|i_valid -attr @name i_valid -hierPin mul i_valid -pin mul|a_reg0_i I0
netloc mul|i_valid 1 0 1 100 448n
load net mul|low_bits[0] -attr @name low_bits[0] -attr @rip(#000000) O[0] -pin mul|field_sel0_i I0[0] -pin mul|sum_full_i O[0]
load net mul|low_bits[10] -attr @name low_bits[10] -attr @rip(#000000) O[10] -pin mul|field_sel0_i I0[10] -pin mul|sum_full_i O[10]
load net mul|low_bits[11] -attr @name low_bits[11] -attr @rip(#000000) O[11] -pin mul|field_sel0_i I0[11] -pin mul|sum_full_i O[11]
load net mul|low_bits[12] -attr @name low_bits[12] -attr @rip(#000000) O[12] -pin mul|field_sel0_i I0[12] -pin mul|sum_full_i O[12]
load net mul|low_bits[13] -attr @name low_bits[13] -attr @rip(#000000) O[13] -pin mul|field_sel0_i I0[13] -pin mul|sum_full_i O[13]
load net mul|low_bits[14] -attr @name low_bits[14] -attr @rip(#000000) O[14] -pin mul|field_sel0_i I0[14] -pin mul|sum_full_i O[14]
load net mul|low_bits[1] -attr @name low_bits[1] -attr @rip(#000000) O[1] -pin mul|field_sel0_i I0[1] -pin mul|sum_full_i O[1]
load net mul|low_bits[2] -attr @name low_bits[2] -attr @rip(#000000) O[2] -pin mul|field_sel0_i I0[2] -pin mul|sum_full_i O[2]
load net mul|low_bits[3] -attr @name low_bits[3] -attr @rip(#000000) O[3] -pin mul|field_sel0_i I0[3] -pin mul|sum_full_i O[3]
load net mul|low_bits[4] -attr @name low_bits[4] -attr @rip(#000000) O[4] -pin mul|field_sel0_i I0[4] -pin mul|sum_full_i O[4]
load net mul|low_bits[5] -attr @name low_bits[5] -attr @rip(#000000) O[5] -pin mul|field_sel0_i I0[5] -pin mul|sum_full_i O[5]
load net mul|low_bits[6] -attr @name low_bits[6] -attr @rip(#000000) O[6] -pin mul|field_sel0_i I0[6] -pin mul|sum_full_i O[6]
load net mul|low_bits[7] -attr @name low_bits[7] -attr @rip(#000000) O[7] -pin mul|field_sel0_i I0[7] -pin mul|sum_full_i O[7]
load net mul|low_bits[8] -attr @name low_bits[8] -attr @rip(#000000) O[8] -pin mul|field_sel0_i I0[8] -pin mul|sum_full_i O[8]
load net mul|low_bits[9] -attr @name low_bits[9] -attr @rip(#000000) O[9] -pin mul|field_sel0_i I0[9] -pin mul|sum_full_i O[9]
load net mul|o_p[0] -attr @name o_p[0] -attr @rip(#000000) 0 -hierPin mul o_p[0] -pin mul|o_p_reg[15:0] Q[0]
load net mul|o_p[10] -attr @name o_p[10] -attr @rip(#000000) 10 -hierPin mul o_p[10] -pin mul|o_p_reg[15:0] Q[10]
load net mul|o_p[11] -attr @name o_p[11] -attr @rip(#000000) 11 -hierPin mul o_p[11] -pin mul|o_p_reg[15:0] Q[11]
load net mul|o_p[12] -attr @name o_p[12] -attr @rip(#000000) 12 -hierPin mul o_p[12] -pin mul|o_p_reg[15:0] Q[12]
load net mul|o_p[13] -attr @name o_p[13] -attr @rip(#000000) 13 -hierPin mul o_p[13] -pin mul|o_p_reg[15:0] Q[13]
load net mul|o_p[14] -attr @name o_p[14] -attr @rip(#000000) 14 -hierPin mul o_p[14] -pin mul|o_p_reg[15:0] Q[14]
load net mul|o_p[15] -attr @name o_p[15] -attr @rip(#000000) 15 -hierPin mul o_p[15] -pin mul|o_p_reg[15:0] Q[15]
load net mul|o_p[1] -attr @name o_p[1] -attr @rip(#000000) 1 -hierPin mul o_p[1] -pin mul|o_p_reg[15:0] Q[1]
load net mul|o_p[2] -attr @name o_p[2] -attr @rip(#000000) 2 -hierPin mul o_p[2] -pin mul|o_p_reg[15:0] Q[2]
load net mul|o_p[3] -attr @name o_p[3] -attr @rip(#000000) 3 -hierPin mul o_p[3] -pin mul|o_p_reg[15:0] Q[3]
load net mul|o_p[4] -attr @name o_p[4] -attr @rip(#000000) 4 -hierPin mul o_p[4] -pin mul|o_p_reg[15:0] Q[4]
load net mul|o_p[5] -attr @name o_p[5] -attr @rip(#000000) 5 -hierPin mul o_p[5] -pin mul|o_p_reg[15:0] Q[5]
load net mul|o_p[6] -attr @name o_p[6] -attr @rip(#000000) 6 -hierPin mul o_p[6] -pin mul|o_p_reg[15:0] Q[6]
load net mul|o_p[7] -attr @name o_p[7] -attr @rip(#000000) 7 -hierPin mul o_p[7] -pin mul|o_p_reg[15:0] Q[7]
load net mul|o_p[8] -attr @name o_p[8] -attr @rip(#000000) 8 -hierPin mul o_p[8] -pin mul|o_p_reg[15:0] Q[8]
load net mul|o_p[9] -attr @name o_p[9] -attr @rip(#000000) 9 -hierPin mul o_p[9] -pin mul|o_p_reg[15:0] Q[9]
load net mul|o_ready -attr @name o_ready -hierPin mul o_ready -pin mul|i_ready_i I1 -pin mul|o_valid0_i I1
netloc mul|o_ready 1 0 9 NJ 568 NJ 568 570J 578 NJ 578 1160J 668 1560 528 NJ 528 NJ 528 NJ
load net mul|o_valid -attr @name o_valid -hierPin mul o_valid -pin mul|i_ready_i I0 -pin mul|o_valid0_i I0 -pin mul|o_valid_reg Q
netloc mul|o_valid 1 5 5 1560 308 NJ 308 NJ 308 2570 368 NJ
load net mul|o_valid0 -attr @name o_valid0 -pin mul|o_valid0_i O -pin mul|o_valid_i I1
netloc mul|o_valid0 1 6 1 1840 198n
load net mul|o_valid_i_n_0 -attr @name o_valid_i_n_0 -pin mul|o_valid_i O -pin mul|o_valid_reg CE
netloc mul|o_valid_i_n_0 1 7 1 2180 178n
load net mul|out_sign0 -attr @name out_sign0 -pin mul|out_sign0_i O -pin mul|out_sign_i I1
netloc mul|out_sign0 1 7 1 2200 378n
load net mul|result[0] -attr @name result[0] -attr @rip(#000000) O[0] -pin mul|field_sel_i O[0] -pin mul|o_p_reg[15:0] D[0] -pin mul|out_sign_i S[0]
load net mul|result[10] -attr @name result[10] -attr @rip(#000000) O[10] -pin mul|field_sel_i O[10] -pin mul|o_p_reg[15:0] D[10] -pin mul|out_sign_i S[10]
load net mul|result[11] -attr @name result[11] -attr @rip(#000000) O[11] -pin mul|field_sel_i O[11] -pin mul|o_p_reg[15:0] D[11] -pin mul|out_sign_i S[11]
load net mul|result[12] -attr @name result[12] -attr @rip(#000000) O[12] -pin mul|field_sel_i O[12] -pin mul|o_p_reg[15:0] D[12] -pin mul|out_sign_i S[12]
load net mul|result[13] -attr @name result[13] -attr @rip(#000000) O[13] -pin mul|field_sel_i O[13] -pin mul|o_p_reg[15:0] D[13] -pin mul|out_sign_i S[13]
load net mul|result[14] -attr @name result[14] -attr @rip(#000000) O[14] -pin mul|field_sel_i O[14] -pin mul|o_p_reg[15:0] D[14] -pin mul|out_sign_i S[14]
load net mul|result[15] -attr @name result[15] -pin mul|o_p_reg[15:0] D[15] -pin mul|out_sign_i O
netloc mul|result[15] 1 8 1 2550 288n
load net mul|result[1] -attr @name result[1] -attr @rip(#000000) O[1] -pin mul|field_sel_i O[1] -pin mul|o_p_reg[15:0] D[1] -pin mul|out_sign_i S[1]
load net mul|result[2] -attr @name result[2] -attr @rip(#000000) O[2] -pin mul|field_sel_i O[2] -pin mul|o_p_reg[15:0] D[2] -pin mul|out_sign_i S[2]
load net mul|result[3] -attr @name result[3] -attr @rip(#000000) O[3] -pin mul|field_sel_i O[3] -pin mul|o_p_reg[15:0] D[3] -pin mul|out_sign_i S[3]
load net mul|result[4] -attr @name result[4] -attr @rip(#000000) O[4] -pin mul|field_sel_i O[4] -pin mul|o_p_reg[15:0] D[4] -pin mul|out_sign_i S[4]
load net mul|result[5] -attr @name result[5] -attr @rip(#000000) O[5] -pin mul|field_sel_i O[5] -pin mul|o_p_reg[15:0] D[5] -pin mul|out_sign_i S[5]
load net mul|result[6] -attr @name result[6] -attr @rip(#000000) O[6] -pin mul|field_sel_i O[6] -pin mul|o_p_reg[15:0] D[6] -pin mul|out_sign_i S[6]
load net mul|result[7] -attr @name result[7] -attr @rip(#000000) O[7] -pin mul|field_sel_i O[7] -pin mul|o_p_reg[15:0] D[7] -pin mul|out_sign_i S[7]
load net mul|result[8] -attr @name result[8] -attr @rip(#000000) O[8] -pin mul|field_sel_i O[8] -pin mul|o_p_reg[15:0] D[8] -pin mul|out_sign_i S[8]
load net mul|result[9] -attr @name result[9] -attr @rip(#000000) O[9] -pin mul|field_sel_i O[9] -pin mul|o_p_reg[15:0] D[9] -pin mul|out_sign_i S[9]
load net mul|rstn -attr @name rstn -hierPin mul rstn -pin mul|a_reg_reg[15:0] CLR -pin mul|b_reg_reg[15:0] CLR -pin mul|o_p_reg[15:0] CLR -pin mul|o_valid_reg CLR
netloc mul|rstn 1 0 9 NJ 588 320 418N NJ 418 NJ 418 NJ 418 1520J 428 1840J 458 2160 108N 2590
load net mul|sum_full0[0] -attr @name sum_full0[0] -attr @rip(#000000) O[0] -pin mul|sum_full0_i O[0] -pin mul|sum_full_i I0[0]
load net mul|sum_full0[10] -attr @name sum_full0[10] -attr @rip(#000000) O[10] -pin mul|sum_full0_i O[10] -pin mul|sum_full_i I0[10]
load net mul|sum_full0[11] -attr @name sum_full0[11] -attr @rip(#000000) O[11] -pin mul|sum_full0_i O[11] -pin mul|sum_full_i I0[11]
load net mul|sum_full0[12] -attr @name sum_full0[12] -attr @rip(#000000) O[12] -pin mul|sum_full0_i O[12] -pin mul|sum_full_i I0[12]
load net mul|sum_full0[13] -attr @name sum_full0[13] -attr @rip(#000000) O[13] -pin mul|sum_full0_i O[13] -pin mul|sum_full_i I0[13]
load net mul|sum_full0[14] -attr @name sum_full0[14] -attr @rip(#000000) O[14] -pin mul|sum_full0_i O[14] -pin mul|sum_full_i I0[14]
load net mul|sum_full0[15] -attr @name sum_full0[15] -attr @rip(#000000) O[15] -pin mul|sum_full0_i O[15] -pin mul|sum_full_i I0[15]
load net mul|sum_full0[16] -attr @name sum_full0[16] -attr @rip(#000000) O[16] -pin mul|sum_full0_i O[16] -pin mul|sum_full_i I0[16]
load net mul|sum_full0[1] -attr @name sum_full0[1] -attr @rip(#000000) O[1] -pin mul|sum_full0_i O[1] -pin mul|sum_full_i I0[1]
load net mul|sum_full0[2] -attr @name sum_full0[2] -attr @rip(#000000) O[2] -pin mul|sum_full0_i O[2] -pin mul|sum_full_i I0[2]
load net mul|sum_full0[3] -attr @name sum_full0[3] -attr @rip(#000000) O[3] -pin mul|sum_full0_i O[3] -pin mul|sum_full_i I0[3]
load net mul|sum_full0[4] -attr @name sum_full0[4] -attr @rip(#000000) O[4] -pin mul|sum_full0_i O[4] -pin mul|sum_full_i I0[4]
load net mul|sum_full0[5] -attr @name sum_full0[5] -attr @rip(#000000) O[5] -pin mul|sum_full0_i O[5] -pin mul|sum_full_i I0[5]
load net mul|sum_full0[6] -attr @name sum_full0[6] -attr @rip(#000000) O[6] -pin mul|sum_full0_i O[6] -pin mul|sum_full_i I0[6]
load net mul|sum_full0[7] -attr @name sum_full0[7] -attr @rip(#000000) O[7] -pin mul|sum_full0_i O[7] -pin mul|sum_full_i I0[7]
load net mul|sum_full0[8] -attr @name sum_full0[8] -attr @rip(#000000) O[8] -pin mul|sum_full0_i O[8] -pin mul|sum_full_i I0[8]
load net mul|sum_full0[9] -attr @name sum_full0[9] -attr @rip(#000000) O[9] -pin mul|sum_full0_i O[9] -pin mul|sum_full_i I0[9]
load net mul|zero_or_sub -attr @name zero_or_sub -pin mul|field_sel_i S -pin mul|zero_or_sub_i O
netloc mul|zero_or_sub 1 6 1 1860 428n
load net mul|zero_or_sub0 -attr @name zero_or_sub0 -pin mul|zero_or_sub0_i O -pin mul|zero_or_sub_i I0
netloc mul|zero_or_sub0 1 5 1 NJ 468
load net mul|zero_or_sub0_i__0_n_0 -attr @name zero_or_sub0_i__0_n_0 -pin mul|zero_or_sub0_i__0 O -pin mul|zero_or_sub_i I1
netloc mul|zero_or_sub0_i__0_n_0 1 5 1 1580J 488n
load netBundle @mul|i_a 16 mul|i_a[15] mul|i_a[14] mul|i_a[13] mul|i_a[12] mul|i_a[11] mul|i_a[10] mul|i_a[9] mul|i_a[8] mul|i_a[7] mul|i_a[6] mul|i_a[5] mul|i_a[4] mul|i_a[3] mul|i_a[2] mul|i_a[1] mul|i_a[0] -autobundled
netbloc @mul|i_a 1 0 2 NJ 508 N
load netBundle @mul|i_b 16 mul|i_b[15] mul|i_b[14] mul|i_b[13] mul|i_b[12] mul|i_b[11] mul|i_b[10] mul|i_b[9] mul|i_b[8] mul|i_b[7] mul|i_b[6] mul|i_b[5] mul|i_b[4] mul|i_b[3] mul|i_b[2] mul|i_b[1] mul|i_b[0] -autobundled
netbloc @mul|i_b 1 0 2 NJ 528 280
load netBundle @mul|field_sel0_i_n_ 15 mul|field_sel0_i_n_0 mul|field_sel0_i_n_1 mul|field_sel0_i_n_2 mul|field_sel0_i_n_3 mul|field_sel0_i_n_4 mul|field_sel0_i_n_5 mul|field_sel0_i_n_6 mul|field_sel0_i_n_7 mul|field_sel0_i_n_8 mul|field_sel0_i_n_9 mul|field_sel0_i_n_10 mul|field_sel0_i_n_11 mul|field_sel0_i_n_12 mul|field_sel0_i_n_13 mul|field_sel0_i_n_14 -autobundled
netbloc @mul|field_sel0_i_n_ 1 6 1 1880 138n
load netBundle @mul|result 15 mul|result[14] mul|result[13] mul|result[12] mul|result[11] mul|result[10] mul|result[9] mul|result[8] mul|result[7] mul|result[6] mul|result[5] mul|result[4] mul|result[3] mul|result[2] mul|result[1] mul|result[0] -autobundled
netbloc @mul|result 1 7 2 2180 428N 2590
load netBundle @mul|sum_full0 17 mul|sum_full0[16] mul|sum_full0[15] mul|sum_full0[14] mul|sum_full0[13] mul|sum_full0[12] mul|sum_full0[11] mul|sum_full0[10] mul|sum_full0[9] mul|sum_full0[8] mul|sum_full0[7] mul|sum_full0[6] mul|sum_full0[5] mul|sum_full0[4] mul|sum_full0[3] mul|sum_full0[2] mul|sum_full0[1] mul|sum_full0[0] -autobundled
netbloc @mul|sum_full0 1 3 1 820 188n
load netBundle @mul|low_bits,mul|carry2 17 mul|carry2[1] mul|carry2[0] mul|low_bits[14] mul|low_bits[13] mul|low_bits[12] mul|low_bits[11] mul|low_bits[10] mul|low_bits[9] mul|low_bits[8] mul|low_bits[7] mul|low_bits[6] mul|low_bits[5] mul|low_bits[4] mul|low_bits[3] mul|low_bits[2] mul|low_bits[1] mul|low_bits[0] -autobundled
netbloc @mul|low_bits,mul|carry2 1 4 2 1180 38 1560
load netBundle @mul|a_fld,mul|a_sign 16 mul|a_sign mul|a_fld[14] mul|a_fld[13] mul|a_fld[12] mul|a_fld[11] mul|a_fld[10] mul|a_fld[9] mul|a_fld[8] mul|a_fld[7] mul|a_fld[6] mul|a_fld[5] mul|a_fld[4] mul|a_fld[3] mul|a_fld[2] mul|a_fld[1] mul|a_fld[0] -autobundled
netbloc @mul|a_fld,mul|a_sign 1 2 5 570 458 NJ 458 1180 628 NJ 628 1900J
load netBundle @mul|o_p 16 mul|o_p[15] mul|o_p[14] mul|o_p[13] mul|o_p[12] mul|o_p[11] mul|o_p[10] mul|o_p[9] mul|o_p[8] mul|o_p[7] mul|o_p[6] mul|o_p[5] mul|o_p[4] mul|o_p[3] mul|o_p[2] mul|o_p[1] mul|o_p[0] -autobundled
netbloc @mul|o_p 1 9 1 N 268
load netBundle @mul|b_fld,mul|b_sign 16 mul|b_sign mul|b_fld[14] mul|b_fld[13] mul|b_fld[12] mul|b_fld[11] mul|b_fld[10] mul|b_fld[9] mul|b_fld[8] mul|b_fld[7] mul|b_fld[6] mul|b_fld[5] mul|b_fld[4] mul|b_fld[3] mul|b_fld[2] mul|b_fld[1] mul|b_fld[0] -autobundled
netbloc @mul|b_fld,mul|b_sign 1 2 5 590 598 NJ 598 1200 648 NJ 648 1900J
levelinfo -pg 1 0 70 2920
levelinfo -hier mul * 170 400 690 1040 1340 1710 2030 2390 2650 *
pagesize -pg 1 -db -bbox -sgen 0 -10 2920 770
pagesize -hier mul -db -bbox -sgen 70 28 2840 738
show
zoom 0.42018
scrollpos 4 -130
#
# initialize ictrl to current module fc_accel work:fc_accel:NOFILE
ictrl init topinfo |
