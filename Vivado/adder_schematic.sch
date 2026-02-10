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
load symbol bf16_adder work:bf16_adder:NOFILE HIERBOX pinBus a input.left [15:0] pinBus b input.left [15:0] pinBus sum output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_RSHIFT0 work RTL(>>) pin I2 input.left pinBus I0 input.left [8:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_GEQ0 work RTL(>=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_MUX9 work MUX pin S input.bot pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_EQ1 work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_EQ6 work RTL(=) pin O output.right pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] fillcolor 1
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX10 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX11 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_ADD1 work RTL(+) pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_SUB1 work RTL(-) pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_GEQ work RTL(>=) pin O output.right pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] fillcolor 1
load symbol RTL_EQ15 work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_MUX16 work MUX pin S input.bot pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I1 input.left pin I2 input.left pinBus I0 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I1 input.left pin I2 input.left pinBus I0 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_GT6 work RTL(>) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_ADD2 work RTL(+) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_SUB3 work RTL(-) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX5 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [8:0] fillcolor 1
load symbol RTL_MUX6 work MUX pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] pinBus S input.bot [8:0] fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [8:0] fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_LATCH work GEN pin D input.left pin G input.left pin Q output.right fillcolor 1
load symbol RTL_MUX4 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load inst add bf16_adder work:bf16_adder:NOFILE -autohide -attr @cell(#000000) bf16_adder -attr @fillcolor #fafafa -pinBusAttr a @name a[15:0] -pinBusAttr b @name b[15:0] -pinBusAttr sum @name sum[15:0] -pg 1 -lvl 1 -x 60 -y 58
load inst add|a_aligned0_i RTL_RSHIFT0 work -hier add -attr @cell(#000000) RTL_RSHIFT -attr @name a_aligned0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 3 -x 840 -y 718
load inst add|a_aligned1_i RTL_GEQ0 work -hier add -attr @cell(#000000) RTL_GEQ -attr @name a_aligned1_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 1 -x 180 -y 478
load inst add|a_aligned_i RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name a_aligned_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 4 -x 1120 -y 688
load inst add|a_is_zero0_i RTL_EQ1 work -hier add -attr @cell(#000000) RTL_EQ -attr @name a_is_zero0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 35 -x 9870 -y 698
load inst add|a_is_zero0_i__0 RTL_EQ6 work -hier add -attr @cell(#000000) RTL_EQ -attr @name a_is_zero0_i__0 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 35 -x 9870 -y 788
load inst add|a_is_zero_i RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name a_is_zero_i -pg 1 -lvl 36 -x 10220 -y 708
load inst add|a_mant_ext_i RTL_MUX10 work -hier add -attr @cell(#000000) RTL_MUX -attr @name a_mant_ext_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 2 -x 540 -y 718
load inst add|b_aligned0_i RTL_RSHIFT0 work -hier add -attr @cell(#000000) RTL_RSHIFT -attr @name b_aligned0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 3 -x 840 -y 408
load inst add|b_aligned1_i RTL_GEQ0 work -hier add -attr @cell(#000000) RTL_GEQ -attr @name b_aligned1_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 840 -y 508
load inst add|b_aligned_i RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name b_aligned_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 4 -x 1120 -y 448
load inst add|b_is_zero0_i RTL_EQ1 work -hier add -attr @cell(#000000) RTL_EQ -attr @name b_is_zero0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 34 -x 9490 -y 128
load inst add|b_is_zero0_i__0 RTL_EQ6 work -hier add -attr @cell(#000000) RTL_EQ -attr @name b_is_zero0_i__0 -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 34 -x 9490 -y 218
load inst add|b_is_zero_i RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name b_is_zero_i -pg 1 -lvl 35 -x 9870 -y 208
load inst add|b_mant_ext_i RTL_MUX10 work -hier add -attr @cell(#000000) RTL_MUX -attr @name b_mant_ext_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 2 -x 540 -y 438
load inst add|exp_diff0_i RTL_SUB work -hier add -attr @cell(#000000) RTL_SUB -attr @name exp_diff0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 180 -y 568
load inst add|exp_diff0_i__0 RTL_SUB work -hier add -attr @cell(#000000) RTL_SUB -attr @name exp_diff0_i__0 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 180 -y 658
load inst add|exp_diff_i RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name exp_diff_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 2 -x 540 -y 578
load inst add|mant_sum0_i RTL_ADD1 work -hier add -attr @cell(#000000) RTL_ADD -attr @name mant_sum0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[8:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 6 -x 1700 -y 688
load inst add|mant_sum0_i__0 RTL_SUB1 work -hier add -attr @cell(#000000) RTL_SUB -attr @name mant_sum0_i__0 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[8:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 5 -x 1360 -y 418
load inst add|mant_sum0_i__1 RTL_SUB1 work -hier add -attr @cell(#000000) RTL_SUB -attr @name mant_sum0_i__1 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[8:0] -pinBusAttr O @name O[9:0] -pg 1 -lvl 5 -x 1360 -y 508
load inst add|mant_sum1_i RTL_GEQ work -hier add -attr @cell(#000000) RTL_GEQ -attr @name mant_sum1_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[8:0] -pg 1 -lvl 5 -x 1360 -y 608
load inst add|mant_sum1_i__0 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name mant_sum1_i__0 -pg 1 -lvl 6 -x 1700 -y 438
load inst add|mant_sum_i RTL_MUX16 work -hier add -attr @cell(#000000) RTL_MUX -attr @name mant_sum_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 6 -x 1700 -y 548
load inst add|mant_sum_i__0 RTL_MUX16 work -hier add -attr @cell(#000000) RTL_MUX -attr @name mant_sum_i__0 -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 7 -x 2040 -y 448
load inst add|norm_mant0_i RTL_RSHIFT work -hier add -attr @cell(#000000) RTL_RSHIFT -attr @name norm_mant0_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 8 -x 2280 -y 418
load inst add|norm_mant0_i__0 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__0 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 11 -x 3070 -y 368
load inst add|norm_mant0_i__1 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__1 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 14 -x 3880 -y 398
load inst add|norm_mant0_i__2 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__2 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 17 -x 4670 -y 398
load inst add|norm_mant0_i__3 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__3 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 20 -x 5460 -y 398
load inst add|norm_mant0_i__4 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__4 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 23 -x 6250 -y 398
load inst add|norm_mant0_i__5 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__5 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 26 -x 7050 -y 398
load inst add|norm_mant0_i__6 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__6 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 29 -x 7890 -y 448
load inst add|norm_mant0_i__7 RTL_LSHIFT work -hier add -attr @cell(#000000) RTL_LSHIFT -attr @name norm_mant0_i__7 -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 32 -x 8770 -y 468
load inst add|norm_mant1_i RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i -pg 1 -lvl 11 -x 3070 -y 538
load inst add|norm_mant1_i__0 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__0 -pg 1 -lvl 14 -x 3880 -y 558
load inst add|norm_mant1_i__1 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__1 -pg 1 -lvl 17 -x 4670 -y 558
load inst add|norm_mant1_i__2 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__2 -pg 1 -lvl 20 -x 5460 -y 558
load inst add|norm_mant1_i__3 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__3 -pg 1 -lvl 23 -x 6250 -y 558
load inst add|norm_mant1_i__4 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__4 -pg 1 -lvl 26 -x 7050 -y 558
load inst add|norm_mant1_i__5 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__5 -pg 1 -lvl 29 -x 7890 -y 568
load inst add|norm_mant1_i__6 RTL_AND work -hier add -attr @cell(#000000) RTL_AND -attr @name norm_mant1_i__6 -pg 1 -lvl 32 -x 8770 -y 348
load inst add|norm_mant2_i RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i -pg 1 -lvl 10 -x 2810 -y 438
load inst add|norm_mant2_i__0 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__0 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 10 -x 2810 -y 538
load inst add|norm_mant2_i__1 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__1 -pg 1 -lvl 13 -x 3620 -y 558
load inst add|norm_mant2_i__10 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__10 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 25 -x 6780 -y 658
load inst add|norm_mant2_i__11 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__11 -pg 1 -lvl 28 -x 7580 -y 558
load inst add|norm_mant2_i__12 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__12 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 28 -x 7580 -y 658
load inst add|norm_mant2_i__13 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__13 -pg 1 -lvl 31 -x 8460 -y 348
load inst add|norm_mant2_i__14 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__14 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 31 -x 8460 -y 448
load inst add|norm_mant2_i__2 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__2 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 13 -x 3620 -y 658
load inst add|norm_mant2_i__3 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__3 -pg 1 -lvl 16 -x 4410 -y 558
load inst add|norm_mant2_i__4 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__4 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 16 -x 4410 -y 658
load inst add|norm_mant2_i__5 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__5 -pg 1 -lvl 19 -x 5200 -y 558
load inst add|norm_mant2_i__6 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__6 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 19 -x 5200 -y 658
load inst add|norm_mant2_i__7 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__7 -pg 1 -lvl 22 -x 5990 -y 558
load inst add|norm_mant2_i__8 RTL_GT6 work -hier add -attr @cell(#000000) RTL_GT -attr @name norm_mant2_i__8 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 22 -x 5990 -y 658
load inst add|norm_mant2_i__9 RTL_EQ15 work -hier add -attr @cell(#000000) RTL_EQ -attr @name norm_mant2_i__9 -pg 1 -lvl 25 -x 6780 -y 558
load inst add|norm_mant_i RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 9 -x 2590 -y 428
load inst add|norm_mant_i__0 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__0 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 12 -x 3380 -y 408
load inst add|norm_mant_i__1 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__1 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 15 -x 4190 -y 408
load inst add|norm_mant_i__2 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__2 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 18 -x 4980 -y 408
load inst add|norm_mant_i__3 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__3 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 21 -x 5770 -y 408
load inst add|norm_mant_i__4 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__4 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 24 -x 6560 -y 408
load inst add|norm_mant_i__5 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__5 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 27 -x 7360 -y 408
load inst add|norm_mant_i__6 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__6 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 30 -x 8220 -y 458
load inst add|norm_mant_i__7 RTL_MUX9 work -hier add -attr @cell(#000000) RTL_MUX -attr @name norm_mant_i__7 -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 33 -x 9160 -y 458
load inst add|out_exp0_i RTL_ADD2 work -hier add -attr @cell(#000000) RTL_ADD -attr @name out_exp0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 8 -x 2280 -y 678
load inst add|out_exp0_i__0 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__0 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 11 -x 3070 -y 698
load inst add|out_exp0_i__1 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__1 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 14 -x 3880 -y 818
load inst add|out_exp0_i__2 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__2 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 17 -x 4670 -y 818
load inst add|out_exp0_i__3 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__3 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 20 -x 5460 -y 818
load inst add|out_exp0_i__4 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__4 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 23 -x 6250 -y 818
load inst add|out_exp0_i__5 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__5 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 26 -x 7050 -y 818
load inst add|out_exp0_i__6 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__6 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 29 -x 7890 -y 718
load inst add|out_exp0_i__7 RTL_SUB3 work -hier add -attr @cell(#000000) RTL_SUB -attr @name out_exp0_i__7 -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 33 -x 9160 -y 308
load inst add|out_exp_i RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 9 -x 2590 -y 688
load inst add|out_exp_i__0 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__0 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 12 -x 3380 -y 708
load inst add|out_exp_i__1 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__1 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 15 -x 4190 -y 828
load inst add|out_exp_i__2 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__2 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 18 -x 4980 -y 828
load inst add|out_exp_i__3 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__3 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 21 -x 5770 -y 828
load inst add|out_exp_i__4 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__4 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 24 -x 6560 -y 828
load inst add|out_exp_i__5 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__5 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 27 -x 7360 -y 828
load inst add|out_exp_i__6 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__6 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 30 -x 8220 -y 728
load inst add|out_exp_i__7 RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__7 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 34 -x 9490 -y 348
load inst add|out_exp_i__8 RTL_MUX5 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_exp_i__8 -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=9'b000000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[8:0] -pg 1 -lvl 35 -x 9870 -y 348
load inst add|out_mant_i RTL_MUX6 work -hier add -attr @cell(#000000) RTL_MUX -attr @name out_mant_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr S=9'b000000000 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pinBusAttr S @name S[8:0] -pg 1 -lvl 35 -x 9870 -y 88
load inst add|result_exp_init_i RTL_MUX11 work -hier add -attr @cell(#000000) RTL_MUX -attr @name result_exp_init_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 7 -x 2040 -y 688
load inst add|result_sign_i RTL_ROM work -hier add -attr @cell(#000000) RTL_ROM -attr @name result_sign_i -pinBusAttr A @name A[8:0] -pg 1 -lvl 34 -x 9490 -y 478
load inst add|result_sign_i__0 RTL_MUX work -hier add -attr @cell(#000000) RTL_MUX -attr @name result_sign_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 34 -x 9490 -y 598
load inst add|result_sign_i__1 RTL_MUX work -hier add -attr @cell(#000000) RTL_MUX -attr @name result_sign_i__1 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 35 -x 9870 -y 588
load inst add|result_sign_reg RTL_LATCH work -hier add -attr @cell(#000000) RTL_LATCH -attr @name result_sign_reg -pg 1 -lvl 35 -x 9870 -y 468
load inst add|sum0_i RTL_MUX4 work -hier add -attr @cell(#000000) RTL_MUX -attr @name sum0_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 36 -x 10220 -y 328
load inst add|sum_i RTL_MUX4 work -hier add -attr @cell(#000000) RTL_MUX -attr @name sum_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 37 -x 10500 -y 278
load net add|<const0> -ground -attr @name <const0> -pin add|a_is_zero0_i I1[7] -pin add|a_is_zero0_i I1[6] -pin add|a_is_zero0_i I1[5] -pin add|a_is_zero0_i I1[4] -pin add|a_is_zero0_i I1[3] -pin add|a_is_zero0_i I1[2] -pin add|a_is_zero0_i I1[1] -pin add|a_is_zero0_i I1[0] -pin add|a_is_zero0_i__0 I1[6] -pin add|a_is_zero0_i__0 I1[5] -pin add|a_is_zero0_i__0 I1[4] -pin add|a_is_zero0_i__0 I1[3] -pin add|a_is_zero0_i__0 I1[2] -pin add|a_is_zero0_i__0 I1[1] -pin add|a_is_zero0_i__0 I1[0] -pin add|a_mant_ext_i I0[7] -pin add|b_is_zero0_i I1[7] -pin add|b_is_zero0_i I1[6] -pin add|b_is_zero0_i I1[5] -pin add|b_is_zero0_i I1[4] -pin add|b_is_zero0_i I1[3] -pin add|b_is_zero0_i I1[2] -pin add|b_is_zero0_i I1[1] -pin add|b_is_zero0_i I1[0] -pin add|b_is_zero0_i__0 I1[6] -pin add|b_is_zero0_i__0 I1[5] -pin add|b_is_zero0_i__0 I1[4] -pin add|b_is_zero0_i__0 I1[3] -pin add|b_is_zero0_i__0 I1[2] -pin add|b_is_zero0_i__0 I1[1] -pin add|b_is_zero0_i__0 I1[0] -pin add|b_mant_ext_i I0[7] -pin add|norm_mant2_i I1 -pin add|norm_mant2_i__0 I1[7] -pin add|norm_mant2_i__0 I1[6] -pin add|norm_mant2_i__0 I1[5] -pin add|norm_mant2_i__0 I1[4] -pin add|norm_mant2_i__0 I1[3] -pin add|norm_mant2_i__0 I1[2] -pin add|norm_mant2_i__0 I1[1] -pin add|norm_mant2_i__0 I1[0] -pin add|norm_mant2_i__1 I1 -pin add|norm_mant2_i__10 I1[7] -pin add|norm_mant2_i__10 I1[6] -pin add|norm_mant2_i__10 I1[5] -pin add|norm_mant2_i__10 I1[4] -pin add|norm_mant2_i__10 I1[3] -pin add|norm_mant2_i__10 I1[2] -pin add|norm_mant2_i__10 I1[1] -pin add|norm_mant2_i__10 I1[0] -pin add|norm_mant2_i__11 I1 -pin add|norm_mant2_i__12 I1[7] -pin add|norm_mant2_i__12 I1[6] -pin add|norm_mant2_i__12 I1[5] -pin add|norm_mant2_i__12 I1[4] -pin add|norm_mant2_i__12 I1[3] -pin add|norm_mant2_i__12 I1[2] -pin add|norm_mant2_i__12 I1[1] -pin add|norm_mant2_i__12 I1[0] -pin add|norm_mant2_i__13 I1 -pin add|norm_mant2_i__14 I1[7] -pin add|norm_mant2_i__14 I1[6] -pin add|norm_mant2_i__14 I1[5] -pin add|norm_mant2_i__14 I1[4] -pin add|norm_mant2_i__14 I1[3] -pin add|norm_mant2_i__14 I1[2] -pin add|norm_mant2_i__14 I1[1] -pin add|norm_mant2_i__14 I1[0] -pin add|norm_mant2_i__2 I1[7] -pin add|norm_mant2_i__2 I1[6] -pin add|norm_mant2_i__2 I1[5] -pin add|norm_mant2_i__2 I1[4] -pin add|norm_mant2_i__2 I1[3] -pin add|norm_mant2_i__2 I1[2] -pin add|norm_mant2_i__2 I1[1] -pin add|norm_mant2_i__2 I1[0] -pin add|norm_mant2_i__3 I1 -pin add|norm_mant2_i__4 I1[7] -pin add|norm_mant2_i__4 I1[6] -pin add|norm_mant2_i__4 I1[5] -pin add|norm_mant2_i__4 I1[4] -pin add|norm_mant2_i__4 I1[3] -pin add|norm_mant2_i__4 I1[2] -pin add|norm_mant2_i__4 I1[1] -pin add|norm_mant2_i__4 I1[0] -pin add|norm_mant2_i__5 I1 -pin add|norm_mant2_i__6 I1[7] -pin add|norm_mant2_i__6 I1[6] -pin add|norm_mant2_i__6 I1[5] -pin add|norm_mant2_i__6 I1[4] -pin add|norm_mant2_i__6 I1[3] -pin add|norm_mant2_i__6 I1[2] -pin add|norm_mant2_i__6 I1[1] -pin add|norm_mant2_i__6 I1[0] -pin add|norm_mant2_i__7 I1 -pin add|norm_mant2_i__8 I1[7] -pin add|norm_mant2_i__8 I1[6] -pin add|norm_mant2_i__8 I1[5] -pin add|norm_mant2_i__8 I1[4] -pin add|norm_mant2_i__8 I1[3] -pin add|norm_mant2_i__8 I1[2] -pin add|norm_mant2_i__8 I1[1] -pin add|norm_mant2_i__8 I1[0] -pin add|norm_mant2_i__9 I1 -pin add|out_exp_i__8 I0[7] -pin add|out_exp_i__8 I0[6] -pin add|out_exp_i__8 I0[5] -pin add|out_exp_i__8 I0[4] -pin add|out_exp_i__8 I0[3] -pin add|out_exp_i__8 I0[2] -pin add|out_exp_i__8 I0[1] -pin add|out_exp_i__8 I0[0] -pin add|out_mant_i I0[6] -pin add|out_mant_i I0[5] -pin add|out_mant_i I0[4] -pin add|out_mant_i I0[3] -pin add|out_mant_i I0[2] -pin add|out_mant_i I0[1] -pin add|out_mant_i I0[0] -pin add|result_sign_reg D
load net add|<const1> -power -attr @rip 7 -attr @name <const1> -pin add|a_aligned0_i I2 -pin add|a_mant_ext_i I1[7] -pin add|b_aligned0_i I2 -pin add|b_mant_ext_i I1[7] -pin add|norm_mant0_i I1 -pin add|norm_mant0_i I2 -pin add|norm_mant0_i__0 I1 -pin add|norm_mant0_i__0 I2 -pin add|norm_mant0_i__1 I1 -pin add|norm_mant0_i__1 I2 -pin add|norm_mant0_i__2 I1 -pin add|norm_mant0_i__2 I2 -pin add|norm_mant0_i__3 I1 -pin add|norm_mant0_i__3 I2 -pin add|norm_mant0_i__4 I1 -pin add|norm_mant0_i__4 I2 -pin add|norm_mant0_i__5 I1 -pin add|norm_mant0_i__5 I2 -pin add|norm_mant0_i__6 I1 -pin add|norm_mant0_i__6 I2 -pin add|norm_mant0_i__7 I1 -pin add|norm_mant0_i__7 I2 -pin add|out_exp0_i I1 -pin add|out_exp0_i__0 I1 -pin add|out_exp0_i__1 I1 -pin add|out_exp0_i__2 I1 -pin add|out_exp0_i__3 I1 -pin add|out_exp0_i__4 I1 -pin add|out_exp0_i__5 I1 -pin add|out_exp0_i__6 I1 -pin add|out_exp0_i__7 I1
load net add|a[0] -attr @rip a[0] -attr @name a[0] -hierPin add a[0] -pin add|a_is_zero0_i__0 I0[0] -pin add|a_mant_ext_i I0[0] -pin add|a_mant_ext_i I1[0] -pin add|sum0_i I0[0]
load net add|a[10] -attr @rip a[10] -attr @name a[10] -hierPin add a[10] -pin add|a_aligned1_i I0[3] -pin add|a_is_zero0_i I0[3] -pin add|a_mant_ext_i S[3] -pin add|b_aligned1_i I1[3] -pin add|exp_diff0_i I0[3] -pin add|exp_diff0_i__0 I1[3] -pin add|result_exp_init_i I0[3] -pin add|sum0_i I0[10]
load net add|a[11] -attr @rip a[11] -attr @name a[11] -hierPin add a[11] -pin add|a_aligned1_i I0[4] -pin add|a_is_zero0_i I0[4] -pin add|a_mant_ext_i S[4] -pin add|b_aligned1_i I1[4] -pin add|exp_diff0_i I0[4] -pin add|exp_diff0_i__0 I1[4] -pin add|result_exp_init_i I0[4] -pin add|sum0_i I0[11]
load net add|a[12] -attr @rip a[12] -attr @name a[12] -hierPin add a[12] -pin add|a_aligned1_i I0[5] -pin add|a_is_zero0_i I0[5] -pin add|a_mant_ext_i S[5] -pin add|b_aligned1_i I1[5] -pin add|exp_diff0_i I0[5] -pin add|exp_diff0_i__0 I1[5] -pin add|result_exp_init_i I0[5] -pin add|sum0_i I0[12]
load net add|a[13] -attr @rip a[13] -attr @name a[13] -hierPin add a[13] -pin add|a_aligned1_i I0[6] -pin add|a_is_zero0_i I0[6] -pin add|a_mant_ext_i S[6] -pin add|b_aligned1_i I1[6] -pin add|exp_diff0_i I0[6] -pin add|exp_diff0_i__0 I1[6] -pin add|result_exp_init_i I0[6] -pin add|sum0_i I0[13]
load net add|a[14] -attr @rip a[14] -attr @name a[14] -hierPin add a[14] -pin add|a_aligned1_i I0[7] -pin add|a_is_zero0_i I0[7] -pin add|a_mant_ext_i S[7] -pin add|b_aligned1_i I1[7] -pin add|exp_diff0_i I0[7] -pin add|exp_diff0_i__0 I1[7] -pin add|result_exp_init_i I0[7] -pin add|sum0_i I0[14]
load net add|a[15] -attr @rip a[15] -attr @name a[15] -hierPin add a[15] -pin add|mant_sum1_i__0 I0 -pin add|result_sign_i__0 I0 -pin add|result_sign_i__1 I0 -pin add|sum0_i I0[15]
load net add|a[1] -attr @rip a[1] -attr @name a[1] -hierPin add a[1] -pin add|a_is_zero0_i__0 I0[1] -pin add|a_mant_ext_i I0[1] -pin add|a_mant_ext_i I1[1] -pin add|sum0_i I0[1]
load net add|a[2] -attr @rip a[2] -attr @name a[2] -hierPin add a[2] -pin add|a_is_zero0_i__0 I0[2] -pin add|a_mant_ext_i I0[2] -pin add|a_mant_ext_i I1[2] -pin add|sum0_i I0[2]
load net add|a[3] -attr @rip a[3] -attr @name a[3] -hierPin add a[3] -pin add|a_is_zero0_i__0 I0[3] -pin add|a_mant_ext_i I0[3] -pin add|a_mant_ext_i I1[3] -pin add|sum0_i I0[3]
load net add|a[4] -attr @rip a[4] -attr @name a[4] -hierPin add a[4] -pin add|a_is_zero0_i__0 I0[4] -pin add|a_mant_ext_i I0[4] -pin add|a_mant_ext_i I1[4] -pin add|sum0_i I0[4]
load net add|a[5] -attr @rip a[5] -attr @name a[5] -hierPin add a[5] -pin add|a_is_zero0_i__0 I0[5] -pin add|a_mant_ext_i I0[5] -pin add|a_mant_ext_i I1[5] -pin add|sum0_i I0[5]
load net add|a[6] -attr @rip a[6] -attr @name a[6] -hierPin add a[6] -pin add|a_is_zero0_i__0 I0[6] -pin add|a_mant_ext_i I0[6] -pin add|a_mant_ext_i I1[6] -pin add|sum0_i I0[6]
load net add|a[7] -attr @rip a[7] -attr @name a[7] -hierPin add a[7] -pin add|a_aligned1_i I0[0] -pin add|a_is_zero0_i I0[0] -pin add|a_mant_ext_i S[0] -pin add|b_aligned1_i I1[0] -pin add|exp_diff0_i I0[0] -pin add|exp_diff0_i__0 I1[0] -pin add|result_exp_init_i I0[0] -pin add|sum0_i I0[7]
load net add|a[8] -attr @rip a[8] -attr @name a[8] -hierPin add a[8] -pin add|a_aligned1_i I0[1] -pin add|a_is_zero0_i I0[1] -pin add|a_mant_ext_i S[1] -pin add|b_aligned1_i I1[1] -pin add|exp_diff0_i I0[1] -pin add|exp_diff0_i__0 I1[1] -pin add|result_exp_init_i I0[1] -pin add|sum0_i I0[8]
load net add|a[9] -attr @rip a[9] -attr @name a[9] -hierPin add a[9] -pin add|a_aligned1_i I0[2] -pin add|a_is_zero0_i I0[2] -pin add|a_mant_ext_i S[2] -pin add|b_aligned1_i I1[2] -pin add|exp_diff0_i I0[2] -pin add|exp_diff0_i__0 I1[2] -pin add|result_exp_init_i I0[2] -pin add|sum0_i I0[9]
load net add|a_aligned0[0] -attr @rip O[0] -attr @name a_aligned0[0] -pin add|a_aligned0_i O[0] -pin add|a_aligned_i I1[0]
load net add|a_aligned0[1] -attr @rip O[1] -attr @name a_aligned0[1] -pin add|a_aligned0_i O[1] -pin add|a_aligned_i I1[1]
load net add|a_aligned0[2] -attr @rip O[2] -attr @name a_aligned0[2] -pin add|a_aligned0_i O[2] -pin add|a_aligned_i I1[2]
load net add|a_aligned0[3] -attr @rip O[3] -attr @name a_aligned0[3] -pin add|a_aligned0_i O[3] -pin add|a_aligned_i I1[3]
load net add|a_aligned0[4] -attr @rip O[4] -attr @name a_aligned0[4] -pin add|a_aligned0_i O[4] -pin add|a_aligned_i I1[4]
load net add|a_aligned0[5] -attr @rip O[5] -attr @name a_aligned0[5] -pin add|a_aligned0_i O[5] -pin add|a_aligned_i I1[5]
load net add|a_aligned0[6] -attr @rip O[6] -attr @name a_aligned0[6] -pin add|a_aligned0_i O[6] -pin add|a_aligned_i I1[6]
load net add|a_aligned0[7] -attr @rip O[7] -attr @name a_aligned0[7] -pin add|a_aligned0_i O[7] -pin add|a_aligned_i I1[7]
load net add|a_aligned0[8] -attr @rip O[8] -attr @name a_aligned0[8] -pin add|a_aligned0_i O[8] -pin add|a_aligned_i I1[8]
load net add|a_aligned1 -attr @name a_aligned1 -pin add|a_aligned1_i O -pin add|a_aligned_i S -pin add|exp_diff_i S -pin add|result_exp_init_i S
netloc add|a_aligned1 1 1 6 330 638N 670 768 980J 748N N 748 NJ 748 NJ
load net add|a_aligned[0] -attr @rip O[0] -attr @name a_aligned[0] -pin add|a_aligned_i O[0] -pin add|mant_sum0_i I0[0] -pin add|mant_sum0_i__0 I0[0] -pin add|mant_sum0_i__1 I1[0] -pin add|mant_sum1_i I0[0]
load net add|a_aligned[1] -attr @rip O[1] -attr @name a_aligned[1] -pin add|a_aligned_i O[1] -pin add|mant_sum0_i I0[1] -pin add|mant_sum0_i__0 I0[1] -pin add|mant_sum0_i__1 I1[1] -pin add|mant_sum1_i I0[1]
load net add|a_aligned[2] -attr @rip O[2] -attr @name a_aligned[2] -pin add|a_aligned_i O[2] -pin add|mant_sum0_i I0[2] -pin add|mant_sum0_i__0 I0[2] -pin add|mant_sum0_i__1 I1[2] -pin add|mant_sum1_i I0[2]
load net add|a_aligned[3] -attr @rip O[3] -attr @name a_aligned[3] -pin add|a_aligned_i O[3] -pin add|mant_sum0_i I0[3] -pin add|mant_sum0_i__0 I0[3] -pin add|mant_sum0_i__1 I1[3] -pin add|mant_sum1_i I0[3]
load net add|a_aligned[4] -attr @rip O[4] -attr @name a_aligned[4] -pin add|a_aligned_i O[4] -pin add|mant_sum0_i I0[4] -pin add|mant_sum0_i__0 I0[4] -pin add|mant_sum0_i__1 I1[4] -pin add|mant_sum1_i I0[4]
load net add|a_aligned[5] -attr @rip O[5] -attr @name a_aligned[5] -pin add|a_aligned_i O[5] -pin add|mant_sum0_i I0[5] -pin add|mant_sum0_i__0 I0[5] -pin add|mant_sum0_i__1 I1[5] -pin add|mant_sum1_i I0[5]
load net add|a_aligned[6] -attr @rip O[6] -attr @name a_aligned[6] -pin add|a_aligned_i O[6] -pin add|mant_sum0_i I0[6] -pin add|mant_sum0_i__0 I0[6] -pin add|mant_sum0_i__1 I1[6] -pin add|mant_sum1_i I0[6]
load net add|a_aligned[7] -attr @rip O[7] -attr @name a_aligned[7] -pin add|a_aligned_i O[7] -pin add|mant_sum0_i I0[7] -pin add|mant_sum0_i__0 I0[7] -pin add|mant_sum0_i__1 I1[7] -pin add|mant_sum1_i I0[7]
load net add|a_aligned[8] -attr @rip O[8] -attr @name a_aligned[8] -pin add|a_aligned_i O[8] -pin add|mant_sum0_i I0[8] -pin add|mant_sum0_i__0 I0[8] -pin add|mant_sum0_i__1 I1[8] -pin add|mant_sum1_i I0[8]
load net add|a_is_zero -attr @name a_is_zero -pin add|a_is_zero_i O -pin add|sum_i S
netloc add|a_is_zero 1 36 1 10370 338n
load net add|a_is_zero0 -attr @name a_is_zero0 -pin add|a_is_zero0_i O -pin add|a_is_zero_i I0
netloc add|a_is_zero0 1 35 1 NJ 698
load net add|a_is_zero0_i__0_n_0 -attr @name a_is_zero0_i__0_n_0 -pin add|a_is_zero0_i__0 O -pin add|a_is_zero_i I1
netloc add|a_is_zero0_i__0_n_0 1 35 1 10090J 718n
load net add|a_mant_ext[0] -attr @rip O[0] -attr @name a_mant_ext[0] -pin add|a_aligned0_i I0[0] -pin add|a_aligned_i I0[0] -pin add|a_mant_ext_i O[0]
load net add|a_mant_ext[1] -attr @rip O[1] -attr @name a_mant_ext[1] -pin add|a_aligned0_i I0[1] -pin add|a_aligned_i I0[1] -pin add|a_mant_ext_i O[1]
load net add|a_mant_ext[2] -attr @rip O[2] -attr @name a_mant_ext[2] -pin add|a_aligned0_i I0[2] -pin add|a_aligned_i I0[2] -pin add|a_mant_ext_i O[2]
load net add|a_mant_ext[3] -attr @rip O[3] -attr @name a_mant_ext[3] -pin add|a_aligned0_i I0[3] -pin add|a_aligned_i I0[3] -pin add|a_mant_ext_i O[3]
load net add|a_mant_ext[4] -attr @rip O[4] -attr @name a_mant_ext[4] -pin add|a_aligned0_i I0[4] -pin add|a_aligned_i I0[4] -pin add|a_mant_ext_i O[4]
load net add|a_mant_ext[5] -attr @rip O[5] -attr @name a_mant_ext[5] -pin add|a_aligned0_i I0[5] -pin add|a_aligned_i I0[5] -pin add|a_mant_ext_i O[5]
load net add|a_mant_ext[6] -attr @rip O[6] -attr @name a_mant_ext[6] -pin add|a_aligned0_i I0[6] -pin add|a_aligned_i I0[6] -pin add|a_mant_ext_i O[6]
load net add|a_mant_ext[7] -attr @rip O[7] -attr @name a_mant_ext[7] -pin add|a_aligned0_i I0[7] -pin add|a_aligned_i I0[7] -pin add|a_mant_ext_i O[7]
load net add|a_mant_ext[8] -attr @rip O[8] -attr @name a_mant_ext[8] -pin add|a_aligned0_i I0[8] -pin add|a_aligned_i I0[8] -pin add|a_mant_ext_i O[8]
load net add|b[0] -attr @rip b[0] -attr @name b[0] -hierPin add b[0] -pin add|b_is_zero0_i__0 I0[0] -pin add|b_mant_ext_i I0[0] -pin add|b_mant_ext_i I1[0] -pin add|sum_i I0[0]
load net add|b[10] -attr @rip b[10] -attr @name b[10] -hierPin add b[10] -pin add|a_aligned1_i I1[3] -pin add|b_aligned1_i I0[3] -pin add|b_is_zero0_i I0[3] -pin add|b_mant_ext_i S[3] -pin add|exp_diff0_i I1[3] -pin add|exp_diff0_i__0 I0[3] -pin add|result_exp_init_i I1[3] -pin add|sum_i I0[10]
load net add|b[11] -attr @rip b[11] -attr @name b[11] -hierPin add b[11] -pin add|a_aligned1_i I1[4] -pin add|b_aligned1_i I0[4] -pin add|b_is_zero0_i I0[4] -pin add|b_mant_ext_i S[4] -pin add|exp_diff0_i I1[4] -pin add|exp_diff0_i__0 I0[4] -pin add|result_exp_init_i I1[4] -pin add|sum_i I0[11]
load net add|b[12] -attr @rip b[12] -attr @name b[12] -hierPin add b[12] -pin add|a_aligned1_i I1[5] -pin add|b_aligned1_i I0[5] -pin add|b_is_zero0_i I0[5] -pin add|b_mant_ext_i S[5] -pin add|exp_diff0_i I1[5] -pin add|exp_diff0_i__0 I0[5] -pin add|result_exp_init_i I1[5] -pin add|sum_i I0[12]
load net add|b[13] -attr @rip b[13] -attr @name b[13] -hierPin add b[13] -pin add|a_aligned1_i I1[6] -pin add|b_aligned1_i I0[6] -pin add|b_is_zero0_i I0[6] -pin add|b_mant_ext_i S[6] -pin add|exp_diff0_i I1[6] -pin add|exp_diff0_i__0 I0[6] -pin add|result_exp_init_i I1[6] -pin add|sum_i I0[13]
load net add|b[14] -attr @rip b[14] -attr @name b[14] -hierPin add b[14] -pin add|a_aligned1_i I1[7] -pin add|b_aligned1_i I0[7] -pin add|b_is_zero0_i I0[7] -pin add|b_mant_ext_i S[7] -pin add|exp_diff0_i I1[7] -pin add|exp_diff0_i__0 I0[7] -pin add|result_exp_init_i I1[7] -pin add|sum_i I0[14]
load net add|b[15] -attr @rip b[15] -attr @name b[15] -hierPin add b[15] -pin add|mant_sum1_i__0 I1 -pin add|result_sign_i__0 I1 -pin add|sum_i I0[15]
load net add|b[1] -attr @rip b[1] -attr @name b[1] -hierPin add b[1] -pin add|b_is_zero0_i__0 I0[1] -pin add|b_mant_ext_i I0[1] -pin add|b_mant_ext_i I1[1] -pin add|sum_i I0[1]
load net add|b[2] -attr @rip b[2] -attr @name b[2] -hierPin add b[2] -pin add|b_is_zero0_i__0 I0[2] -pin add|b_mant_ext_i I0[2] -pin add|b_mant_ext_i I1[2] -pin add|sum_i I0[2]
load net add|b[3] -attr @rip b[3] -attr @name b[3] -hierPin add b[3] -pin add|b_is_zero0_i__0 I0[3] -pin add|b_mant_ext_i I0[3] -pin add|b_mant_ext_i I1[3] -pin add|sum_i I0[3]
load net add|b[4] -attr @rip b[4] -attr @name b[4] -hierPin add b[4] -pin add|b_is_zero0_i__0 I0[4] -pin add|b_mant_ext_i I0[4] -pin add|b_mant_ext_i I1[4] -pin add|sum_i I0[4]
load net add|b[5] -attr @rip b[5] -attr @name b[5] -hierPin add b[5] -pin add|b_is_zero0_i__0 I0[5] -pin add|b_mant_ext_i I0[5] -pin add|b_mant_ext_i I1[5] -pin add|sum_i I0[5]
load net add|b[6] -attr @rip b[6] -attr @name b[6] -hierPin add b[6] -pin add|b_is_zero0_i__0 I0[6] -pin add|b_mant_ext_i I0[6] -pin add|b_mant_ext_i I1[6] -pin add|sum_i I0[6]
load net add|b[7] -attr @rip b[7] -attr @name b[7] -hierPin add b[7] -pin add|a_aligned1_i I1[0] -pin add|b_aligned1_i I0[0] -pin add|b_is_zero0_i I0[0] -pin add|b_mant_ext_i S[0] -pin add|exp_diff0_i I1[0] -pin add|exp_diff0_i__0 I0[0] -pin add|result_exp_init_i I1[0] -pin add|sum_i I0[7]
load net add|b[8] -attr @rip b[8] -attr @name b[8] -hierPin add b[8] -pin add|a_aligned1_i I1[1] -pin add|b_aligned1_i I0[1] -pin add|b_is_zero0_i I0[1] -pin add|b_mant_ext_i S[1] -pin add|exp_diff0_i I1[1] -pin add|exp_diff0_i__0 I0[1] -pin add|result_exp_init_i I1[1] -pin add|sum_i I0[8]
load net add|b[9] -attr @rip b[9] -attr @name b[9] -hierPin add b[9] -pin add|a_aligned1_i I1[2] -pin add|b_aligned1_i I0[2] -pin add|b_is_zero0_i I0[2] -pin add|b_mant_ext_i S[2] -pin add|exp_diff0_i I1[2] -pin add|exp_diff0_i__0 I0[2] -pin add|result_exp_init_i I1[2] -pin add|sum_i I0[9]
load net add|b_aligned0[0] -attr @rip O[0] -attr @name b_aligned0[0] -pin add|b_aligned0_i O[0] -pin add|b_aligned_i I1[0]
load net add|b_aligned0[1] -attr @rip O[1] -attr @name b_aligned0[1] -pin add|b_aligned0_i O[1] -pin add|b_aligned_i I1[1]
load net add|b_aligned0[2] -attr @rip O[2] -attr @name b_aligned0[2] -pin add|b_aligned0_i O[2] -pin add|b_aligned_i I1[2]
load net add|b_aligned0[3] -attr @rip O[3] -attr @name b_aligned0[3] -pin add|b_aligned0_i O[3] -pin add|b_aligned_i I1[3]
load net add|b_aligned0[4] -attr @rip O[4] -attr @name b_aligned0[4] -pin add|b_aligned0_i O[4] -pin add|b_aligned_i I1[4]
load net add|b_aligned0[5] -attr @rip O[5] -attr @name b_aligned0[5] -pin add|b_aligned0_i O[5] -pin add|b_aligned_i I1[5]
load net add|b_aligned0[6] -attr @rip O[6] -attr @name b_aligned0[6] -pin add|b_aligned0_i O[6] -pin add|b_aligned_i I1[6]
load net add|b_aligned0[7] -attr @rip O[7] -attr @name b_aligned0[7] -pin add|b_aligned0_i O[7] -pin add|b_aligned_i I1[7]
load net add|b_aligned0[8] -attr @rip O[8] -attr @name b_aligned0[8] -pin add|b_aligned0_i O[8] -pin add|b_aligned_i I1[8]
load net add|b_aligned1 -attr @name b_aligned1 -pin add|b_aligned1_i O -pin add|b_aligned_i S
netloc add|b_aligned1 1 3 1 N 508
load net add|b_aligned[0] -attr @rip O[0] -attr @name b_aligned[0] -pin add|b_aligned_i O[0] -pin add|mant_sum0_i I1[0] -pin add|mant_sum0_i__0 I1[0] -pin add|mant_sum0_i__1 I0[0] -pin add|mant_sum1_i I1[0]
load net add|b_aligned[1] -attr @rip O[1] -attr @name b_aligned[1] -pin add|b_aligned_i O[1] -pin add|mant_sum0_i I1[1] -pin add|mant_sum0_i__0 I1[1] -pin add|mant_sum0_i__1 I0[1] -pin add|mant_sum1_i I1[1]
load net add|b_aligned[2] -attr @rip O[2] -attr @name b_aligned[2] -pin add|b_aligned_i O[2] -pin add|mant_sum0_i I1[2] -pin add|mant_sum0_i__0 I1[2] -pin add|mant_sum0_i__1 I0[2] -pin add|mant_sum1_i I1[2]
load net add|b_aligned[3] -attr @rip O[3] -attr @name b_aligned[3] -pin add|b_aligned_i O[3] -pin add|mant_sum0_i I1[3] -pin add|mant_sum0_i__0 I1[3] -pin add|mant_sum0_i__1 I0[3] -pin add|mant_sum1_i I1[3]
load net add|b_aligned[4] -attr @rip O[4] -attr @name b_aligned[4] -pin add|b_aligned_i O[4] -pin add|mant_sum0_i I1[4] -pin add|mant_sum0_i__0 I1[4] -pin add|mant_sum0_i__1 I0[4] -pin add|mant_sum1_i I1[4]
load net add|b_aligned[5] -attr @rip O[5] -attr @name b_aligned[5] -pin add|b_aligned_i O[5] -pin add|mant_sum0_i I1[5] -pin add|mant_sum0_i__0 I1[5] -pin add|mant_sum0_i__1 I0[5] -pin add|mant_sum1_i I1[5]
load net add|b_aligned[6] -attr @rip O[6] -attr @name b_aligned[6] -pin add|b_aligned_i O[6] -pin add|mant_sum0_i I1[6] -pin add|mant_sum0_i__0 I1[6] -pin add|mant_sum0_i__1 I0[6] -pin add|mant_sum1_i I1[6]
load net add|b_aligned[7] -attr @rip O[7] -attr @name b_aligned[7] -pin add|b_aligned_i O[7] -pin add|mant_sum0_i I1[7] -pin add|mant_sum0_i__0 I1[7] -pin add|mant_sum0_i__1 I0[7] -pin add|mant_sum1_i I1[7]
load net add|b_aligned[8] -attr @rip O[8] -attr @name b_aligned[8] -pin add|b_aligned_i O[8] -pin add|mant_sum0_i I1[8] -pin add|mant_sum0_i__0 I1[8] -pin add|mant_sum0_i__1 I0[8] -pin add|mant_sum1_i I1[8]
load net add|b_is_zero -attr @name b_is_zero -pin add|b_is_zero_i O -pin add|sum0_i S
netloc add|b_is_zero 1 35 1 10050 208n
load net add|b_is_zero0 -attr @name b_is_zero0 -pin add|b_is_zero0_i O -pin add|b_is_zero_i I0
netloc add|b_is_zero0 1 34 1 9670J 128n
load net add|b_is_zero0_i__0_n_0 -attr @name b_is_zero0_i__0_n_0 -pin add|b_is_zero0_i__0 O -pin add|b_is_zero_i I1
netloc add|b_is_zero0_i__0_n_0 1 34 1 NJ 218
load net add|b_mant_ext[0] -attr @rip O[0] -attr @name b_mant_ext[0] -pin add|b_aligned0_i I0[0] -pin add|b_aligned_i I0[0] -pin add|b_mant_ext_i O[0]
load net add|b_mant_ext[1] -attr @rip O[1] -attr @name b_mant_ext[1] -pin add|b_aligned0_i I0[1] -pin add|b_aligned_i I0[1] -pin add|b_mant_ext_i O[1]
load net add|b_mant_ext[2] -attr @rip O[2] -attr @name b_mant_ext[2] -pin add|b_aligned0_i I0[2] -pin add|b_aligned_i I0[2] -pin add|b_mant_ext_i O[2]
load net add|b_mant_ext[3] -attr @rip O[3] -attr @name b_mant_ext[3] -pin add|b_aligned0_i I0[3] -pin add|b_aligned_i I0[3] -pin add|b_mant_ext_i O[3]
load net add|b_mant_ext[4] -attr @rip O[4] -attr @name b_mant_ext[4] -pin add|b_aligned0_i I0[4] -pin add|b_aligned_i I0[4] -pin add|b_mant_ext_i O[4]
load net add|b_mant_ext[5] -attr @rip O[5] -attr @name b_mant_ext[5] -pin add|b_aligned0_i I0[5] -pin add|b_aligned_i I0[5] -pin add|b_mant_ext_i O[5]
load net add|b_mant_ext[6] -attr @rip O[6] -attr @name b_mant_ext[6] -pin add|b_aligned0_i I0[6] -pin add|b_aligned_i I0[6] -pin add|b_mant_ext_i O[6]
load net add|b_mant_ext[7] -attr @rip O[7] -attr @name b_mant_ext[7] -pin add|b_aligned0_i I0[7] -pin add|b_aligned_i I0[7] -pin add|b_mant_ext_i O[7]
load net add|b_mant_ext[8] -attr @rip O[8] -attr @name b_mant_ext[8] -pin add|b_aligned0_i I0[8] -pin add|b_aligned_i I0[8] -pin add|b_mant_ext_i O[8]
load net add|exp_diff0[0] -attr @rip O[0] -attr @name exp_diff0[0] -pin add|exp_diff0_i O[0] -pin add|exp_diff_i I0[0]
load net add|exp_diff0[1] -attr @rip O[1] -attr @name exp_diff0[1] -pin add|exp_diff0_i O[1] -pin add|exp_diff_i I0[1]
load net add|exp_diff0[2] -attr @rip O[2] -attr @name exp_diff0[2] -pin add|exp_diff0_i O[2] -pin add|exp_diff_i I0[2]
load net add|exp_diff0[3] -attr @rip O[3] -attr @name exp_diff0[3] -pin add|exp_diff0_i O[3] -pin add|exp_diff_i I0[3]
load net add|exp_diff0[4] -attr @rip O[4] -attr @name exp_diff0[4] -pin add|exp_diff0_i O[4] -pin add|exp_diff_i I0[4]
load net add|exp_diff0[5] -attr @rip O[5] -attr @name exp_diff0[5] -pin add|exp_diff0_i O[5] -pin add|exp_diff_i I0[5]
load net add|exp_diff0[6] -attr @rip O[6] -attr @name exp_diff0[6] -pin add|exp_diff0_i O[6] -pin add|exp_diff_i I0[6]
load net add|exp_diff0[7] -attr @rip O[7] -attr @name exp_diff0[7] -pin add|exp_diff0_i O[7] -pin add|exp_diff_i I0[7]
load net add|exp_diff0_i__0_n_0 -attr @rip O[7] -attr @name exp_diff0_i__0_n_0 -pin add|exp_diff0_i__0 O[7] -pin add|exp_diff_i I1[7]
load net add|exp_diff0_i__0_n_1 -attr @rip O[6] -attr @name exp_diff0_i__0_n_1 -pin add|exp_diff0_i__0 O[6] -pin add|exp_diff_i I1[6]
load net add|exp_diff0_i__0_n_2 -attr @rip O[5] -attr @name exp_diff0_i__0_n_2 -pin add|exp_diff0_i__0 O[5] -pin add|exp_diff_i I1[5]
load net add|exp_diff0_i__0_n_3 -attr @rip O[4] -attr @name exp_diff0_i__0_n_3 -pin add|exp_diff0_i__0 O[4] -pin add|exp_diff_i I1[4]
load net add|exp_diff0_i__0_n_4 -attr @rip O[3] -attr @name exp_diff0_i__0_n_4 -pin add|exp_diff0_i__0 O[3] -pin add|exp_diff_i I1[3]
load net add|exp_diff0_i__0_n_5 -attr @rip O[2] -attr @name exp_diff0_i__0_n_5 -pin add|exp_diff0_i__0 O[2] -pin add|exp_diff_i I1[2]
load net add|exp_diff0_i__0_n_6 -attr @rip O[1] -attr @name exp_diff0_i__0_n_6 -pin add|exp_diff0_i__0 O[1] -pin add|exp_diff_i I1[1]
load net add|exp_diff0_i__0_n_7 -attr @rip O[0] -attr @name exp_diff0_i__0_n_7 -pin add|exp_diff0_i__0 O[0] -pin add|exp_diff_i I1[0]
load net add|exp_diff[0] -attr @rip O[0] -attr @name exp_diff[0] -pin add|a_aligned0_i I1[0] -pin add|b_aligned0_i I1[0] -pin add|exp_diff_i O[0]
load net add|exp_diff[1] -attr @rip O[1] -attr @name exp_diff[1] -pin add|a_aligned0_i I1[1] -pin add|b_aligned0_i I1[1] -pin add|exp_diff_i O[1]
load net add|exp_diff[2] -attr @rip O[2] -attr @name exp_diff[2] -pin add|a_aligned0_i I1[2] -pin add|b_aligned0_i I1[2] -pin add|exp_diff_i O[2]
load net add|exp_diff[3] -attr @rip O[3] -attr @name exp_diff[3] -pin add|a_aligned0_i I1[3] -pin add|b_aligned0_i I1[3] -pin add|exp_diff_i O[3]
load net add|exp_diff[4] -attr @rip O[4] -attr @name exp_diff[4] -pin add|a_aligned0_i I1[4] -pin add|b_aligned0_i I1[4] -pin add|exp_diff_i O[4]
load net add|exp_diff[5] -attr @rip O[5] -attr @name exp_diff[5] -pin add|a_aligned0_i I1[5] -pin add|b_aligned0_i I1[5] -pin add|exp_diff_i O[5]
load net add|exp_diff[6] -attr @rip O[6] -attr @name exp_diff[6] -pin add|a_aligned0_i I1[6] -pin add|b_aligned0_i I1[6] -pin add|exp_diff_i O[6]
load net add|exp_diff[7] -attr @rip O[7] -attr @name exp_diff[7] -pin add|a_aligned0_i I1[7] -pin add|b_aligned0_i I1[7] -pin add|exp_diff_i O[7]
load net add|mant_sum0[0] -attr @rip O[0] -attr @name mant_sum0[0] -pin add|mant_sum0_i O[0] -pin add|mant_sum_i__0 I0[0]
load net add|mant_sum0[1] -attr @rip O[1] -attr @name mant_sum0[1] -pin add|mant_sum0_i O[1] -pin add|mant_sum_i__0 I0[1]
load net add|mant_sum0[2] -attr @rip O[2] -attr @name mant_sum0[2] -pin add|mant_sum0_i O[2] -pin add|mant_sum_i__0 I0[2]
load net add|mant_sum0[3] -attr @rip O[3] -attr @name mant_sum0[3] -pin add|mant_sum0_i O[3] -pin add|mant_sum_i__0 I0[3]
load net add|mant_sum0[4] -attr @rip O[4] -attr @name mant_sum0[4] -pin add|mant_sum0_i O[4] -pin add|mant_sum_i__0 I0[4]
load net add|mant_sum0[5] -attr @rip O[5] -attr @name mant_sum0[5] -pin add|mant_sum0_i O[5] -pin add|mant_sum_i__0 I0[5]
load net add|mant_sum0[6] -attr @rip O[6] -attr @name mant_sum0[6] -pin add|mant_sum0_i O[6] -pin add|mant_sum_i__0 I0[6]
load net add|mant_sum0[7] -attr @rip O[7] -attr @name mant_sum0[7] -pin add|mant_sum0_i O[7] -pin add|mant_sum_i__0 I0[7]
load net add|mant_sum0[8] -attr @rip O[8] -attr @name mant_sum0[8] -pin add|mant_sum0_i O[8] -pin add|mant_sum_i__0 I0[8]
load net add|mant_sum0[9] -attr @rip O[9] -attr @name mant_sum0[9] -pin add|mant_sum0_i O[9] -pin add|mant_sum_i__0 I0[9]
load net add|mant_sum0_i__0_n_0 -attr @rip O[9] -attr @name mant_sum0_i__0_n_0 -pin add|mant_sum0_i__0 O[9] -pin add|mant_sum_i I0[9]
load net add|mant_sum0_i__0_n_1 -attr @rip O[8] -attr @name mant_sum0_i__0_n_1 -pin add|mant_sum0_i__0 O[8] -pin add|mant_sum_i I0[8]
load net add|mant_sum0_i__0_n_2 -attr @rip O[7] -attr @name mant_sum0_i__0_n_2 -pin add|mant_sum0_i__0 O[7] -pin add|mant_sum_i I0[7]
load net add|mant_sum0_i__0_n_3 -attr @rip O[6] -attr @name mant_sum0_i__0_n_3 -pin add|mant_sum0_i__0 O[6] -pin add|mant_sum_i I0[6]
load net add|mant_sum0_i__0_n_4 -attr @rip O[5] -attr @name mant_sum0_i__0_n_4 -pin add|mant_sum0_i__0 O[5] -pin add|mant_sum_i I0[5]
load net add|mant_sum0_i__0_n_5 -attr @rip O[4] -attr @name mant_sum0_i__0_n_5 -pin add|mant_sum0_i__0 O[4] -pin add|mant_sum_i I0[4]
load net add|mant_sum0_i__0_n_6 -attr @rip O[3] -attr @name mant_sum0_i__0_n_6 -pin add|mant_sum0_i__0 O[3] -pin add|mant_sum_i I0[3]
load net add|mant_sum0_i__0_n_7 -attr @rip O[2] -attr @name mant_sum0_i__0_n_7 -pin add|mant_sum0_i__0 O[2] -pin add|mant_sum_i I0[2]
load net add|mant_sum0_i__0_n_8 -attr @rip O[1] -attr @name mant_sum0_i__0_n_8 -pin add|mant_sum0_i__0 O[1] -pin add|mant_sum_i I0[1]
load net add|mant_sum0_i__0_n_9 -attr @rip O[0] -attr @name mant_sum0_i__0_n_9 -pin add|mant_sum0_i__0 O[0] -pin add|mant_sum_i I0[0]
load net add|mant_sum0_i__1_n_0 -attr @rip O[9] -attr @name mant_sum0_i__1_n_0 -pin add|mant_sum0_i__1 O[9] -pin add|mant_sum_i I1[9]
load net add|mant_sum0_i__1_n_1 -attr @rip O[8] -attr @name mant_sum0_i__1_n_1 -pin add|mant_sum0_i__1 O[8] -pin add|mant_sum_i I1[8]
load net add|mant_sum0_i__1_n_2 -attr @rip O[7] -attr @name mant_sum0_i__1_n_2 -pin add|mant_sum0_i__1 O[7] -pin add|mant_sum_i I1[7]
load net add|mant_sum0_i__1_n_3 -attr @rip O[6] -attr @name mant_sum0_i__1_n_3 -pin add|mant_sum0_i__1 O[6] -pin add|mant_sum_i I1[6]
load net add|mant_sum0_i__1_n_4 -attr @rip O[5] -attr @name mant_sum0_i__1_n_4 -pin add|mant_sum0_i__1 O[5] -pin add|mant_sum_i I1[5]
load net add|mant_sum0_i__1_n_5 -attr @rip O[4] -attr @name mant_sum0_i__1_n_5 -pin add|mant_sum0_i__1 O[4] -pin add|mant_sum_i I1[4]
load net add|mant_sum0_i__1_n_6 -attr @rip O[3] -attr @name mant_sum0_i__1_n_6 -pin add|mant_sum0_i__1 O[3] -pin add|mant_sum_i I1[3]
load net add|mant_sum0_i__1_n_7 -attr @rip O[2] -attr @name mant_sum0_i__1_n_7 -pin add|mant_sum0_i__1 O[2] -pin add|mant_sum_i I1[2]
load net add|mant_sum0_i__1_n_8 -attr @rip O[1] -attr @name mant_sum0_i__1_n_8 -pin add|mant_sum0_i__1 O[1] -pin add|mant_sum_i I1[1]
load net add|mant_sum0_i__1_n_9 -attr @rip O[0] -attr @name mant_sum0_i__1_n_9 -pin add|mant_sum0_i__1 O[0] -pin add|mant_sum_i I1[0]
load net add|mant_sum1 -attr @name mant_sum1 -pin add|mant_sum1_i__0 O -pin add|mant_sum_i__0 S -pin add|result_sign_i__1 S
netloc add|mant_sum1 1 6 29 1860 508N NJ 508 NJ 508 2720J 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 NJ 488 7780J 518 8060J 538 NJ 538 NJ 538 NJ 538 NJ 538 9650
load net add|mant_sum1_i_n_0 -attr @name mant_sum1_i_n_0 -pin add|mant_sum1_i O -pin add|mant_sum_i S -pin add|result_sign_i__0 S
netloc add|mant_sum1_i_n_0 1 5 29 N 608N NJ 608 2170J 588 2470J 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 NJ 608 7760J 618 NJ 618 NJ 618 NJ 618 NJ 618 9330
load net add|mant_sum_i__0_n_0 -attr @rip O[9] -attr @name mant_sum_i__0_n_0 -pin add|mant_sum_i__0 O[9] -pin add|norm_mant_i S -pin add|out_exp_i S
load net add|mant_sum_i_n_0 -attr @rip O[9] -attr @name mant_sum_i_n_0 -pin add|mant_sum_i O[9] -pin add|mant_sum_i__0 I1[9]
load net add|mant_sum_i_n_1 -attr @rip O[8] -attr @name mant_sum_i_n_1 -pin add|mant_sum_i O[8] -pin add|mant_sum_i__0 I1[8]
load net add|mant_sum_i_n_2 -attr @rip O[7] -attr @name mant_sum_i_n_2 -pin add|mant_sum_i O[7] -pin add|mant_sum_i__0 I1[7]
load net add|mant_sum_i_n_3 -attr @rip O[6] -attr @name mant_sum_i_n_3 -pin add|mant_sum_i O[6] -pin add|mant_sum_i__0 I1[6]
load net add|mant_sum_i_n_4 -attr @rip O[5] -attr @name mant_sum_i_n_4 -pin add|mant_sum_i O[5] -pin add|mant_sum_i__0 I1[5]
load net add|mant_sum_i_n_5 -attr @rip O[4] -attr @name mant_sum_i_n_5 -pin add|mant_sum_i O[4] -pin add|mant_sum_i__0 I1[4]
load net add|mant_sum_i_n_6 -attr @rip O[3] -attr @name mant_sum_i_n_6 -pin add|mant_sum_i O[3] -pin add|mant_sum_i__0 I1[3]
load net add|mant_sum_i_n_7 -attr @rip O[2] -attr @name mant_sum_i_n_7 -pin add|mant_sum_i O[2] -pin add|mant_sum_i__0 I1[2]
load net add|mant_sum_i_n_8 -attr @rip O[1] -attr @name mant_sum_i_n_8 -pin add|mant_sum_i O[1] -pin add|mant_sum_i__0 I1[1]
load net add|mant_sum_i_n_9 -attr @rip O[0] -attr @name mant_sum_i_n_9 -pin add|mant_sum_i O[0] -pin add|mant_sum_i__0 I1[0]
load net add|norm_mant0[0] -attr @rip O[0] -attr @name norm_mant0[0] -pin add|norm_mant0_i__0 O[0] -pin add|norm_mant_i__0 I0[0]
load net add|norm_mant0[1] -attr @rip O[1] -attr @name norm_mant0[1] -pin add|norm_mant0_i__0 O[1] -pin add|norm_mant_i__0 I0[1]
load net add|norm_mant0[2] -attr @rip O[2] -attr @name norm_mant0[2] -pin add|norm_mant0_i__0 O[2] -pin add|norm_mant_i__0 I0[2]
load net add|norm_mant0[3] -attr @rip O[3] -attr @name norm_mant0[3] -pin add|norm_mant0_i__0 O[3] -pin add|norm_mant_i__0 I0[3]
load net add|norm_mant0[4] -attr @rip O[4] -attr @name norm_mant0[4] -pin add|norm_mant0_i__0 O[4] -pin add|norm_mant_i__0 I0[4]
load net add|norm_mant0[5] -attr @rip O[5] -attr @name norm_mant0[5] -pin add|norm_mant0_i__0 O[5] -pin add|norm_mant_i__0 I0[5]
load net add|norm_mant0[6] -attr @rip O[6] -attr @name norm_mant0[6] -pin add|norm_mant0_i__0 O[6] -pin add|norm_mant_i__0 I0[6]
load net add|norm_mant0[7] -attr @rip O[7] -attr @name norm_mant0[7] -pin add|norm_mant0_i__0 O[7] -pin add|norm_mant_i__0 I0[7]
load net add|norm_mant0[8] -attr @rip O[8] -attr @name norm_mant0[8] -pin add|norm_mant0_i__0 O[8] -pin add|norm_mant_i__0 I0[8]
load net add|norm_mant0_i__1_n_0 -attr @rip O[8] -attr @name norm_mant0_i__1_n_0 -pin add|norm_mant0_i__1 O[8] -pin add|norm_mant_i__1 I0[8]
load net add|norm_mant0_i__1_n_1 -attr @rip O[7] -attr @name norm_mant0_i__1_n_1 -pin add|norm_mant0_i__1 O[7] -pin add|norm_mant_i__1 I0[7]
load net add|norm_mant0_i__1_n_2 -attr @rip O[6] -attr @name norm_mant0_i__1_n_2 -pin add|norm_mant0_i__1 O[6] -pin add|norm_mant_i__1 I0[6]
load net add|norm_mant0_i__1_n_3 -attr @rip O[5] -attr @name norm_mant0_i__1_n_3 -pin add|norm_mant0_i__1 O[5] -pin add|norm_mant_i__1 I0[5]
load net add|norm_mant0_i__1_n_4 -attr @rip O[4] -attr @name norm_mant0_i__1_n_4 -pin add|norm_mant0_i__1 O[4] -pin add|norm_mant_i__1 I0[4]
load net add|norm_mant0_i__1_n_5 -attr @rip O[3] -attr @name norm_mant0_i__1_n_5 -pin add|norm_mant0_i__1 O[3] -pin add|norm_mant_i__1 I0[3]
load net add|norm_mant0_i__1_n_6 -attr @rip O[2] -attr @name norm_mant0_i__1_n_6 -pin add|norm_mant0_i__1 O[2] -pin add|norm_mant_i__1 I0[2]
load net add|norm_mant0_i__1_n_7 -attr @rip O[1] -attr @name norm_mant0_i__1_n_7 -pin add|norm_mant0_i__1 O[1] -pin add|norm_mant_i__1 I0[1]
load net add|norm_mant0_i__1_n_8 -attr @rip O[0] -attr @name norm_mant0_i__1_n_8 -pin add|norm_mant0_i__1 O[0] -pin add|norm_mant_i__1 I0[0]
load net add|norm_mant0_i__2_n_0 -attr @rip O[8] -attr @name norm_mant0_i__2_n_0 -pin add|norm_mant0_i__2 O[8] -pin add|norm_mant_i__2 I0[8]
load net add|norm_mant0_i__2_n_1 -attr @rip O[7] -attr @name norm_mant0_i__2_n_1 -pin add|norm_mant0_i__2 O[7] -pin add|norm_mant_i__2 I0[7]
load net add|norm_mant0_i__2_n_2 -attr @rip O[6] -attr @name norm_mant0_i__2_n_2 -pin add|norm_mant0_i__2 O[6] -pin add|norm_mant_i__2 I0[6]
load net add|norm_mant0_i__2_n_3 -attr @rip O[5] -attr @name norm_mant0_i__2_n_3 -pin add|norm_mant0_i__2 O[5] -pin add|norm_mant_i__2 I0[5]
load net add|norm_mant0_i__2_n_4 -attr @rip O[4] -attr @name norm_mant0_i__2_n_4 -pin add|norm_mant0_i__2 O[4] -pin add|norm_mant_i__2 I0[4]
load net add|norm_mant0_i__2_n_5 -attr @rip O[3] -attr @name norm_mant0_i__2_n_5 -pin add|norm_mant0_i__2 O[3] -pin add|norm_mant_i__2 I0[3]
load net add|norm_mant0_i__2_n_6 -attr @rip O[2] -attr @name norm_mant0_i__2_n_6 -pin add|norm_mant0_i__2 O[2] -pin add|norm_mant_i__2 I0[2]
load net add|norm_mant0_i__2_n_7 -attr @rip O[1] -attr @name norm_mant0_i__2_n_7 -pin add|norm_mant0_i__2 O[1] -pin add|norm_mant_i__2 I0[1]
load net add|norm_mant0_i__2_n_8 -attr @rip O[0] -attr @name norm_mant0_i__2_n_8 -pin add|norm_mant0_i__2 O[0] -pin add|norm_mant_i__2 I0[0]
load net add|norm_mant0_i__3_n_0 -attr @rip O[8] -attr @name norm_mant0_i__3_n_0 -pin add|norm_mant0_i__3 O[8] -pin add|norm_mant_i__3 I0[8]
load net add|norm_mant0_i__3_n_1 -attr @rip O[7] -attr @name norm_mant0_i__3_n_1 -pin add|norm_mant0_i__3 O[7] -pin add|norm_mant_i__3 I0[7]
load net add|norm_mant0_i__3_n_2 -attr @rip O[6] -attr @name norm_mant0_i__3_n_2 -pin add|norm_mant0_i__3 O[6] -pin add|norm_mant_i__3 I0[6]
load net add|norm_mant0_i__3_n_3 -attr @rip O[5] -attr @name norm_mant0_i__3_n_3 -pin add|norm_mant0_i__3 O[5] -pin add|norm_mant_i__3 I0[5]
load net add|norm_mant0_i__3_n_4 -attr @rip O[4] -attr @name norm_mant0_i__3_n_4 -pin add|norm_mant0_i__3 O[4] -pin add|norm_mant_i__3 I0[4]
load net add|norm_mant0_i__3_n_5 -attr @rip O[3] -attr @name norm_mant0_i__3_n_5 -pin add|norm_mant0_i__3 O[3] -pin add|norm_mant_i__3 I0[3]
load net add|norm_mant0_i__3_n_6 -attr @rip O[2] -attr @name norm_mant0_i__3_n_6 -pin add|norm_mant0_i__3 O[2] -pin add|norm_mant_i__3 I0[2]
load net add|norm_mant0_i__3_n_7 -attr @rip O[1] -attr @name norm_mant0_i__3_n_7 -pin add|norm_mant0_i__3 O[1] -pin add|norm_mant_i__3 I0[1]
load net add|norm_mant0_i__3_n_8 -attr @rip O[0] -attr @name norm_mant0_i__3_n_8 -pin add|norm_mant0_i__3 O[0] -pin add|norm_mant_i__3 I0[0]
load net add|norm_mant0_i__4_n_0 -attr @rip O[8] -attr @name norm_mant0_i__4_n_0 -pin add|norm_mant0_i__4 O[8] -pin add|norm_mant_i__4 I0[8]
load net add|norm_mant0_i__4_n_1 -attr @rip O[7] -attr @name norm_mant0_i__4_n_1 -pin add|norm_mant0_i__4 O[7] -pin add|norm_mant_i__4 I0[7]
load net add|norm_mant0_i__4_n_2 -attr @rip O[6] -attr @name norm_mant0_i__4_n_2 -pin add|norm_mant0_i__4 O[6] -pin add|norm_mant_i__4 I0[6]
load net add|norm_mant0_i__4_n_3 -attr @rip O[5] -attr @name norm_mant0_i__4_n_3 -pin add|norm_mant0_i__4 O[5] -pin add|norm_mant_i__4 I0[5]
load net add|norm_mant0_i__4_n_4 -attr @rip O[4] -attr @name norm_mant0_i__4_n_4 -pin add|norm_mant0_i__4 O[4] -pin add|norm_mant_i__4 I0[4]
load net add|norm_mant0_i__4_n_5 -attr @rip O[3] -attr @name norm_mant0_i__4_n_5 -pin add|norm_mant0_i__4 O[3] -pin add|norm_mant_i__4 I0[3]
load net add|norm_mant0_i__4_n_6 -attr @rip O[2] -attr @name norm_mant0_i__4_n_6 -pin add|norm_mant0_i__4 O[2] -pin add|norm_mant_i__4 I0[2]
load net add|norm_mant0_i__4_n_7 -attr @rip O[1] -attr @name norm_mant0_i__4_n_7 -pin add|norm_mant0_i__4 O[1] -pin add|norm_mant_i__4 I0[1]
load net add|norm_mant0_i__4_n_8 -attr @rip O[0] -attr @name norm_mant0_i__4_n_8 -pin add|norm_mant0_i__4 O[0] -pin add|norm_mant_i__4 I0[0]
load net add|norm_mant0_i__5_n_0 -attr @rip O[8] -attr @name norm_mant0_i__5_n_0 -pin add|norm_mant0_i__5 O[8] -pin add|norm_mant_i__5 I0[8]
load net add|norm_mant0_i__5_n_1 -attr @rip O[7] -attr @name norm_mant0_i__5_n_1 -pin add|norm_mant0_i__5 O[7] -pin add|norm_mant_i__5 I0[7]
load net add|norm_mant0_i__5_n_2 -attr @rip O[6] -attr @name norm_mant0_i__5_n_2 -pin add|norm_mant0_i__5 O[6] -pin add|norm_mant_i__5 I0[6]
load net add|norm_mant0_i__5_n_3 -attr @rip O[5] -attr @name norm_mant0_i__5_n_3 -pin add|norm_mant0_i__5 O[5] -pin add|norm_mant_i__5 I0[5]
load net add|norm_mant0_i__5_n_4 -attr @rip O[4] -attr @name norm_mant0_i__5_n_4 -pin add|norm_mant0_i__5 O[4] -pin add|norm_mant_i__5 I0[4]
load net add|norm_mant0_i__5_n_5 -attr @rip O[3] -attr @name norm_mant0_i__5_n_5 -pin add|norm_mant0_i__5 O[3] -pin add|norm_mant_i__5 I0[3]
load net add|norm_mant0_i__5_n_6 -attr @rip O[2] -attr @name norm_mant0_i__5_n_6 -pin add|norm_mant0_i__5 O[2] -pin add|norm_mant_i__5 I0[2]
load net add|norm_mant0_i__5_n_7 -attr @rip O[1] -attr @name norm_mant0_i__5_n_7 -pin add|norm_mant0_i__5 O[1] -pin add|norm_mant_i__5 I0[1]
load net add|norm_mant0_i__5_n_8 -attr @rip O[0] -attr @name norm_mant0_i__5_n_8 -pin add|norm_mant0_i__5 O[0] -pin add|norm_mant_i__5 I0[0]
load net add|norm_mant0_i__6_n_0 -attr @rip O[8] -attr @name norm_mant0_i__6_n_0 -pin add|norm_mant0_i__6 O[8] -pin add|norm_mant_i__6 I0[8]
load net add|norm_mant0_i__6_n_1 -attr @rip O[7] -attr @name norm_mant0_i__6_n_1 -pin add|norm_mant0_i__6 O[7] -pin add|norm_mant_i__6 I0[7]
load net add|norm_mant0_i__6_n_2 -attr @rip O[6] -attr @name norm_mant0_i__6_n_2 -pin add|norm_mant0_i__6 O[6] -pin add|norm_mant_i__6 I0[6]
load net add|norm_mant0_i__6_n_3 -attr @rip O[5] -attr @name norm_mant0_i__6_n_3 -pin add|norm_mant0_i__6 O[5] -pin add|norm_mant_i__6 I0[5]
load net add|norm_mant0_i__6_n_4 -attr @rip O[4] -attr @name norm_mant0_i__6_n_4 -pin add|norm_mant0_i__6 O[4] -pin add|norm_mant_i__6 I0[4]
load net add|norm_mant0_i__6_n_5 -attr @rip O[3] -attr @name norm_mant0_i__6_n_5 -pin add|norm_mant0_i__6 O[3] -pin add|norm_mant_i__6 I0[3]
load net add|norm_mant0_i__6_n_6 -attr @rip O[2] -attr @name norm_mant0_i__6_n_6 -pin add|norm_mant0_i__6 O[2] -pin add|norm_mant_i__6 I0[2]
load net add|norm_mant0_i__6_n_7 -attr @rip O[1] -attr @name norm_mant0_i__6_n_7 -pin add|norm_mant0_i__6 O[1] -pin add|norm_mant_i__6 I0[1]
load net add|norm_mant0_i__6_n_8 -attr @rip O[0] -attr @name norm_mant0_i__6_n_8 -pin add|norm_mant0_i__6 O[0] -pin add|norm_mant_i__6 I0[0]
load net add|norm_mant0_i__7_n_0 -attr @rip O[8] -attr @name norm_mant0_i__7_n_0 -pin add|norm_mant0_i__7 O[8] -pin add|norm_mant_i__7 I0[8]
load net add|norm_mant0_i__7_n_1 -attr @rip O[7] -attr @name norm_mant0_i__7_n_1 -pin add|norm_mant0_i__7 O[7] -pin add|norm_mant_i__7 I0[7]
load net add|norm_mant0_i__7_n_2 -attr @rip O[6] -attr @name norm_mant0_i__7_n_2 -pin add|norm_mant0_i__7 O[6] -pin add|norm_mant_i__7 I0[6]
load net add|norm_mant0_i__7_n_3 -attr @rip O[5] -attr @name norm_mant0_i__7_n_3 -pin add|norm_mant0_i__7 O[5] -pin add|norm_mant_i__7 I0[5]
load net add|norm_mant0_i__7_n_4 -attr @rip O[4] -attr @name norm_mant0_i__7_n_4 -pin add|norm_mant0_i__7 O[4] -pin add|norm_mant_i__7 I0[4]
load net add|norm_mant0_i__7_n_5 -attr @rip O[3] -attr @name norm_mant0_i__7_n_5 -pin add|norm_mant0_i__7 O[3] -pin add|norm_mant_i__7 I0[3]
load net add|norm_mant0_i__7_n_6 -attr @rip O[2] -attr @name norm_mant0_i__7_n_6 -pin add|norm_mant0_i__7 O[2] -pin add|norm_mant_i__7 I0[2]
load net add|norm_mant0_i__7_n_7 -attr @rip O[1] -attr @name norm_mant0_i__7_n_7 -pin add|norm_mant0_i__7 O[1] -pin add|norm_mant_i__7 I0[1]
load net add|norm_mant0_i__7_n_8 -attr @rip O[0] -attr @name norm_mant0_i__7_n_8 -pin add|norm_mant0_i__7 O[0] -pin add|norm_mant_i__7 I0[0]
load net add|norm_mant0_i_n_0 -attr @rip O[8] -attr @name norm_mant0_i_n_0 -pin add|norm_mant0_i O[8] -pin add|norm_mant_i I0[8]
load net add|norm_mant0_i_n_1 -attr @rip O[7] -attr @name norm_mant0_i_n_1 -pin add|norm_mant0_i O[7] -pin add|norm_mant_i I0[7]
load net add|norm_mant0_i_n_2 -attr @rip O[6] -attr @name norm_mant0_i_n_2 -pin add|norm_mant0_i O[6] -pin add|norm_mant_i I0[6]
load net add|norm_mant0_i_n_3 -attr @rip O[5] -attr @name norm_mant0_i_n_3 -pin add|norm_mant0_i O[5] -pin add|norm_mant_i I0[5]
load net add|norm_mant0_i_n_4 -attr @rip O[4] -attr @name norm_mant0_i_n_4 -pin add|norm_mant0_i O[4] -pin add|norm_mant_i I0[4]
load net add|norm_mant0_i_n_5 -attr @rip O[3] -attr @name norm_mant0_i_n_5 -pin add|norm_mant0_i O[3] -pin add|norm_mant_i I0[3]
load net add|norm_mant0_i_n_6 -attr @rip O[2] -attr @name norm_mant0_i_n_6 -pin add|norm_mant0_i O[2] -pin add|norm_mant_i I0[2]
load net add|norm_mant0_i_n_7 -attr @rip O[1] -attr @name norm_mant0_i_n_7 -pin add|norm_mant0_i O[1] -pin add|norm_mant_i I0[1]
load net add|norm_mant0_i_n_8 -attr @rip O[0] -attr @name norm_mant0_i_n_8 -pin add|norm_mant0_i O[0] -pin add|norm_mant_i I0[0]
load net add|norm_mant0_out[0] -attr @rip O[0] -attr @name norm_mant0_out[0] -pin add|norm_mant_i__7 O[0] -pin add|out_exp_i__8 S[0] -pin add|out_mant_i S[0] -pin add|result_sign_i A[0]
load net add|norm_mant0_out[1] -attr @rip O[1] -attr @name norm_mant0_out[1] -pin add|norm_mant_i__7 O[1] -pin add|out_exp_i__8 S[1] -pin add|out_mant_i I1[0] -pin add|out_mant_i S[1] -pin add|result_sign_i A[1]
load net add|norm_mant0_out[2] -attr @rip O[2] -attr @name norm_mant0_out[2] -pin add|norm_mant_i__7 O[2] -pin add|out_exp_i__8 S[2] -pin add|out_mant_i I1[1] -pin add|out_mant_i S[2] -pin add|result_sign_i A[2]
load net add|norm_mant0_out[3] -attr @rip O[3] -attr @name norm_mant0_out[3] -pin add|norm_mant_i__7 O[3] -pin add|out_exp_i__8 S[3] -pin add|out_mant_i I1[2] -pin add|out_mant_i S[3] -pin add|result_sign_i A[3]
load net add|norm_mant0_out[4] -attr @rip O[4] -attr @name norm_mant0_out[4] -pin add|norm_mant_i__7 O[4] -pin add|out_exp_i__8 S[4] -pin add|out_mant_i I1[3] -pin add|out_mant_i S[4] -pin add|result_sign_i A[4]
load net add|norm_mant0_out[5] -attr @rip O[5] -attr @name norm_mant0_out[5] -pin add|norm_mant_i__7 O[5] -pin add|out_exp_i__8 S[5] -pin add|out_mant_i I1[4] -pin add|out_mant_i S[5] -pin add|result_sign_i A[5]
load net add|norm_mant0_out[6] -attr @rip O[6] -attr @name norm_mant0_out[6] -pin add|norm_mant_i__7 O[6] -pin add|out_exp_i__8 S[6] -pin add|out_mant_i I1[5] -pin add|out_mant_i S[6] -pin add|result_sign_i A[6]
load net add|norm_mant0_out[7] -attr @rip O[7] -attr @name norm_mant0_out[7] -pin add|norm_mant_i__7 O[7] -pin add|out_exp_i__8 S[7] -pin add|out_mant_i I1[6] -pin add|out_mant_i S[7] -pin add|result_sign_i A[7]
load net add|norm_mant0_out[8] -attr @rip O[8] -attr @name norm_mant0_out[8] -pin add|norm_mant_i__7 O[8] -pin add|out_exp_i__8 S[8] -pin add|out_mant_i S[8] -pin add|result_sign_i A[8]
load net add|norm_mant1 -attr @name norm_mant1 -pin add|norm_mant1_i__6 O -pin add|norm_mant_i__7 S -pin add|out_exp_i__7 S
netloc add|norm_mant1 1 32 2 8980 518N 9310
load net add|norm_mant1_i__0_n_0 -attr @name norm_mant1_i__0_n_0 -pin add|norm_mant1_i__0 O -pin add|norm_mant_i__1 S -pin add|out_exp_i__1 S
netloc add|norm_mant1_i__0_n_0 1 14 1 4050 468n
load net add|norm_mant1_i__1_n_0 -attr @name norm_mant1_i__1_n_0 -pin add|norm_mant1_i__1 O -pin add|norm_mant_i__2 S -pin add|out_exp_i__2 S
netloc add|norm_mant1_i__1_n_0 1 17 1 4840 468n
load net add|norm_mant1_i__2_n_0 -attr @name norm_mant1_i__2_n_0 -pin add|norm_mant1_i__2 O -pin add|norm_mant_i__3 S -pin add|out_exp_i__3 S
netloc add|norm_mant1_i__2_n_0 1 20 1 5630 468n
load net add|norm_mant1_i__3_n_0 -attr @name norm_mant1_i__3_n_0 -pin add|norm_mant1_i__3 O -pin add|norm_mant_i__4 S -pin add|out_exp_i__4 S
netloc add|norm_mant1_i__3_n_0 1 23 1 6420 468n
load net add|norm_mant1_i__4_n_0 -attr @name norm_mant1_i__4_n_0 -pin add|norm_mant1_i__4 O -pin add|norm_mant_i__5 S -pin add|out_exp_i__5 S
netloc add|norm_mant1_i__4_n_0 1 26 1 7220 468n
load net add|norm_mant1_i__5_n_0 -attr @name norm_mant1_i__5_n_0 -pin add|norm_mant1_i__5 O -pin add|norm_mant_i__6 S -pin add|out_exp_i__6 S
netloc add|norm_mant1_i__5_n_0 1 29 1 8080 518n
load net add|norm_mant1_i_n_0 -attr @name norm_mant1_i_n_0 -pin add|norm_mant1_i O -pin add|norm_mant_i__0 S -pin add|out_exp_i__0 S
netloc add|norm_mant1_i_n_0 1 11 1 3240 468n
load net add|norm_mant2 -attr @name norm_mant2 -pin add|norm_mant1_i__6 I0 -pin add|norm_mant2_i__13 O
netloc add|norm_mant2 1 31 1 8640 338n
load net add|norm_mant2_i__0_n_0 -attr @name norm_mant2_i__0_n_0 -pin add|norm_mant1_i I1 -pin add|norm_mant2_i__0 O
netloc add|norm_mant2_i__0_n_0 1 10 1 2980J 538n
load net add|norm_mant2_i__10_n_0 -attr @name norm_mant2_i__10_n_0 -pin add|norm_mant1_i__4 I1 -pin add|norm_mant2_i__10 O
netloc add|norm_mant2_i__10_n_0 1 25 1 6980 568n
load net add|norm_mant2_i__11_n_0 -attr @name norm_mant2_i__11_n_0 -pin add|norm_mant1_i__5 I0 -pin add|norm_mant2_i__11 O
netloc add|norm_mant2_i__11_n_0 1 28 1 N 558
load net add|norm_mant2_i__12_n_0 -attr @name norm_mant2_i__12_n_0 -pin add|norm_mant1_i__5 I1 -pin add|norm_mant2_i__12 O
netloc add|norm_mant2_i__12_n_0 1 28 1 7780 578n
load net add|norm_mant2_i__14_n_0 -attr @name norm_mant2_i__14_n_0 -pin add|norm_mant1_i__6 I1 -pin add|norm_mant2_i__14 O
netloc add|norm_mant2_i__14_n_0 1 31 1 8660 358n
load net add|norm_mant2_i__1_n_0 -attr @name norm_mant2_i__1_n_0 -pin add|norm_mant1_i__0 I0 -pin add|norm_mant2_i__1 O
netloc add|norm_mant2_i__1_n_0 1 13 1 3790 548n
load net add|norm_mant2_i__2_n_0 -attr @name norm_mant2_i__2_n_0 -pin add|norm_mant1_i__0 I1 -pin add|norm_mant2_i__2 O
netloc add|norm_mant2_i__2_n_0 1 13 1 3810 568n
load net add|norm_mant2_i__3_n_0 -attr @name norm_mant2_i__3_n_0 -pin add|norm_mant1_i__1 I0 -pin add|norm_mant2_i__3 O
netloc add|norm_mant2_i__3_n_0 1 16 1 4580 548n
load net add|norm_mant2_i__4_n_0 -attr @name norm_mant2_i__4_n_0 -pin add|norm_mant1_i__1 I1 -pin add|norm_mant2_i__4 O
netloc add|norm_mant2_i__4_n_0 1 16 1 4600 568n
load net add|norm_mant2_i__5_n_0 -attr @name norm_mant2_i__5_n_0 -pin add|norm_mant1_i__2 I0 -pin add|norm_mant2_i__5 O
netloc add|norm_mant2_i__5_n_0 1 19 1 5370 548n
load net add|norm_mant2_i__6_n_0 -attr @name norm_mant2_i__6_n_0 -pin add|norm_mant1_i__2 I1 -pin add|norm_mant2_i__6 O
netloc add|norm_mant2_i__6_n_0 1 19 1 5390 568n
load net add|norm_mant2_i__7_n_0 -attr @name norm_mant2_i__7_n_0 -pin add|norm_mant1_i__3 I0 -pin add|norm_mant2_i__7 O
netloc add|norm_mant2_i__7_n_0 1 22 1 6160 548n
load net add|norm_mant2_i__8_n_0 -attr @name norm_mant2_i__8_n_0 -pin add|norm_mant1_i__3 I1 -pin add|norm_mant2_i__8 O
netloc add|norm_mant2_i__8_n_0 1 22 1 6180 568n
load net add|norm_mant2_i__9_n_0 -attr @name norm_mant2_i__9_n_0 -pin add|norm_mant1_i__4 I0 -pin add|norm_mant2_i__9 O
netloc add|norm_mant2_i__9_n_0 1 25 1 6960 548n
load net add|norm_mant2_i_n_0 -attr @name norm_mant2_i_n_0 -pin add|norm_mant1_i I0 -pin add|norm_mant2_i O
netloc add|norm_mant2_i_n_0 1 10 1 3000 438n
load net add|norm_mant[0] -attr @rip O[0] -attr @name norm_mant[0] -pin add|norm_mant0_i__0 I0[0] -pin add|norm_mant_i O[0] -pin add|norm_mant_i__0 I1[0]
load net add|norm_mant[1] -attr @rip O[1] -attr @name norm_mant[1] -pin add|norm_mant0_i__0 I0[1] -pin add|norm_mant_i O[1] -pin add|norm_mant_i__0 I1[1]
load net add|norm_mant[2] -attr @rip O[2] -attr @name norm_mant[2] -pin add|norm_mant0_i__0 I0[2] -pin add|norm_mant_i O[2] -pin add|norm_mant_i__0 I1[2]
load net add|norm_mant[3] -attr @rip O[3] -attr @name norm_mant[3] -pin add|norm_mant0_i__0 I0[3] -pin add|norm_mant_i O[3] -pin add|norm_mant_i__0 I1[3]
load net add|norm_mant[4] -attr @rip O[4] -attr @name norm_mant[4] -pin add|norm_mant0_i__0 I0[4] -pin add|norm_mant_i O[4] -pin add|norm_mant_i__0 I1[4]
load net add|norm_mant[5] -attr @rip O[5] -attr @name norm_mant[5] -pin add|norm_mant0_i__0 I0[5] -pin add|norm_mant_i O[5] -pin add|norm_mant_i__0 I1[5]
load net add|norm_mant[6] -attr @rip O[6] -attr @name norm_mant[6] -pin add|norm_mant0_i__0 I0[6] -pin add|norm_mant_i O[6] -pin add|norm_mant_i__0 I1[6]
load net add|norm_mant[7] -attr @rip O[7] -attr @name norm_mant[7] -pin add|norm_mant0_i__0 I0[7] -pin add|norm_mant_i O[7] -pin add|norm_mant_i__0 I1[7]
load net add|norm_mant[8] -attr @rip O[8] -attr @name norm_mant[8] -pin add|norm_mant0_i__0 I0[8] -pin add|norm_mant2_i I0 -pin add|norm_mant_i O[8] -pin add|norm_mant_i__0 I1[8]
load net add|norm_mant_i__0_n_0 -attr @rip O[8] -attr @name norm_mant_i__0_n_0 -pin add|norm_mant0_i__1 I0[8] -pin add|norm_mant2_i__1 I0 -pin add|norm_mant_i__0 O[8] -pin add|norm_mant_i__1 I1[8]
load net add|norm_mant_i__0_n_1 -attr @rip O[7] -attr @name norm_mant_i__0_n_1 -pin add|norm_mant0_i__1 I0[7] -pin add|norm_mant_i__0 O[7] -pin add|norm_mant_i__1 I1[7]
load net add|norm_mant_i__0_n_2 -attr @rip O[6] -attr @name norm_mant_i__0_n_2 -pin add|norm_mant0_i__1 I0[6] -pin add|norm_mant_i__0 O[6] -pin add|norm_mant_i__1 I1[6]
load net add|norm_mant_i__0_n_3 -attr @rip O[5] -attr @name norm_mant_i__0_n_3 -pin add|norm_mant0_i__1 I0[5] -pin add|norm_mant_i__0 O[5] -pin add|norm_mant_i__1 I1[5]
load net add|norm_mant_i__0_n_4 -attr @rip O[4] -attr @name norm_mant_i__0_n_4 -pin add|norm_mant0_i__1 I0[4] -pin add|norm_mant_i__0 O[4] -pin add|norm_mant_i__1 I1[4]
load net add|norm_mant_i__0_n_5 -attr @rip O[3] -attr @name norm_mant_i__0_n_5 -pin add|norm_mant0_i__1 I0[3] -pin add|norm_mant_i__0 O[3] -pin add|norm_mant_i__1 I1[3]
load net add|norm_mant_i__0_n_6 -attr @rip O[2] -attr @name norm_mant_i__0_n_6 -pin add|norm_mant0_i__1 I0[2] -pin add|norm_mant_i__0 O[2] -pin add|norm_mant_i__1 I1[2]
load net add|norm_mant_i__0_n_7 -attr @rip O[1] -attr @name norm_mant_i__0_n_7 -pin add|norm_mant0_i__1 I0[1] -pin add|norm_mant_i__0 O[1] -pin add|norm_mant_i__1 I1[1]
load net add|norm_mant_i__0_n_8 -attr @rip O[0] -attr @name norm_mant_i__0_n_8 -pin add|norm_mant0_i__1 I0[0] -pin add|norm_mant_i__0 O[0] -pin add|norm_mant_i__1 I1[0]
load net add|norm_mant_i__1_n_0 -attr @rip O[8] -attr @name norm_mant_i__1_n_0 -pin add|norm_mant0_i__2 I0[8] -pin add|norm_mant2_i__3 I0 -pin add|norm_mant_i__1 O[8] -pin add|norm_mant_i__2 I1[8]
load net add|norm_mant_i__1_n_1 -attr @rip O[7] -attr @name norm_mant_i__1_n_1 -pin add|norm_mant0_i__2 I0[7] -pin add|norm_mant_i__1 O[7] -pin add|norm_mant_i__2 I1[7]
load net add|norm_mant_i__1_n_2 -attr @rip O[6] -attr @name norm_mant_i__1_n_2 -pin add|norm_mant0_i__2 I0[6] -pin add|norm_mant_i__1 O[6] -pin add|norm_mant_i__2 I1[6]
load net add|norm_mant_i__1_n_3 -attr @rip O[5] -attr @name norm_mant_i__1_n_3 -pin add|norm_mant0_i__2 I0[5] -pin add|norm_mant_i__1 O[5] -pin add|norm_mant_i__2 I1[5]
load net add|norm_mant_i__1_n_4 -attr @rip O[4] -attr @name norm_mant_i__1_n_4 -pin add|norm_mant0_i__2 I0[4] -pin add|norm_mant_i__1 O[4] -pin add|norm_mant_i__2 I1[4]
load net add|norm_mant_i__1_n_5 -attr @rip O[3] -attr @name norm_mant_i__1_n_5 -pin add|norm_mant0_i__2 I0[3] -pin add|norm_mant_i__1 O[3] -pin add|norm_mant_i__2 I1[3]
load net add|norm_mant_i__1_n_6 -attr @rip O[2] -attr @name norm_mant_i__1_n_6 -pin add|norm_mant0_i__2 I0[2] -pin add|norm_mant_i__1 O[2] -pin add|norm_mant_i__2 I1[2]
load net add|norm_mant_i__1_n_7 -attr @rip O[1] -attr @name norm_mant_i__1_n_7 -pin add|norm_mant0_i__2 I0[1] -pin add|norm_mant_i__1 O[1] -pin add|norm_mant_i__2 I1[1]
load net add|norm_mant_i__1_n_8 -attr @rip O[0] -attr @name norm_mant_i__1_n_8 -pin add|norm_mant0_i__2 I0[0] -pin add|norm_mant_i__1 O[0] -pin add|norm_mant_i__2 I1[0]
load net add|norm_mant_i__2_n_0 -attr @rip O[8] -attr @name norm_mant_i__2_n_0 -pin add|norm_mant0_i__3 I0[8] -pin add|norm_mant2_i__5 I0 -pin add|norm_mant_i__2 O[8] -pin add|norm_mant_i__3 I1[8]
load net add|norm_mant_i__2_n_1 -attr @rip O[7] -attr @name norm_mant_i__2_n_1 -pin add|norm_mant0_i__3 I0[7] -pin add|norm_mant_i__2 O[7] -pin add|norm_mant_i__3 I1[7]
load net add|norm_mant_i__2_n_2 -attr @rip O[6] -attr @name norm_mant_i__2_n_2 -pin add|norm_mant0_i__3 I0[6] -pin add|norm_mant_i__2 O[6] -pin add|norm_mant_i__3 I1[6]
load net add|norm_mant_i__2_n_3 -attr @rip O[5] -attr @name norm_mant_i__2_n_3 -pin add|norm_mant0_i__3 I0[5] -pin add|norm_mant_i__2 O[5] -pin add|norm_mant_i__3 I1[5]
load net add|norm_mant_i__2_n_4 -attr @rip O[4] -attr @name norm_mant_i__2_n_4 -pin add|norm_mant0_i__3 I0[4] -pin add|norm_mant_i__2 O[4] -pin add|norm_mant_i__3 I1[4]
load net add|norm_mant_i__2_n_5 -attr @rip O[3] -attr @name norm_mant_i__2_n_5 -pin add|norm_mant0_i__3 I0[3] -pin add|norm_mant_i__2 O[3] -pin add|norm_mant_i__3 I1[3]
load net add|norm_mant_i__2_n_6 -attr @rip O[2] -attr @name norm_mant_i__2_n_6 -pin add|norm_mant0_i__3 I0[2] -pin add|norm_mant_i__2 O[2] -pin add|norm_mant_i__3 I1[2]
load net add|norm_mant_i__2_n_7 -attr @rip O[1] -attr @name norm_mant_i__2_n_7 -pin add|norm_mant0_i__3 I0[1] -pin add|norm_mant_i__2 O[1] -pin add|norm_mant_i__3 I1[1]
load net add|norm_mant_i__2_n_8 -attr @rip O[0] -attr @name norm_mant_i__2_n_8 -pin add|norm_mant0_i__3 I0[0] -pin add|norm_mant_i__2 O[0] -pin add|norm_mant_i__3 I1[0]
load net add|norm_mant_i__3_n_0 -attr @rip O[8] -attr @name norm_mant_i__3_n_0 -pin add|norm_mant0_i__4 I0[8] -pin add|norm_mant2_i__7 I0 -pin add|norm_mant_i__3 O[8] -pin add|norm_mant_i__4 I1[8]
load net add|norm_mant_i__3_n_1 -attr @rip O[7] -attr @name norm_mant_i__3_n_1 -pin add|norm_mant0_i__4 I0[7] -pin add|norm_mant_i__3 O[7] -pin add|norm_mant_i__4 I1[7]
load net add|norm_mant_i__3_n_2 -attr @rip O[6] -attr @name norm_mant_i__3_n_2 -pin add|norm_mant0_i__4 I0[6] -pin add|norm_mant_i__3 O[6] -pin add|norm_mant_i__4 I1[6]
load net add|norm_mant_i__3_n_3 -attr @rip O[5] -attr @name norm_mant_i__3_n_3 -pin add|norm_mant0_i__4 I0[5] -pin add|norm_mant_i__3 O[5] -pin add|norm_mant_i__4 I1[5]
load net add|norm_mant_i__3_n_4 -attr @rip O[4] -attr @name norm_mant_i__3_n_4 -pin add|norm_mant0_i__4 I0[4] -pin add|norm_mant_i__3 O[4] -pin add|norm_mant_i__4 I1[4]
load net add|norm_mant_i__3_n_5 -attr @rip O[3] -attr @name norm_mant_i__3_n_5 -pin add|norm_mant0_i__4 I0[3] -pin add|norm_mant_i__3 O[3] -pin add|norm_mant_i__4 I1[3]
load net add|norm_mant_i__3_n_6 -attr @rip O[2] -attr @name norm_mant_i__3_n_6 -pin add|norm_mant0_i__4 I0[2] -pin add|norm_mant_i__3 O[2] -pin add|norm_mant_i__4 I1[2]
load net add|norm_mant_i__3_n_7 -attr @rip O[1] -attr @name norm_mant_i__3_n_7 -pin add|norm_mant0_i__4 I0[1] -pin add|norm_mant_i__3 O[1] -pin add|norm_mant_i__4 I1[1]
load net add|norm_mant_i__3_n_8 -attr @rip O[0] -attr @name norm_mant_i__3_n_8 -pin add|norm_mant0_i__4 I0[0] -pin add|norm_mant_i__3 O[0] -pin add|norm_mant_i__4 I1[0]
load net add|norm_mant_i__4_n_0 -attr @rip O[8] -attr @name norm_mant_i__4_n_0 -pin add|norm_mant0_i__5 I0[8] -pin add|norm_mant2_i__9 I0 -pin add|norm_mant_i__4 O[8] -pin add|norm_mant_i__5 I1[8]
load net add|norm_mant_i__4_n_1 -attr @rip O[7] -attr @name norm_mant_i__4_n_1 -pin add|norm_mant0_i__5 I0[7] -pin add|norm_mant_i__4 O[7] -pin add|norm_mant_i__5 I1[7]
load net add|norm_mant_i__4_n_2 -attr @rip O[6] -attr @name norm_mant_i__4_n_2 -pin add|norm_mant0_i__5 I0[6] -pin add|norm_mant_i__4 O[6] -pin add|norm_mant_i__5 I1[6]
load net add|norm_mant_i__4_n_3 -attr @rip O[5] -attr @name norm_mant_i__4_n_3 -pin add|norm_mant0_i__5 I0[5] -pin add|norm_mant_i__4 O[5] -pin add|norm_mant_i__5 I1[5]
load net add|norm_mant_i__4_n_4 -attr @rip O[4] -attr @name norm_mant_i__4_n_4 -pin add|norm_mant0_i__5 I0[4] -pin add|norm_mant_i__4 O[4] -pin add|norm_mant_i__5 I1[4]
load net add|norm_mant_i__4_n_5 -attr @rip O[3] -attr @name norm_mant_i__4_n_5 -pin add|norm_mant0_i__5 I0[3] -pin add|norm_mant_i__4 O[3] -pin add|norm_mant_i__5 I1[3]
load net add|norm_mant_i__4_n_6 -attr @rip O[2] -attr @name norm_mant_i__4_n_6 -pin add|norm_mant0_i__5 I0[2] -pin add|norm_mant_i__4 O[2] -pin add|norm_mant_i__5 I1[2]
load net add|norm_mant_i__4_n_7 -attr @rip O[1] -attr @name norm_mant_i__4_n_7 -pin add|norm_mant0_i__5 I0[1] -pin add|norm_mant_i__4 O[1] -pin add|norm_mant_i__5 I1[1]
load net add|norm_mant_i__4_n_8 -attr @rip O[0] -attr @name norm_mant_i__4_n_8 -pin add|norm_mant0_i__5 I0[0] -pin add|norm_mant_i__4 O[0] -pin add|norm_mant_i__5 I1[0]
load net add|norm_mant_i__5_n_0 -attr @rip O[8] -attr @name norm_mant_i__5_n_0 -pin add|norm_mant0_i__6 I0[8] -pin add|norm_mant2_i__11 I0 -pin add|norm_mant_i__5 O[8] -pin add|norm_mant_i__6 I1[8]
load net add|norm_mant_i__5_n_1 -attr @rip O[7] -attr @name norm_mant_i__5_n_1 -pin add|norm_mant0_i__6 I0[7] -pin add|norm_mant_i__5 O[7] -pin add|norm_mant_i__6 I1[7]
load net add|norm_mant_i__5_n_2 -attr @rip O[6] -attr @name norm_mant_i__5_n_2 -pin add|norm_mant0_i__6 I0[6] -pin add|norm_mant_i__5 O[6] -pin add|norm_mant_i__6 I1[6]
load net add|norm_mant_i__5_n_3 -attr @rip O[5] -attr @name norm_mant_i__5_n_3 -pin add|norm_mant0_i__6 I0[5] -pin add|norm_mant_i__5 O[5] -pin add|norm_mant_i__6 I1[5]
load net add|norm_mant_i__5_n_4 -attr @rip O[4] -attr @name norm_mant_i__5_n_4 -pin add|norm_mant0_i__6 I0[4] -pin add|norm_mant_i__5 O[4] -pin add|norm_mant_i__6 I1[4]
load net add|norm_mant_i__5_n_5 -attr @rip O[3] -attr @name norm_mant_i__5_n_5 -pin add|norm_mant0_i__6 I0[3] -pin add|norm_mant_i__5 O[3] -pin add|norm_mant_i__6 I1[3]
load net add|norm_mant_i__5_n_6 -attr @rip O[2] -attr @name norm_mant_i__5_n_6 -pin add|norm_mant0_i__6 I0[2] -pin add|norm_mant_i__5 O[2] -pin add|norm_mant_i__6 I1[2]
load net add|norm_mant_i__5_n_7 -attr @rip O[1] -attr @name norm_mant_i__5_n_7 -pin add|norm_mant0_i__6 I0[1] -pin add|norm_mant_i__5 O[1] -pin add|norm_mant_i__6 I1[1]
load net add|norm_mant_i__5_n_8 -attr @rip O[0] -attr @name norm_mant_i__5_n_8 -pin add|norm_mant0_i__6 I0[0] -pin add|norm_mant_i__5 O[0] -pin add|norm_mant_i__6 I1[0]
load net add|norm_mant_i__6_n_0 -attr @rip O[8] -attr @name norm_mant_i__6_n_0 -pin add|norm_mant0_i__7 I0[8] -pin add|norm_mant2_i__13 I0 -pin add|norm_mant_i__6 O[8] -pin add|norm_mant_i__7 I1[8]
load net add|norm_mant_i__6_n_1 -attr @rip O[7] -attr @name norm_mant_i__6_n_1 -pin add|norm_mant0_i__7 I0[7] -pin add|norm_mant_i__6 O[7] -pin add|norm_mant_i__7 I1[7]
load net add|norm_mant_i__6_n_2 -attr @rip O[6] -attr @name norm_mant_i__6_n_2 -pin add|norm_mant0_i__7 I0[6] -pin add|norm_mant_i__6 O[6] -pin add|norm_mant_i__7 I1[6]
load net add|norm_mant_i__6_n_3 -attr @rip O[5] -attr @name norm_mant_i__6_n_3 -pin add|norm_mant0_i__7 I0[5] -pin add|norm_mant_i__6 O[5] -pin add|norm_mant_i__7 I1[5]
load net add|norm_mant_i__6_n_4 -attr @rip O[4] -attr @name norm_mant_i__6_n_4 -pin add|norm_mant0_i__7 I0[4] -pin add|norm_mant_i__6 O[4] -pin add|norm_mant_i__7 I1[4]
load net add|norm_mant_i__6_n_5 -attr @rip O[3] -attr @name norm_mant_i__6_n_5 -pin add|norm_mant0_i__7 I0[3] -pin add|norm_mant_i__6 O[3] -pin add|norm_mant_i__7 I1[3]
load net add|norm_mant_i__6_n_6 -attr @rip O[2] -attr @name norm_mant_i__6_n_6 -pin add|norm_mant0_i__7 I0[2] -pin add|norm_mant_i__6 O[2] -pin add|norm_mant_i__7 I1[2]
load net add|norm_mant_i__6_n_7 -attr @rip O[1] -attr @name norm_mant_i__6_n_7 -pin add|norm_mant0_i__7 I0[1] -pin add|norm_mant_i__6 O[1] -pin add|norm_mant_i__7 I1[1]
load net add|norm_mant_i__6_n_8 -attr @rip O[0] -attr @name norm_mant_i__6_n_8 -pin add|norm_mant0_i__7 I0[0] -pin add|norm_mant_i__6 O[0] -pin add|norm_mant_i__7 I1[0]
load net add|out_exp0[0] -attr @rip O[0] -attr @name out_exp0[0] -pin add|out_exp0_i O[0] -pin add|out_exp_i I0[0]
load net add|out_exp0[1] -attr @rip O[1] -attr @name out_exp0[1] -pin add|out_exp0_i O[1] -pin add|out_exp_i I0[1]
load net add|out_exp0[2] -attr @rip O[2] -attr @name out_exp0[2] -pin add|out_exp0_i O[2] -pin add|out_exp_i I0[2]
load net add|out_exp0[3] -attr @rip O[3] -attr @name out_exp0[3] -pin add|out_exp0_i O[3] -pin add|out_exp_i I0[3]
load net add|out_exp0[4] -attr @rip O[4] -attr @name out_exp0[4] -pin add|out_exp0_i O[4] -pin add|out_exp_i I0[4]
load net add|out_exp0[5] -attr @rip O[5] -attr @name out_exp0[5] -pin add|out_exp0_i O[5] -pin add|out_exp_i I0[5]
load net add|out_exp0[6] -attr @rip O[6] -attr @name out_exp0[6] -pin add|out_exp0_i O[6] -pin add|out_exp_i I0[6]
load net add|out_exp0[7] -attr @rip O[7] -attr @name out_exp0[7] -pin add|out_exp0_i O[7] -pin add|out_exp_i I0[7]
load net add|out_exp0_i__0_n_0 -attr @rip O[7] -attr @name out_exp0_i__0_n_0 -pin add|out_exp0_i__0 O[7] -pin add|out_exp_i__0 I0[7]
load net add|out_exp0_i__0_n_1 -attr @rip O[6] -attr @name out_exp0_i__0_n_1 -pin add|out_exp0_i__0 O[6] -pin add|out_exp_i__0 I0[6]
load net add|out_exp0_i__0_n_2 -attr @rip O[5] -attr @name out_exp0_i__0_n_2 -pin add|out_exp0_i__0 O[5] -pin add|out_exp_i__0 I0[5]
load net add|out_exp0_i__0_n_3 -attr @rip O[4] -attr @name out_exp0_i__0_n_3 -pin add|out_exp0_i__0 O[4] -pin add|out_exp_i__0 I0[4]
load net add|out_exp0_i__0_n_4 -attr @rip O[3] -attr @name out_exp0_i__0_n_4 -pin add|out_exp0_i__0 O[3] -pin add|out_exp_i__0 I0[3]
load net add|out_exp0_i__0_n_5 -attr @rip O[2] -attr @name out_exp0_i__0_n_5 -pin add|out_exp0_i__0 O[2] -pin add|out_exp_i__0 I0[2]
load net add|out_exp0_i__0_n_6 -attr @rip O[1] -attr @name out_exp0_i__0_n_6 -pin add|out_exp0_i__0 O[1] -pin add|out_exp_i__0 I0[1]
load net add|out_exp0_i__0_n_7 -attr @rip O[0] -attr @name out_exp0_i__0_n_7 -pin add|out_exp0_i__0 O[0] -pin add|out_exp_i__0 I0[0]
load net add|out_exp0_i__1_n_0 -attr @rip O[7] -attr @name out_exp0_i__1_n_0 -pin add|out_exp0_i__1 O[7] -pin add|out_exp_i__1 I0[7]
load net add|out_exp0_i__1_n_1 -attr @rip O[6] -attr @name out_exp0_i__1_n_1 -pin add|out_exp0_i__1 O[6] -pin add|out_exp_i__1 I0[6]
load net add|out_exp0_i__1_n_2 -attr @rip O[5] -attr @name out_exp0_i__1_n_2 -pin add|out_exp0_i__1 O[5] -pin add|out_exp_i__1 I0[5]
load net add|out_exp0_i__1_n_3 -attr @rip O[4] -attr @name out_exp0_i__1_n_3 -pin add|out_exp0_i__1 O[4] -pin add|out_exp_i__1 I0[4]
load net add|out_exp0_i__1_n_4 -attr @rip O[3] -attr @name out_exp0_i__1_n_4 -pin add|out_exp0_i__1 O[3] -pin add|out_exp_i__1 I0[3]
load net add|out_exp0_i__1_n_5 -attr @rip O[2] -attr @name out_exp0_i__1_n_5 -pin add|out_exp0_i__1 O[2] -pin add|out_exp_i__1 I0[2]
load net add|out_exp0_i__1_n_6 -attr @rip O[1] -attr @name out_exp0_i__1_n_6 -pin add|out_exp0_i__1 O[1] -pin add|out_exp_i__1 I0[1]
load net add|out_exp0_i__1_n_7 -attr @rip O[0] -attr @name out_exp0_i__1_n_7 -pin add|out_exp0_i__1 O[0] -pin add|out_exp_i__1 I0[0]
load net add|out_exp0_i__2_n_0 -attr @rip O[7] -attr @name out_exp0_i__2_n_0 -pin add|out_exp0_i__2 O[7] -pin add|out_exp_i__2 I0[7]
load net add|out_exp0_i__2_n_1 -attr @rip O[6] -attr @name out_exp0_i__2_n_1 -pin add|out_exp0_i__2 O[6] -pin add|out_exp_i__2 I0[6]
load net add|out_exp0_i__2_n_2 -attr @rip O[5] -attr @name out_exp0_i__2_n_2 -pin add|out_exp0_i__2 O[5] -pin add|out_exp_i__2 I0[5]
load net add|out_exp0_i__2_n_3 -attr @rip O[4] -attr @name out_exp0_i__2_n_3 -pin add|out_exp0_i__2 O[4] -pin add|out_exp_i__2 I0[4]
load net add|out_exp0_i__2_n_4 -attr @rip O[3] -attr @name out_exp0_i__2_n_4 -pin add|out_exp0_i__2 O[3] -pin add|out_exp_i__2 I0[3]
load net add|out_exp0_i__2_n_5 -attr @rip O[2] -attr @name out_exp0_i__2_n_5 -pin add|out_exp0_i__2 O[2] -pin add|out_exp_i__2 I0[2]
load net add|out_exp0_i__2_n_6 -attr @rip O[1] -attr @name out_exp0_i__2_n_6 -pin add|out_exp0_i__2 O[1] -pin add|out_exp_i__2 I0[1]
load net add|out_exp0_i__2_n_7 -attr @rip O[0] -attr @name out_exp0_i__2_n_7 -pin add|out_exp0_i__2 O[0] -pin add|out_exp_i__2 I0[0]
load net add|out_exp0_i__3_n_0 -attr @rip O[7] -attr @name out_exp0_i__3_n_0 -pin add|out_exp0_i__3 O[7] -pin add|out_exp_i__3 I0[7]
load net add|out_exp0_i__3_n_1 -attr @rip O[6] -attr @name out_exp0_i__3_n_1 -pin add|out_exp0_i__3 O[6] -pin add|out_exp_i__3 I0[6]
load net add|out_exp0_i__3_n_2 -attr @rip O[5] -attr @name out_exp0_i__3_n_2 -pin add|out_exp0_i__3 O[5] -pin add|out_exp_i__3 I0[5]
load net add|out_exp0_i__3_n_3 -attr @rip O[4] -attr @name out_exp0_i__3_n_3 -pin add|out_exp0_i__3 O[4] -pin add|out_exp_i__3 I0[4]
load net add|out_exp0_i__3_n_4 -attr @rip O[3] -attr @name out_exp0_i__3_n_4 -pin add|out_exp0_i__3 O[3] -pin add|out_exp_i__3 I0[3]
load net add|out_exp0_i__3_n_5 -attr @rip O[2] -attr @name out_exp0_i__3_n_5 -pin add|out_exp0_i__3 O[2] -pin add|out_exp_i__3 I0[2]
load net add|out_exp0_i__3_n_6 -attr @rip O[1] -attr @name out_exp0_i__3_n_6 -pin add|out_exp0_i__3 O[1] -pin add|out_exp_i__3 I0[1]
load net add|out_exp0_i__3_n_7 -attr @rip O[0] -attr @name out_exp0_i__3_n_7 -pin add|out_exp0_i__3 O[0] -pin add|out_exp_i__3 I0[0]
load net add|out_exp0_i__4_n_0 -attr @rip O[7] -attr @name out_exp0_i__4_n_0 -pin add|out_exp0_i__4 O[7] -pin add|out_exp_i__4 I0[7]
load net add|out_exp0_i__4_n_1 -attr @rip O[6] -attr @name out_exp0_i__4_n_1 -pin add|out_exp0_i__4 O[6] -pin add|out_exp_i__4 I0[6]
load net add|out_exp0_i__4_n_2 -attr @rip O[5] -attr @name out_exp0_i__4_n_2 -pin add|out_exp0_i__4 O[5] -pin add|out_exp_i__4 I0[5]
load net add|out_exp0_i__4_n_3 -attr @rip O[4] -attr @name out_exp0_i__4_n_3 -pin add|out_exp0_i__4 O[4] -pin add|out_exp_i__4 I0[4]
load net add|out_exp0_i__4_n_4 -attr @rip O[3] -attr @name out_exp0_i__4_n_4 -pin add|out_exp0_i__4 O[3] -pin add|out_exp_i__4 I0[3]
load net add|out_exp0_i__4_n_5 -attr @rip O[2] -attr @name out_exp0_i__4_n_5 -pin add|out_exp0_i__4 O[2] -pin add|out_exp_i__4 I0[2]
load net add|out_exp0_i__4_n_6 -attr @rip O[1] -attr @name out_exp0_i__4_n_6 -pin add|out_exp0_i__4 O[1] -pin add|out_exp_i__4 I0[1]
load net add|out_exp0_i__4_n_7 -attr @rip O[0] -attr @name out_exp0_i__4_n_7 -pin add|out_exp0_i__4 O[0] -pin add|out_exp_i__4 I0[0]
load net add|out_exp0_i__5_n_0 -attr @rip O[7] -attr @name out_exp0_i__5_n_0 -pin add|out_exp0_i__5 O[7] -pin add|out_exp_i__5 I0[7]
load net add|out_exp0_i__5_n_1 -attr @rip O[6] -attr @name out_exp0_i__5_n_1 -pin add|out_exp0_i__5 O[6] -pin add|out_exp_i__5 I0[6]
load net add|out_exp0_i__5_n_2 -attr @rip O[5] -attr @name out_exp0_i__5_n_2 -pin add|out_exp0_i__5 O[5] -pin add|out_exp_i__5 I0[5]
load net add|out_exp0_i__5_n_3 -attr @rip O[4] -attr @name out_exp0_i__5_n_3 -pin add|out_exp0_i__5 O[4] -pin add|out_exp_i__5 I0[4]
load net add|out_exp0_i__5_n_4 -attr @rip O[3] -attr @name out_exp0_i__5_n_4 -pin add|out_exp0_i__5 O[3] -pin add|out_exp_i__5 I0[3]
load net add|out_exp0_i__5_n_5 -attr @rip O[2] -attr @name out_exp0_i__5_n_5 -pin add|out_exp0_i__5 O[2] -pin add|out_exp_i__5 I0[2]
load net add|out_exp0_i__5_n_6 -attr @rip O[1] -attr @name out_exp0_i__5_n_6 -pin add|out_exp0_i__5 O[1] -pin add|out_exp_i__5 I0[1]
load net add|out_exp0_i__5_n_7 -attr @rip O[0] -attr @name out_exp0_i__5_n_7 -pin add|out_exp0_i__5 O[0] -pin add|out_exp_i__5 I0[0]
load net add|out_exp0_i__6_n_0 -attr @rip O[7] -attr @name out_exp0_i__6_n_0 -pin add|out_exp0_i__6 O[7] -pin add|out_exp_i__6 I0[7]
load net add|out_exp0_i__6_n_1 -attr @rip O[6] -attr @name out_exp0_i__6_n_1 -pin add|out_exp0_i__6 O[6] -pin add|out_exp_i__6 I0[6]
load net add|out_exp0_i__6_n_2 -attr @rip O[5] -attr @name out_exp0_i__6_n_2 -pin add|out_exp0_i__6 O[5] -pin add|out_exp_i__6 I0[5]
load net add|out_exp0_i__6_n_3 -attr @rip O[4] -attr @name out_exp0_i__6_n_3 -pin add|out_exp0_i__6 O[4] -pin add|out_exp_i__6 I0[4]
load net add|out_exp0_i__6_n_4 -attr @rip O[3] -attr @name out_exp0_i__6_n_4 -pin add|out_exp0_i__6 O[3] -pin add|out_exp_i__6 I0[3]
load net add|out_exp0_i__6_n_5 -attr @rip O[2] -attr @name out_exp0_i__6_n_5 -pin add|out_exp0_i__6 O[2] -pin add|out_exp_i__6 I0[2]
load net add|out_exp0_i__6_n_6 -attr @rip O[1] -attr @name out_exp0_i__6_n_6 -pin add|out_exp0_i__6 O[1] -pin add|out_exp_i__6 I0[1]
load net add|out_exp0_i__6_n_7 -attr @rip O[0] -attr @name out_exp0_i__6_n_7 -pin add|out_exp0_i__6 O[0] -pin add|out_exp_i__6 I0[0]
load net add|out_exp0_i__7_n_0 -attr @rip O[7] -attr @name out_exp0_i__7_n_0 -pin add|out_exp0_i__7 O[7] -pin add|out_exp_i__7 I0[7]
load net add|out_exp0_i__7_n_1 -attr @rip O[6] -attr @name out_exp0_i__7_n_1 -pin add|out_exp0_i__7 O[6] -pin add|out_exp_i__7 I0[6]
load net add|out_exp0_i__7_n_2 -attr @rip O[5] -attr @name out_exp0_i__7_n_2 -pin add|out_exp0_i__7 O[5] -pin add|out_exp_i__7 I0[5]
load net add|out_exp0_i__7_n_3 -attr @rip O[4] -attr @name out_exp0_i__7_n_3 -pin add|out_exp0_i__7 O[4] -pin add|out_exp_i__7 I0[4]
load net add|out_exp0_i__7_n_4 -attr @rip O[3] -attr @name out_exp0_i__7_n_4 -pin add|out_exp0_i__7 O[3] -pin add|out_exp_i__7 I0[3]
load net add|out_exp0_i__7_n_5 -attr @rip O[2] -attr @name out_exp0_i__7_n_5 -pin add|out_exp0_i__7 O[2] -pin add|out_exp_i__7 I0[2]
load net add|out_exp0_i__7_n_6 -attr @rip O[1] -attr @name out_exp0_i__7_n_6 -pin add|out_exp0_i__7 O[1] -pin add|out_exp_i__7 I0[1]
load net add|out_exp0_i__7_n_7 -attr @rip O[0] -attr @name out_exp0_i__7_n_7 -pin add|out_exp0_i__7 O[0] -pin add|out_exp_i__7 I0[0]
load net add|out_exp[0] -attr @rip O[0] -attr @name out_exp[0] -pin add|out_exp_i__8 O[0] -pin add|sum0_i I1[7]
load net add|out_exp[1] -attr @rip O[1] -attr @name out_exp[1] -pin add|out_exp_i__8 O[1] -pin add|sum0_i I1[8]
load net add|out_exp[2] -attr @rip O[2] -attr @name out_exp[2] -pin add|out_exp_i__8 O[2] -pin add|sum0_i I1[9]
load net add|out_exp[3] -attr @rip O[3] -attr @name out_exp[3] -pin add|out_exp_i__8 O[3] -pin add|sum0_i I1[10]
load net add|out_exp[4] -attr @rip O[4] -attr @name out_exp[4] -pin add|out_exp_i__8 O[4] -pin add|sum0_i I1[11]
load net add|out_exp[5] -attr @rip O[5] -attr @name out_exp[5] -pin add|out_exp_i__8 O[5] -pin add|sum0_i I1[12]
load net add|out_exp[6] -attr @rip O[6] -attr @name out_exp[6] -pin add|out_exp_i__8 O[6] -pin add|sum0_i I1[13]
load net add|out_exp[7] -attr @rip O[7] -attr @name out_exp[7] -pin add|out_exp_i__8 O[7] -pin add|sum0_i I1[14]
load net add|out_exp_i__0_n_0 -attr @rip O[7] -attr @name out_exp_i__0_n_0 -pin add|norm_mant2_i__2 I0[7] -pin add|out_exp0_i__1 I0[7] -pin add|out_exp_i__0 O[7] -pin add|out_exp_i__1 I1[7]
load net add|out_exp_i__0_n_1 -attr @rip O[6] -attr @name out_exp_i__0_n_1 -pin add|norm_mant2_i__2 I0[6] -pin add|out_exp0_i__1 I0[6] -pin add|out_exp_i__0 O[6] -pin add|out_exp_i__1 I1[6]
load net add|out_exp_i__0_n_2 -attr @rip O[5] -attr @name out_exp_i__0_n_2 -pin add|norm_mant2_i__2 I0[5] -pin add|out_exp0_i__1 I0[5] -pin add|out_exp_i__0 O[5] -pin add|out_exp_i__1 I1[5]
load net add|out_exp_i__0_n_3 -attr @rip O[4] -attr @name out_exp_i__0_n_3 -pin add|norm_mant2_i__2 I0[4] -pin add|out_exp0_i__1 I0[4] -pin add|out_exp_i__0 O[4] -pin add|out_exp_i__1 I1[4]
load net add|out_exp_i__0_n_4 -attr @rip O[3] -attr @name out_exp_i__0_n_4 -pin add|norm_mant2_i__2 I0[3] -pin add|out_exp0_i__1 I0[3] -pin add|out_exp_i__0 O[3] -pin add|out_exp_i__1 I1[3]
load net add|out_exp_i__0_n_5 -attr @rip O[2] -attr @name out_exp_i__0_n_5 -pin add|norm_mant2_i__2 I0[2] -pin add|out_exp0_i__1 I0[2] -pin add|out_exp_i__0 O[2] -pin add|out_exp_i__1 I1[2]
load net add|out_exp_i__0_n_6 -attr @rip O[1] -attr @name out_exp_i__0_n_6 -pin add|norm_mant2_i__2 I0[1] -pin add|out_exp0_i__1 I0[1] -pin add|out_exp_i__0 O[1] -pin add|out_exp_i__1 I1[1]
load net add|out_exp_i__0_n_7 -attr @rip O[0] -attr @name out_exp_i__0_n_7 -pin add|norm_mant2_i__2 I0[0] -pin add|out_exp0_i__1 I0[0] -pin add|out_exp_i__0 O[0] -pin add|out_exp_i__1 I1[0]
load net add|out_exp_i__1_n_0 -attr @rip O[7] -attr @name out_exp_i__1_n_0 -pin add|norm_mant2_i__4 I0[7] -pin add|out_exp0_i__2 I0[7] -pin add|out_exp_i__1 O[7] -pin add|out_exp_i__2 I1[7]
load net add|out_exp_i__1_n_1 -attr @rip O[6] -attr @name out_exp_i__1_n_1 -pin add|norm_mant2_i__4 I0[6] -pin add|out_exp0_i__2 I0[6] -pin add|out_exp_i__1 O[6] -pin add|out_exp_i__2 I1[6]
load net add|out_exp_i__1_n_2 -attr @rip O[5] -attr @name out_exp_i__1_n_2 -pin add|norm_mant2_i__4 I0[5] -pin add|out_exp0_i__2 I0[5] -pin add|out_exp_i__1 O[5] -pin add|out_exp_i__2 I1[5]
load net add|out_exp_i__1_n_3 -attr @rip O[4] -attr @name out_exp_i__1_n_3 -pin add|norm_mant2_i__4 I0[4] -pin add|out_exp0_i__2 I0[4] -pin add|out_exp_i__1 O[4] -pin add|out_exp_i__2 I1[4]
load net add|out_exp_i__1_n_4 -attr @rip O[3] -attr @name out_exp_i__1_n_4 -pin add|norm_mant2_i__4 I0[3] -pin add|out_exp0_i__2 I0[3] -pin add|out_exp_i__1 O[3] -pin add|out_exp_i__2 I1[3]
load net add|out_exp_i__1_n_5 -attr @rip O[2] -attr @name out_exp_i__1_n_5 -pin add|norm_mant2_i__4 I0[2] -pin add|out_exp0_i__2 I0[2] -pin add|out_exp_i__1 O[2] -pin add|out_exp_i__2 I1[2]
load net add|out_exp_i__1_n_6 -attr @rip O[1] -attr @name out_exp_i__1_n_6 -pin add|norm_mant2_i__4 I0[1] -pin add|out_exp0_i__2 I0[1] -pin add|out_exp_i__1 O[1] -pin add|out_exp_i__2 I1[1]
load net add|out_exp_i__1_n_7 -attr @rip O[0] -attr @name out_exp_i__1_n_7 -pin add|norm_mant2_i__4 I0[0] -pin add|out_exp0_i__2 I0[0] -pin add|out_exp_i__1 O[0] -pin add|out_exp_i__2 I1[0]
load net add|out_exp_i__2_n_0 -attr @rip O[7] -attr @name out_exp_i__2_n_0 -pin add|norm_mant2_i__6 I0[7] -pin add|out_exp0_i__3 I0[7] -pin add|out_exp_i__2 O[7] -pin add|out_exp_i__3 I1[7]
load net add|out_exp_i__2_n_1 -attr @rip O[6] -attr @name out_exp_i__2_n_1 -pin add|norm_mant2_i__6 I0[6] -pin add|out_exp0_i__3 I0[6] -pin add|out_exp_i__2 O[6] -pin add|out_exp_i__3 I1[6]
load net add|out_exp_i__2_n_2 -attr @rip O[5] -attr @name out_exp_i__2_n_2 -pin add|norm_mant2_i__6 I0[5] -pin add|out_exp0_i__3 I0[5] -pin add|out_exp_i__2 O[5] -pin add|out_exp_i__3 I1[5]
load net add|out_exp_i__2_n_3 -attr @rip O[4] -attr @name out_exp_i__2_n_3 -pin add|norm_mant2_i__6 I0[4] -pin add|out_exp0_i__3 I0[4] -pin add|out_exp_i__2 O[4] -pin add|out_exp_i__3 I1[4]
load net add|out_exp_i__2_n_4 -attr @rip O[3] -attr @name out_exp_i__2_n_4 -pin add|norm_mant2_i__6 I0[3] -pin add|out_exp0_i__3 I0[3] -pin add|out_exp_i__2 O[3] -pin add|out_exp_i__3 I1[3]
load net add|out_exp_i__2_n_5 -attr @rip O[2] -attr @name out_exp_i__2_n_5 -pin add|norm_mant2_i__6 I0[2] -pin add|out_exp0_i__3 I0[2] -pin add|out_exp_i__2 O[2] -pin add|out_exp_i__3 I1[2]
load net add|out_exp_i__2_n_6 -attr @rip O[1] -attr @name out_exp_i__2_n_6 -pin add|norm_mant2_i__6 I0[1] -pin add|out_exp0_i__3 I0[1] -pin add|out_exp_i__2 O[1] -pin add|out_exp_i__3 I1[1]
load net add|out_exp_i__2_n_7 -attr @rip O[0] -attr @name out_exp_i__2_n_7 -pin add|norm_mant2_i__6 I0[0] -pin add|out_exp0_i__3 I0[0] -pin add|out_exp_i__2 O[0] -pin add|out_exp_i__3 I1[0]
load net add|out_exp_i__3_n_0 -attr @rip O[7] -attr @name out_exp_i__3_n_0 -pin add|norm_mant2_i__8 I0[7] -pin add|out_exp0_i__4 I0[7] -pin add|out_exp_i__3 O[7] -pin add|out_exp_i__4 I1[7]
load net add|out_exp_i__3_n_1 -attr @rip O[6] -attr @name out_exp_i__3_n_1 -pin add|norm_mant2_i__8 I0[6] -pin add|out_exp0_i__4 I0[6] -pin add|out_exp_i__3 O[6] -pin add|out_exp_i__4 I1[6]
load net add|out_exp_i__3_n_2 -attr @rip O[5] -attr @name out_exp_i__3_n_2 -pin add|norm_mant2_i__8 I0[5] -pin add|out_exp0_i__4 I0[5] -pin add|out_exp_i__3 O[5] -pin add|out_exp_i__4 I1[5]
load net add|out_exp_i__3_n_3 -attr @rip O[4] -attr @name out_exp_i__3_n_3 -pin add|norm_mant2_i__8 I0[4] -pin add|out_exp0_i__4 I0[4] -pin add|out_exp_i__3 O[4] -pin add|out_exp_i__4 I1[4]
load net add|out_exp_i__3_n_4 -attr @rip O[3] -attr @name out_exp_i__3_n_4 -pin add|norm_mant2_i__8 I0[3] -pin add|out_exp0_i__4 I0[3] -pin add|out_exp_i__3 O[3] -pin add|out_exp_i__4 I1[3]
load net add|out_exp_i__3_n_5 -attr @rip O[2] -attr @name out_exp_i__3_n_5 -pin add|norm_mant2_i__8 I0[2] -pin add|out_exp0_i__4 I0[2] -pin add|out_exp_i__3 O[2] -pin add|out_exp_i__4 I1[2]
load net add|out_exp_i__3_n_6 -attr @rip O[1] -attr @name out_exp_i__3_n_6 -pin add|norm_mant2_i__8 I0[1] -pin add|out_exp0_i__4 I0[1] -pin add|out_exp_i__3 O[1] -pin add|out_exp_i__4 I1[1]
load net add|out_exp_i__3_n_7 -attr @rip O[0] -attr @name out_exp_i__3_n_7 -pin add|norm_mant2_i__8 I0[0] -pin add|out_exp0_i__4 I0[0] -pin add|out_exp_i__3 O[0] -pin add|out_exp_i__4 I1[0]
load net add|out_exp_i__4_n_0 -attr @rip O[7] -attr @name out_exp_i__4_n_0 -pin add|norm_mant2_i__10 I0[7] -pin add|out_exp0_i__5 I0[7] -pin add|out_exp_i__4 O[7] -pin add|out_exp_i__5 I1[7]
load net add|out_exp_i__4_n_1 -attr @rip O[6] -attr @name out_exp_i__4_n_1 -pin add|norm_mant2_i__10 I0[6] -pin add|out_exp0_i__5 I0[6] -pin add|out_exp_i__4 O[6] -pin add|out_exp_i__5 I1[6]
load net add|out_exp_i__4_n_2 -attr @rip O[5] -attr @name out_exp_i__4_n_2 -pin add|norm_mant2_i__10 I0[5] -pin add|out_exp0_i__5 I0[5] -pin add|out_exp_i__4 O[5] -pin add|out_exp_i__5 I1[5]
load net add|out_exp_i__4_n_3 -attr @rip O[4] -attr @name out_exp_i__4_n_3 -pin add|norm_mant2_i__10 I0[4] -pin add|out_exp0_i__5 I0[4] -pin add|out_exp_i__4 O[4] -pin add|out_exp_i__5 I1[4]
load net add|out_exp_i__4_n_4 -attr @rip O[3] -attr @name out_exp_i__4_n_4 -pin add|norm_mant2_i__10 I0[3] -pin add|out_exp0_i__5 I0[3] -pin add|out_exp_i__4 O[3] -pin add|out_exp_i__5 I1[3]
load net add|out_exp_i__4_n_5 -attr @rip O[2] -attr @name out_exp_i__4_n_5 -pin add|norm_mant2_i__10 I0[2] -pin add|out_exp0_i__5 I0[2] -pin add|out_exp_i__4 O[2] -pin add|out_exp_i__5 I1[2]
load net add|out_exp_i__4_n_6 -attr @rip O[1] -attr @name out_exp_i__4_n_6 -pin add|norm_mant2_i__10 I0[1] -pin add|out_exp0_i__5 I0[1] -pin add|out_exp_i__4 O[1] -pin add|out_exp_i__5 I1[1]
load net add|out_exp_i__4_n_7 -attr @rip O[0] -attr @name out_exp_i__4_n_7 -pin add|norm_mant2_i__10 I0[0] -pin add|out_exp0_i__5 I0[0] -pin add|out_exp_i__4 O[0] -pin add|out_exp_i__5 I1[0]
load net add|out_exp_i__5_n_0 -attr @rip O[7] -attr @name out_exp_i__5_n_0 -pin add|norm_mant2_i__12 I0[7] -pin add|out_exp0_i__6 I0[7] -pin add|out_exp_i__5 O[7] -pin add|out_exp_i__6 I1[7]
load net add|out_exp_i__5_n_1 -attr @rip O[6] -attr @name out_exp_i__5_n_1 -pin add|norm_mant2_i__12 I0[6] -pin add|out_exp0_i__6 I0[6] -pin add|out_exp_i__5 O[6] -pin add|out_exp_i__6 I1[6]
load net add|out_exp_i__5_n_2 -attr @rip O[5] -attr @name out_exp_i__5_n_2 -pin add|norm_mant2_i__12 I0[5] -pin add|out_exp0_i__6 I0[5] -pin add|out_exp_i__5 O[5] -pin add|out_exp_i__6 I1[5]
load net add|out_exp_i__5_n_3 -attr @rip O[4] -attr @name out_exp_i__5_n_3 -pin add|norm_mant2_i__12 I0[4] -pin add|out_exp0_i__6 I0[4] -pin add|out_exp_i__5 O[4] -pin add|out_exp_i__6 I1[4]
load net add|out_exp_i__5_n_4 -attr @rip O[3] -attr @name out_exp_i__5_n_4 -pin add|norm_mant2_i__12 I0[3] -pin add|out_exp0_i__6 I0[3] -pin add|out_exp_i__5 O[3] -pin add|out_exp_i__6 I1[3]
load net add|out_exp_i__5_n_5 -attr @rip O[2] -attr @name out_exp_i__5_n_5 -pin add|norm_mant2_i__12 I0[2] -pin add|out_exp0_i__6 I0[2] -pin add|out_exp_i__5 O[2] -pin add|out_exp_i__6 I1[2]
load net add|out_exp_i__5_n_6 -attr @rip O[1] -attr @name out_exp_i__5_n_6 -pin add|norm_mant2_i__12 I0[1] -pin add|out_exp0_i__6 I0[1] -pin add|out_exp_i__5 O[1] -pin add|out_exp_i__6 I1[1]
load net add|out_exp_i__5_n_7 -attr @rip O[0] -attr @name out_exp_i__5_n_7 -pin add|norm_mant2_i__12 I0[0] -pin add|out_exp0_i__6 I0[0] -pin add|out_exp_i__5 O[0] -pin add|out_exp_i__6 I1[0]
load net add|out_exp_i__6_n_0 -attr @rip O[7] -attr @name out_exp_i__6_n_0 -pin add|norm_mant2_i__14 I0[7] -pin add|out_exp0_i__7 I0[7] -pin add|out_exp_i__6 O[7] -pin add|out_exp_i__7 I1[7]
load net add|out_exp_i__6_n_1 -attr @rip O[6] -attr @name out_exp_i__6_n_1 -pin add|norm_mant2_i__14 I0[6] -pin add|out_exp0_i__7 I0[6] -pin add|out_exp_i__6 O[6] -pin add|out_exp_i__7 I1[6]
load net add|out_exp_i__6_n_2 -attr @rip O[5] -attr @name out_exp_i__6_n_2 -pin add|norm_mant2_i__14 I0[5] -pin add|out_exp0_i__7 I0[5] -pin add|out_exp_i__6 O[5] -pin add|out_exp_i__7 I1[5]
load net add|out_exp_i__6_n_3 -attr @rip O[4] -attr @name out_exp_i__6_n_3 -pin add|norm_mant2_i__14 I0[4] -pin add|out_exp0_i__7 I0[4] -pin add|out_exp_i__6 O[4] -pin add|out_exp_i__7 I1[4]
load net add|out_exp_i__6_n_4 -attr @rip O[3] -attr @name out_exp_i__6_n_4 -pin add|norm_mant2_i__14 I0[3] -pin add|out_exp0_i__7 I0[3] -pin add|out_exp_i__6 O[3] -pin add|out_exp_i__7 I1[3]
load net add|out_exp_i__6_n_5 -attr @rip O[2] -attr @name out_exp_i__6_n_5 -pin add|norm_mant2_i__14 I0[2] -pin add|out_exp0_i__7 I0[2] -pin add|out_exp_i__6 O[2] -pin add|out_exp_i__7 I1[2]
load net add|out_exp_i__6_n_6 -attr @rip O[1] -attr @name out_exp_i__6_n_6 -pin add|norm_mant2_i__14 I0[1] -pin add|out_exp0_i__7 I0[1] -pin add|out_exp_i__6 O[1] -pin add|out_exp_i__7 I1[1]
load net add|out_exp_i__6_n_7 -attr @rip O[0] -attr @name out_exp_i__6_n_7 -pin add|norm_mant2_i__14 I0[0] -pin add|out_exp0_i__7 I0[0] -pin add|out_exp_i__6 O[0] -pin add|out_exp_i__7 I1[0]
load net add|out_exp_i__7_n_0 -attr @rip O[7] -attr @name out_exp_i__7_n_0 -pin add|out_exp_i__7 O[7] -pin add|out_exp_i__8 I1[7]
load net add|out_exp_i__7_n_1 -attr @rip O[6] -attr @name out_exp_i__7_n_1 -pin add|out_exp_i__7 O[6] -pin add|out_exp_i__8 I1[6]
load net add|out_exp_i__7_n_2 -attr @rip O[5] -attr @name out_exp_i__7_n_2 -pin add|out_exp_i__7 O[5] -pin add|out_exp_i__8 I1[5]
load net add|out_exp_i__7_n_3 -attr @rip O[4] -attr @name out_exp_i__7_n_3 -pin add|out_exp_i__7 O[4] -pin add|out_exp_i__8 I1[4]
load net add|out_exp_i__7_n_4 -attr @rip O[3] -attr @name out_exp_i__7_n_4 -pin add|out_exp_i__7 O[3] -pin add|out_exp_i__8 I1[3]
load net add|out_exp_i__7_n_5 -attr @rip O[2] -attr @name out_exp_i__7_n_5 -pin add|out_exp_i__7 O[2] -pin add|out_exp_i__8 I1[2]
load net add|out_exp_i__7_n_6 -attr @rip O[1] -attr @name out_exp_i__7_n_6 -pin add|out_exp_i__7 O[1] -pin add|out_exp_i__8 I1[1]
load net add|out_exp_i__7_n_7 -attr @rip O[0] -attr @name out_exp_i__7_n_7 -pin add|out_exp_i__7 O[0] -pin add|out_exp_i__8 I1[0]
load net add|out_exp_i_n_0 -attr @rip O[7] -attr @name out_exp_i_n_0 -pin add|norm_mant2_i__0 I0[7] -pin add|out_exp0_i__0 I0[7] -pin add|out_exp_i O[7] -pin add|out_exp_i__0 I1[7]
load net add|out_exp_i_n_1 -attr @rip O[6] -attr @name out_exp_i_n_1 -pin add|norm_mant2_i__0 I0[6] -pin add|out_exp0_i__0 I0[6] -pin add|out_exp_i O[6] -pin add|out_exp_i__0 I1[6]
load net add|out_exp_i_n_2 -attr @rip O[5] -attr @name out_exp_i_n_2 -pin add|norm_mant2_i__0 I0[5] -pin add|out_exp0_i__0 I0[5] -pin add|out_exp_i O[5] -pin add|out_exp_i__0 I1[5]
load net add|out_exp_i_n_3 -attr @rip O[4] -attr @name out_exp_i_n_3 -pin add|norm_mant2_i__0 I0[4] -pin add|out_exp0_i__0 I0[4] -pin add|out_exp_i O[4] -pin add|out_exp_i__0 I1[4]
load net add|out_exp_i_n_4 -attr @rip O[3] -attr @name out_exp_i_n_4 -pin add|norm_mant2_i__0 I0[3] -pin add|out_exp0_i__0 I0[3] -pin add|out_exp_i O[3] -pin add|out_exp_i__0 I1[3]
load net add|out_exp_i_n_5 -attr @rip O[2] -attr @name out_exp_i_n_5 -pin add|norm_mant2_i__0 I0[2] -pin add|out_exp0_i__0 I0[2] -pin add|out_exp_i O[2] -pin add|out_exp_i__0 I1[2]
load net add|out_exp_i_n_6 -attr @rip O[1] -attr @name out_exp_i_n_6 -pin add|norm_mant2_i__0 I0[1] -pin add|out_exp0_i__0 I0[1] -pin add|out_exp_i O[1] -pin add|out_exp_i__0 I1[1]
load net add|out_exp_i_n_7 -attr @rip O[0] -attr @name out_exp_i_n_7 -pin add|norm_mant2_i__0 I0[0] -pin add|out_exp0_i__0 I0[0] -pin add|out_exp_i O[0] -pin add|out_exp_i__0 I1[0]
load net add|out_mant[0] -attr @rip O[0] -attr @name out_mant[0] -pin add|out_mant_i O[0] -pin add|sum0_i I1[0]
load net add|out_mant[1] -attr @rip O[1] -attr @name out_mant[1] -pin add|out_mant_i O[1] -pin add|sum0_i I1[1]
load net add|out_mant[2] -attr @rip O[2] -attr @name out_mant[2] -pin add|out_mant_i O[2] -pin add|sum0_i I1[2]
load net add|out_mant[3] -attr @rip O[3] -attr @name out_mant[3] -pin add|out_mant_i O[3] -pin add|sum0_i I1[3]
load net add|out_mant[4] -attr @rip O[4] -attr @name out_mant[4] -pin add|out_mant_i O[4] -pin add|sum0_i I1[4]
load net add|out_mant[5] -attr @rip O[5] -attr @name out_mant[5] -pin add|out_mant_i O[5] -pin add|sum0_i I1[5]
load net add|out_mant[6] -attr @rip O[6] -attr @name out_mant[6] -pin add|out_mant_i O[6] -pin add|sum0_i I1[6]
load net add|p_0_in[0] -attr @rip O[0] -attr @name p_0_in[0] -pin add|mant_sum_i__0 O[0] -pin add|norm_mant0_i I0[0] -pin add|norm_mant_i I1[0]
load net add|p_0_in[1] -attr @rip O[1] -attr @name p_0_in[1] -pin add|mant_sum_i__0 O[1] -pin add|norm_mant0_i I0[1] -pin add|norm_mant_i I1[1]
load net add|p_0_in[2] -attr @rip O[2] -attr @name p_0_in[2] -pin add|mant_sum_i__0 O[2] -pin add|norm_mant0_i I0[2] -pin add|norm_mant_i I1[2]
load net add|p_0_in[3] -attr @rip O[3] -attr @name p_0_in[3] -pin add|mant_sum_i__0 O[3] -pin add|norm_mant0_i I0[3] -pin add|norm_mant_i I1[3]
load net add|p_0_in[4] -attr @rip O[4] -attr @name p_0_in[4] -pin add|mant_sum_i__0 O[4] -pin add|norm_mant0_i I0[4] -pin add|norm_mant_i I1[4]
load net add|p_0_in[5] -attr @rip O[5] -attr @name p_0_in[5] -pin add|mant_sum_i__0 O[5] -pin add|norm_mant0_i I0[5] -pin add|norm_mant_i I1[5]
load net add|p_0_in[6] -attr @rip O[6] -attr @name p_0_in[6] -pin add|mant_sum_i__0 O[6] -pin add|norm_mant0_i I0[6] -pin add|norm_mant_i I1[6]
load net add|p_0_in[7] -attr @rip O[7] -attr @name p_0_in[7] -pin add|mant_sum_i__0 O[7] -pin add|norm_mant0_i I0[7] -pin add|norm_mant_i I1[7]
load net add|p_0_in[8] -attr @rip O[8] -attr @name p_0_in[8] -pin add|mant_sum_i__0 O[8] -pin add|norm_mant0_i I0[8] -pin add|norm_mant_i I1[8]
load net add|result_exp_init[0] -attr @rip O[0] -attr @name result_exp_init[0] -pin add|out_exp0_i I0[0] -pin add|out_exp_i I1[0] -pin add|result_exp_init_i O[0]
load net add|result_exp_init[1] -attr @rip O[1] -attr @name result_exp_init[1] -pin add|out_exp0_i I0[1] -pin add|out_exp_i I1[1] -pin add|result_exp_init_i O[1]
load net add|result_exp_init[2] -attr @rip O[2] -attr @name result_exp_init[2] -pin add|out_exp0_i I0[2] -pin add|out_exp_i I1[2] -pin add|result_exp_init_i O[2]
load net add|result_exp_init[3] -attr @rip O[3] -attr @name result_exp_init[3] -pin add|out_exp0_i I0[3] -pin add|out_exp_i I1[3] -pin add|result_exp_init_i O[3]
load net add|result_exp_init[4] -attr @rip O[4] -attr @name result_exp_init[4] -pin add|out_exp0_i I0[4] -pin add|out_exp_i I1[4] -pin add|result_exp_init_i O[4]
load net add|result_exp_init[5] -attr @rip O[5] -attr @name result_exp_init[5] -pin add|out_exp0_i I0[5] -pin add|out_exp_i I1[5] -pin add|result_exp_init_i O[5]
load net add|result_exp_init[6] -attr @rip O[6] -attr @name result_exp_init[6] -pin add|out_exp0_i I0[6] -pin add|out_exp_i I1[6] -pin add|result_exp_init_i O[6]
load net add|result_exp_init[7] -attr @rip O[7] -attr @name result_exp_init[7] -pin add|out_exp0_i I0[7] -pin add|out_exp_i I1[7] -pin add|result_exp_init_i O[7]
load net add|result_sign -attr @rip 15 -attr @name result_sign -pin add|result_sign_i__1 O -pin add|result_sign_reg Q -pin add|sum0_i I1[15]
netloc add|result_sign 1 35 1 10090 338n
load net add|result_sign_i__0_n_0 -attr @name result_sign_i__0_n_0 -pin add|result_sign_i__0 O -pin add|result_sign_i__1 I1
netloc add|result_sign_i__0_n_0 1 34 1 N 598
load net add|result_sign_i_n_0 -attr @name result_sign_i_n_0 -pin add|result_sign_i O -pin add|result_sign_reg G
netloc add|result_sign_i_n_0 1 34 1 NJ 478
load net add|sum0_i_n_0 -attr @rip O[15] -attr @name sum0_i_n_0 -pin add|sum0_i O[15] -pin add|sum_i I1[15]
load net add|sum0_i_n_1 -attr @rip O[14] -attr @name sum0_i_n_1 -pin add|sum0_i O[14] -pin add|sum_i I1[14]
load net add|sum0_i_n_10 -attr @rip O[5] -attr @name sum0_i_n_10 -pin add|sum0_i O[5] -pin add|sum_i I1[5]
load net add|sum0_i_n_11 -attr @rip O[4] -attr @name sum0_i_n_11 -pin add|sum0_i O[4] -pin add|sum_i I1[4]
load net add|sum0_i_n_12 -attr @rip O[3] -attr @name sum0_i_n_12 -pin add|sum0_i O[3] -pin add|sum_i I1[3]
load net add|sum0_i_n_13 -attr @rip O[2] -attr @name sum0_i_n_13 -pin add|sum0_i O[2] -pin add|sum_i I1[2]
load net add|sum0_i_n_14 -attr @rip O[1] -attr @name sum0_i_n_14 -pin add|sum0_i O[1] -pin add|sum_i I1[1]
load net add|sum0_i_n_15 -attr @rip O[0] -attr @name sum0_i_n_15 -pin add|sum0_i O[0] -pin add|sum_i I1[0]
load net add|sum0_i_n_2 -attr @rip O[13] -attr @name sum0_i_n_2 -pin add|sum0_i O[13] -pin add|sum_i I1[13]
load net add|sum0_i_n_3 -attr @rip O[12] -attr @name sum0_i_n_3 -pin add|sum0_i O[12] -pin add|sum_i I1[12]
load net add|sum0_i_n_4 -attr @rip O[11] -attr @name sum0_i_n_4 -pin add|sum0_i O[11] -pin add|sum_i I1[11]
load net add|sum0_i_n_5 -attr @rip O[10] -attr @name sum0_i_n_5 -pin add|sum0_i O[10] -pin add|sum_i I1[10]
load net add|sum0_i_n_6 -attr @rip O[9] -attr @name sum0_i_n_6 -pin add|sum0_i O[9] -pin add|sum_i I1[9]
load net add|sum0_i_n_7 -attr @rip O[8] -attr @name sum0_i_n_7 -pin add|sum0_i O[8] -pin add|sum_i I1[8]
load net add|sum0_i_n_8 -attr @rip O[7] -attr @name sum0_i_n_8 -pin add|sum0_i O[7] -pin add|sum_i I1[7]
load net add|sum0_i_n_9 -attr @rip O[6] -attr @name sum0_i_n_9 -pin add|sum0_i O[6] -pin add|sum_i I1[6]
load net add|sum[0] -attr @rip O[0] -attr @name sum[0] -hierPin add sum[0] -pin add|sum_i O[0]
load net add|sum[10] -attr @rip O[10] -attr @name sum[10] -hierPin add sum[10] -pin add|sum_i O[10]
load net add|sum[11] -attr @rip O[11] -attr @name sum[11] -hierPin add sum[11] -pin add|sum_i O[11]
load net add|sum[12] -attr @rip O[12] -attr @name sum[12] -hierPin add sum[12] -pin add|sum_i O[12]
load net add|sum[13] -attr @rip O[13] -attr @name sum[13] -hierPin add sum[13] -pin add|sum_i O[13]
load net add|sum[14] -attr @rip O[14] -attr @name sum[14] -hierPin add sum[14] -pin add|sum_i O[14]
load net add|sum[15] -attr @rip O[15] -attr @name sum[15] -hierPin add sum[15] -pin add|sum_i O[15]
load net add|sum[1] -attr @rip O[1] -attr @name sum[1] -hierPin add sum[1] -pin add|sum_i O[1]
load net add|sum[2] -attr @rip O[2] -attr @name sum[2] -hierPin add sum[2] -pin add|sum_i O[2]
load net add|sum[3] -attr @rip O[3] -attr @name sum[3] -hierPin add sum[3] -pin add|sum_i O[3]
load net add|sum[4] -attr @rip O[4] -attr @name sum[4] -hierPin add sum[4] -pin add|sum_i O[4]
load net add|sum[5] -attr @rip O[5] -attr @name sum[5] -hierPin add sum[5] -pin add|sum_i O[5]
load net add|sum[6] -attr @rip O[6] -attr @name sum[6] -hierPin add sum[6] -pin add|sum_i O[6]
load net add|sum[7] -attr @rip O[7] -attr @name sum[7] -hierPin add sum[7] -pin add|sum_i O[7]
load net add|sum[8] -attr @rip O[8] -attr @name sum[8] -hierPin add sum[8] -pin add|sum_i O[8]
load net add|sum[9] -attr @rip O[9] -attr @name sum[9] -hierPin add sum[9] -pin add|sum_i O[9]
load netBundle @add|a 16 add|a[15] add|a[14] add|a[13] add|a[12] add|a[11] add|a[10] add|a[9] add|a[8] add|a[7] add|a[6] add|a[5] add|a[4] add|a[3] add|a[2] add|a[1] add|a[0] -autobundled
netbloc @add|a 1 0 36 90 708 330J 778N 690 628 NJ 628 1270J 658 1580 638 1920 628 2190J 608 2430J 628 NJ 628 NJ 628 NJ 628 3510J 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 NJ 748 7800J 648 NJ 648 NJ 648 NJ 648 NJ 648 9310 678 9690 288 10070J
load netBundle @add|b 16 add|b[15] add|b[14] add|b[13] add|b[12] add|b[11] add|b[10] add|b[9] add|b[8] add|b[7] add|b[6] add|b[5] add|b[4] add|b[3] add|b[2] add|b[1] add|b[0] -autobundled
netbloc @add|b 1 0 37 110 428 350J 498N 710 558 NJ 558 NJ 558 1520 488 1900 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 NJ 298 9020J 378 9350 288 9670J 268 NJ 268 NJ
load netBundle @add|a_aligned0 9 add|a_aligned0[8] add|a_aligned0[7] add|a_aligned0[6] add|a_aligned0[5] add|a_aligned0[4] add|a_aligned0[3] add|a_aligned0[2] add|a_aligned0[1] add|a_aligned0[0] -autobundled
netbloc @add|a_aligned0 1 3 1 1000 698n
load netBundle @add|a_aligned 9 add|a_aligned[8] add|a_aligned[7] add|a_aligned[6] add|a_aligned[5] add|a_aligned[4] add|a_aligned[3] add|a_aligned[2] add|a_aligned[1] add|a_aligned[0] -autobundled
netbloc @add|a_aligned 1 4 2 1250 678 NJ
load netBundle @add|a_mant_ext 9 add|a_mant_ext[8] add|a_mant_ext[7] add|a_mant_ext[6] add|a_mant_ext[5] add|a_mant_ext[4] add|a_mant_ext[3] add|a_mant_ext[2] add|a_mant_ext[1] add|a_mant_ext[0] -autobundled
netbloc @add|a_mant_ext 1 2 2 750 648 980J
load netBundle @add|b_aligned0 9 add|b_aligned0[8] add|b_aligned0[7] add|b_aligned0[6] add|b_aligned0[5] add|b_aligned0[4] add|b_aligned0[3] add|b_aligned0[2] add|b_aligned0[1] add|b_aligned0[0] -autobundled
netbloc @add|b_aligned0 1 3 1 1000 408n
load netBundle @add|b_aligned 9 add|b_aligned[8] add|b_aligned[7] add|b_aligned[6] add|b_aligned[5] add|b_aligned[4] add|b_aligned[3] add|b_aligned[2] add|b_aligned[1] add|b_aligned[0] -autobundled
netbloc @add|b_aligned 1 4 2 1290 698 NJ
load netBundle @add|b_mant_ext 9 add|b_mant_ext[8] add|b_mant_ext[7] add|b_mant_ext[6] add|b_mant_ext[5] add|b_mant_ext[4] add|b_mant_ext[3] add|b_mant_ext[2] add|b_mant_ext[1] add|b_mant_ext[0] -autobundled
netbloc @add|b_mant_ext 1 2 2 710 458 980
load netBundle @add|exp_diff0 8 add|exp_diff0[7] add|exp_diff0[6] add|exp_diff0[5] add|exp_diff0[4] add|exp_diff0[3] add|exp_diff0[2] add|exp_diff0[1] add|exp_diff0[0] -autobundled
netbloc @add|exp_diff0 1 1 1 N 568
load netBundle @add|exp_diff0_i__0_n_ 8 add|exp_diff0_i__0_n_0 add|exp_diff0_i__0_n_1 add|exp_diff0_i__0_n_2 add|exp_diff0_i__0_n_3 add|exp_diff0_i__0_n_4 add|exp_diff0_i__0_n_5 add|exp_diff0_i__0_n_6 add|exp_diff0_i__0_n_7 -autobundled
netbloc @add|exp_diff0_i__0_n_ 1 1 1 350 588n
load netBundle @add|exp_diff 8 add|exp_diff[7] add|exp_diff[6] add|exp_diff[5] add|exp_diff[4] add|exp_diff[3] add|exp_diff[2] add|exp_diff[1] add|exp_diff[0] -autobundled
netbloc @add|exp_diff 1 2 1 730 428n
load netBundle @add|mant_sum0 10 add|mant_sum0[9] add|mant_sum0[8] add|mant_sum0[7] add|mant_sum0[6] add|mant_sum0[5] add|mant_sum0[4] add|mant_sum0[3] add|mant_sum0[2] add|mant_sum0[1] add|mant_sum0[0] -autobundled
netbloc @add|mant_sum0 1 6 1 1880 438n
load netBundle @add|mant_sum0_i__0_n_ 10 add|mant_sum0_i__0_n_0 add|mant_sum0_i__0_n_1 add|mant_sum0_i__0_n_2 add|mant_sum0_i__0_n_3 add|mant_sum0_i__0_n_4 add|mant_sum0_i__0_n_5 add|mant_sum0_i__0_n_6 add|mant_sum0_i__0_n_7 add|mant_sum0_i__0_n_8 add|mant_sum0_i__0_n_9 -autobundled
netbloc @add|mant_sum0_i__0_n_ 1 5 1 1540 418n
load netBundle @add|mant_sum0_i__1_n_ 10 add|mant_sum0_i__1_n_0 add|mant_sum0_i__1_n_1 add|mant_sum0_i__1_n_2 add|mant_sum0_i__1_n_3 add|mant_sum0_i__1_n_4 add|mant_sum0_i__1_n_5 add|mant_sum0_i__1_n_6 add|mant_sum0_i__1_n_7 add|mant_sum0_i__1_n_8 add|mant_sum0_i__1_n_9 -autobundled
netbloc @add|mant_sum0_i__1_n_ 1 5 1 1560 508n
load netBundle @add|mant_sum_i_n_ 10 add|mant_sum_i_n_0 add|mant_sum_i_n_1 add|mant_sum_i_n_2 add|mant_sum_i_n_3 add|mant_sum_i_n_4 add|mant_sum_i_n_5 add|mant_sum_i_n_6 add|mant_sum_i_n_7 add|mant_sum_i_n_8 add|mant_sum_i_n_9 -autobundled
netbloc @add|mant_sum_i_n_ 1 6 1 1920 458n
load netBundle @add|p_0_in 10 add|mant_sum_i__0_n_0 add|p_0_in[8] add|p_0_in[7] add|p_0_in[6] add|p_0_in[5] add|p_0_in[4] add|p_0_in[3] add|p_0_in[2] add|p_0_in[1] add|p_0_in[0] -autobundled
netbloc @add|p_0_in 1 7 2 2210 468 2450
load netBundle @add|norm_mant0_i_n_ 9 add|norm_mant0_i_n_0 add|norm_mant0_i_n_1 add|norm_mant0_i_n_2 add|norm_mant0_i_n_3 add|norm_mant0_i_n_4 add|norm_mant0_i_n_5 add|norm_mant0_i_n_6 add|norm_mant0_i_n_7 add|norm_mant0_i_n_8 -autobundled
netbloc @add|norm_mant0_i_n_ 1 8 1 N 418
load netBundle @add|norm_mant0 9 add|norm_mant0[8] add|norm_mant0[7] add|norm_mant0[6] add|norm_mant0[5] add|norm_mant0[4] add|norm_mant0[3] add|norm_mant0[2] add|norm_mant0[1] add|norm_mant0[0] -autobundled
netbloc @add|norm_mant0 1 11 1 3240J 368n
load netBundle @add|norm_mant0_i__1_n_ 9 add|norm_mant0_i__1_n_0 add|norm_mant0_i__1_n_1 add|norm_mant0_i__1_n_2 add|norm_mant0_i__1_n_3 add|norm_mant0_i__1_n_4 add|norm_mant0_i__1_n_5 add|norm_mant0_i__1_n_6 add|norm_mant0_i__1_n_7 add|norm_mant0_i__1_n_8 -autobundled
netbloc @add|norm_mant0_i__1_n_ 1 14 1 NJ 398
load netBundle @add|norm_mant0_i__2_n_ 9 add|norm_mant0_i__2_n_0 add|norm_mant0_i__2_n_1 add|norm_mant0_i__2_n_2 add|norm_mant0_i__2_n_3 add|norm_mant0_i__2_n_4 add|norm_mant0_i__2_n_5 add|norm_mant0_i__2_n_6 add|norm_mant0_i__2_n_7 add|norm_mant0_i__2_n_8 -autobundled
netbloc @add|norm_mant0_i__2_n_ 1 17 1 NJ 398
load netBundle @add|norm_mant0_i__3_n_ 9 add|norm_mant0_i__3_n_0 add|norm_mant0_i__3_n_1 add|norm_mant0_i__3_n_2 add|norm_mant0_i__3_n_3 add|norm_mant0_i__3_n_4 add|norm_mant0_i__3_n_5 add|norm_mant0_i__3_n_6 add|norm_mant0_i__3_n_7 add|norm_mant0_i__3_n_8 -autobundled
netbloc @add|norm_mant0_i__3_n_ 1 20 1 NJ 398
load netBundle @add|norm_mant0_i__4_n_ 9 add|norm_mant0_i__4_n_0 add|norm_mant0_i__4_n_1 add|norm_mant0_i__4_n_2 add|norm_mant0_i__4_n_3 add|norm_mant0_i__4_n_4 add|norm_mant0_i__4_n_5 add|norm_mant0_i__4_n_6 add|norm_mant0_i__4_n_7 add|norm_mant0_i__4_n_8 -autobundled
netbloc @add|norm_mant0_i__4_n_ 1 23 1 NJ 398
load netBundle @add|norm_mant0_i__5_n_ 9 add|norm_mant0_i__5_n_0 add|norm_mant0_i__5_n_1 add|norm_mant0_i__5_n_2 add|norm_mant0_i__5_n_3 add|norm_mant0_i__5_n_4 add|norm_mant0_i__5_n_5 add|norm_mant0_i__5_n_6 add|norm_mant0_i__5_n_7 add|norm_mant0_i__5_n_8 -autobundled
netbloc @add|norm_mant0_i__5_n_ 1 26 1 NJ 398
load netBundle @add|norm_mant0_i__6_n_ 9 add|norm_mant0_i__6_n_0 add|norm_mant0_i__6_n_1 add|norm_mant0_i__6_n_2 add|norm_mant0_i__6_n_3 add|norm_mant0_i__6_n_4 add|norm_mant0_i__6_n_5 add|norm_mant0_i__6_n_6 add|norm_mant0_i__6_n_7 add|norm_mant0_i__6_n_8 -autobundled
netbloc @add|norm_mant0_i__6_n_ 1 29 1 NJ 448
load netBundle @add|norm_mant0_i__7_n_ 9 add|norm_mant0_i__7_n_0 add|norm_mant0_i__7_n_1 add|norm_mant0_i__7_n_2 add|norm_mant0_i__7_n_3 add|norm_mant0_i__7_n_4 add|norm_mant0_i__7_n_5 add|norm_mant0_i__7_n_6 add|norm_mant0_i__7_n_7 add|norm_mant0_i__7_n_8 -autobundled
netbloc @add|norm_mant0_i__7_n_ 1 32 1 8940J 448n
load netBundle @add|norm_mant 9 add|norm_mant[8] add|norm_mant[7] add|norm_mant[6] add|norm_mant[5] add|norm_mant[4] add|norm_mant[3] add|norm_mant[2] add|norm_mant[1] add|norm_mant[0] -autobundled
netbloc @add|norm_mant 1 9 3 2740 388 3000 418 NJ
load netBundle @add|norm_mant_i__0_n_ 9 add|norm_mant_i__0_n_0 add|norm_mant_i__0_n_1 add|norm_mant_i__0_n_2 add|norm_mant_i__0_n_3 add|norm_mant_i__0_n_4 add|norm_mant_i__0_n_5 add|norm_mant_i__0_n_6 add|norm_mant_i__0_n_7 add|norm_mant_i__0_n_8 -autobundled
netbloc @add|norm_mant_i__0_n_ 1 12 3 3550 508 3810 448 4050J
load netBundle @add|norm_mant_i__1_n_ 9 add|norm_mant_i__1_n_0 add|norm_mant_i__1_n_1 add|norm_mant_i__1_n_2 add|norm_mant_i__1_n_3 add|norm_mant_i__1_n_4 add|norm_mant_i__1_n_5 add|norm_mant_i__1_n_6 add|norm_mant_i__1_n_7 add|norm_mant_i__1_n_8 -autobundled
netbloc @add|norm_mant_i__1_n_ 1 15 3 4340 508 4600 448 4840J
load netBundle @add|norm_mant_i__2_n_ 9 add|norm_mant_i__2_n_0 add|norm_mant_i__2_n_1 add|norm_mant_i__2_n_2 add|norm_mant_i__2_n_3 add|norm_mant_i__2_n_4 add|norm_mant_i__2_n_5 add|norm_mant_i__2_n_6 add|norm_mant_i__2_n_7 add|norm_mant_i__2_n_8 -autobundled
netbloc @add|norm_mant_i__2_n_ 1 18 3 5130 508 5390 448 5630J
load netBundle @add|norm_mant_i__3_n_ 9 add|norm_mant_i__3_n_0 add|norm_mant_i__3_n_1 add|norm_mant_i__3_n_2 add|norm_mant_i__3_n_3 add|norm_mant_i__3_n_4 add|norm_mant_i__3_n_5 add|norm_mant_i__3_n_6 add|norm_mant_i__3_n_7 add|norm_mant_i__3_n_8 -autobundled
netbloc @add|norm_mant_i__3_n_ 1 21 3 5920 508 6180 448 6420J
load netBundle @add|norm_mant_i__4_n_ 9 add|norm_mant_i__4_n_0 add|norm_mant_i__4_n_1 add|norm_mant_i__4_n_2 add|norm_mant_i__4_n_3 add|norm_mant_i__4_n_4 add|norm_mant_i__4_n_5 add|norm_mant_i__4_n_6 add|norm_mant_i__4_n_7 add|norm_mant_i__4_n_8 -autobundled
netbloc @add|norm_mant_i__4_n_ 1 24 3 6710 508 6980 448 7220J
load netBundle @add|norm_mant_i__5_n_ 9 add|norm_mant_i__5_n_0 add|norm_mant_i__5_n_1 add|norm_mant_i__5_n_2 add|norm_mant_i__5_n_3 add|norm_mant_i__5_n_4 add|norm_mant_i__5_n_5 add|norm_mant_i__5_n_6 add|norm_mant_i__5_n_7 add|norm_mant_i__5_n_8 -autobundled
netbloc @add|norm_mant_i__5_n_ 1 27 3 7510 508 7820 498 8060J
load netBundle @add|norm_mant_i__6_n_ 9 add|norm_mant_i__6_n_0 add|norm_mant_i__6_n_1 add|norm_mant_i__6_n_2 add|norm_mant_i__6_n_3 add|norm_mant_i__6_n_4 add|norm_mant_i__6_n_5 add|norm_mant_i__6_n_6 add|norm_mant_i__6_n_7 add|norm_mant_i__6_n_8 -autobundled
netbloc @add|norm_mant_i__6_n_ 1 30 3 8350 398 8640 518 8960J
load netBundle @add|norm_mant0_out 9 add|norm_mant0_out[8] add|norm_mant0_out[7] add|norm_mant0_out[6] add|norm_mant0_out[5] add|norm_mant0_out[4] add|norm_mant0_out[3] add|norm_mant0_out[2] add|norm_mant0_out[1] add|norm_mant0_out[0] -autobundled
netbloc @add|norm_mant0_out 1 33 2 9370 428 9650
load netBundle @add|out_exp0 8 add|out_exp0[7] add|out_exp0[6] add|out_exp0[5] add|out_exp0[4] add|out_exp0[3] add|out_exp0[2] add|out_exp0[1] add|out_exp0[0] -autobundled
netbloc @add|out_exp0 1 8 1 N 678
load netBundle @add|out_exp0_i__0_n_ 8 add|out_exp0_i__0_n_0 add|out_exp0_i__0_n_1 add|out_exp0_i__0_n_2 add|out_exp0_i__0_n_3 add|out_exp0_i__0_n_4 add|out_exp0_i__0_n_5 add|out_exp0_i__0_n_6 add|out_exp0_i__0_n_7 -autobundled
netbloc @add|out_exp0_i__0_n_ 1 11 1 NJ 698
load netBundle @add|out_exp0_i__1_n_ 8 add|out_exp0_i__1_n_0 add|out_exp0_i__1_n_1 add|out_exp0_i__1_n_2 add|out_exp0_i__1_n_3 add|out_exp0_i__1_n_4 add|out_exp0_i__1_n_5 add|out_exp0_i__1_n_6 add|out_exp0_i__1_n_7 -autobundled
netbloc @add|out_exp0_i__1_n_ 1 14 1 NJ 818
load netBundle @add|out_exp0_i__2_n_ 8 add|out_exp0_i__2_n_0 add|out_exp0_i__2_n_1 add|out_exp0_i__2_n_2 add|out_exp0_i__2_n_3 add|out_exp0_i__2_n_4 add|out_exp0_i__2_n_5 add|out_exp0_i__2_n_6 add|out_exp0_i__2_n_7 -autobundled
netbloc @add|out_exp0_i__2_n_ 1 17 1 NJ 818
load netBundle @add|out_exp0_i__3_n_ 8 add|out_exp0_i__3_n_0 add|out_exp0_i__3_n_1 add|out_exp0_i__3_n_2 add|out_exp0_i__3_n_3 add|out_exp0_i__3_n_4 add|out_exp0_i__3_n_5 add|out_exp0_i__3_n_6 add|out_exp0_i__3_n_7 -autobundled
netbloc @add|out_exp0_i__3_n_ 1 20 1 NJ 818
load netBundle @add|out_exp0_i__4_n_ 8 add|out_exp0_i__4_n_0 add|out_exp0_i__4_n_1 add|out_exp0_i__4_n_2 add|out_exp0_i__4_n_3 add|out_exp0_i__4_n_4 add|out_exp0_i__4_n_5 add|out_exp0_i__4_n_6 add|out_exp0_i__4_n_7 -autobundled
netbloc @add|out_exp0_i__4_n_ 1 23 1 NJ 818
load netBundle @add|out_exp0_i__5_n_ 8 add|out_exp0_i__5_n_0 add|out_exp0_i__5_n_1 add|out_exp0_i__5_n_2 add|out_exp0_i__5_n_3 add|out_exp0_i__5_n_4 add|out_exp0_i__5_n_5 add|out_exp0_i__5_n_6 add|out_exp0_i__5_n_7 -autobundled
netbloc @add|out_exp0_i__5_n_ 1 26 1 NJ 818
load netBundle @add|out_exp0_i__6_n_ 8 add|out_exp0_i__6_n_0 add|out_exp0_i__6_n_1 add|out_exp0_i__6_n_2 add|out_exp0_i__6_n_3 add|out_exp0_i__6_n_4 add|out_exp0_i__6_n_5 add|out_exp0_i__6_n_6 add|out_exp0_i__6_n_7 -autobundled
netbloc @add|out_exp0_i__6_n_ 1 29 1 NJ 718
load netBundle @add|out_exp0_i__7_n_ 8 add|out_exp0_i__7_n_0 add|out_exp0_i__7_n_1 add|out_exp0_i__7_n_2 add|out_exp0_i__7_n_3 add|out_exp0_i__7_n_4 add|out_exp0_i__7_n_5 add|out_exp0_i__7_n_6 add|out_exp0_i__7_n_7 -autobundled
netbloc @add|out_exp0_i__7_n_ 1 33 1 9370J 308n
load netBundle @add|out_exp_i_n_ 8 add|out_exp_i_n_0 add|out_exp_i_n_1 add|out_exp_i_n_2 add|out_exp_i_n_3 add|out_exp_i_n_4 add|out_exp_i_n_5 add|out_exp_i_n_6 add|out_exp_i_n_7 -autobundled
netbloc @add|out_exp_i_n_ 1 9 3 2720 688 2980 748 3260J
load netBundle @add|out_exp_i__0_n_ 8 add|out_exp_i__0_n_0 add|out_exp_i__0_n_1 add|out_exp_i__0_n_2 add|out_exp_i__0_n_3 add|out_exp_i__0_n_4 add|out_exp_i__0_n_5 add|out_exp_i__0_n_6 add|out_exp_i__0_n_7 -autobundled
netbloc @add|out_exp_i__0_n_ 1 12 3 3530 728 3790 868 4070J
load netBundle @add|out_exp_i__1_n_ 8 add|out_exp_i__1_n_0 add|out_exp_i__1_n_1 add|out_exp_i__1_n_2 add|out_exp_i__1_n_3 add|out_exp_i__1_n_4 add|out_exp_i__1_n_5 add|out_exp_i__1_n_6 add|out_exp_i__1_n_7 -autobundled
netbloc @add|out_exp_i__1_n_ 1 15 3 4320 728 4580 868 4860J
load netBundle @add|out_exp_i__2_n_ 8 add|out_exp_i__2_n_0 add|out_exp_i__2_n_1 add|out_exp_i__2_n_2 add|out_exp_i__2_n_3 add|out_exp_i__2_n_4 add|out_exp_i__2_n_5 add|out_exp_i__2_n_6 add|out_exp_i__2_n_7 -autobundled
netbloc @add|out_exp_i__2_n_ 1 18 3 5110 728 5370 868 5650J
load netBundle @add|out_exp_i__3_n_ 8 add|out_exp_i__3_n_0 add|out_exp_i__3_n_1 add|out_exp_i__3_n_2 add|out_exp_i__3_n_3 add|out_exp_i__3_n_4 add|out_exp_i__3_n_5 add|out_exp_i__3_n_6 add|out_exp_i__3_n_7 -autobundled
netbloc @add|out_exp_i__3_n_ 1 21 3 5900 728 6160 868 6440J
load netBundle @add|out_exp_i__4_n_ 8 add|out_exp_i__4_n_0 add|out_exp_i__4_n_1 add|out_exp_i__4_n_2 add|out_exp_i__4_n_3 add|out_exp_i__4_n_4 add|out_exp_i__4_n_5 add|out_exp_i__4_n_6 add|out_exp_i__4_n_7 -autobundled
netbloc @add|out_exp_i__4_n_ 1 24 3 6690 728 6960 868 7240J
load netBundle @add|out_exp_i__5_n_ 8 add|out_exp_i__5_n_0 add|out_exp_i__5_n_1 add|out_exp_i__5_n_2 add|out_exp_i__5_n_3 add|out_exp_i__5_n_4 add|out_exp_i__5_n_5 add|out_exp_i__5_n_6 add|out_exp_i__5_n_7 -autobundled
netbloc @add|out_exp_i__5_n_ 1 27 3 7490 728 7760 768 8100J
load netBundle @add|out_exp_i__6_n_ 8 add|out_exp_i__6_n_0 add|out_exp_i__6_n_1 add|out_exp_i__6_n_2 add|out_exp_i__6_n_3 add|out_exp_i__6_n_4 add|out_exp_i__6_n_5 add|out_exp_i__6_n_6 add|out_exp_i__6_n_7 -autobundled
netbloc @add|out_exp_i__6_n_ 1 30 4 8370 518 8680J 398 9000 358 NJ
load netBundle @add|out_exp_i__7_n_ 8 add|out_exp_i__7_n_0 add|out_exp_i__7_n_1 add|out_exp_i__7_n_2 add|out_exp_i__7_n_3 add|out_exp_i__7_n_4 add|out_exp_i__7_n_5 add|out_exp_i__7_n_6 add|out_exp_i__7_n_7 -autobundled
netbloc @add|out_exp_i__7_n_ 1 34 1 9670 348n
load netBundle @add|out_exp 8 add|out_exp[7] add|out_exp[6] add|out_exp[5] add|out_exp[4] add|out_exp[3] add|out_exp[2] add|out_exp[1] add|out_exp[0] -autobundled
netbloc @add|out_exp 1 35 1 10030 338n
load netBundle @add|out_mant 7 add|out_mant[6] add|out_mant[5] add|out_mant[4] add|out_mant[3] add|out_mant[2] add|out_mant[1] add|out_mant[0] -autobundled
netbloc @add|out_mant 1 35 1 10090 88n
load netBundle @add|result_exp_init 8 add|result_exp_init[7] add|result_exp_init[6] add|result_exp_init[5] add|result_exp_init[4] add|result_exp_init[3] add|result_exp_init[2] add|result_exp_init[1] add|result_exp_init[0] -autobundled
netbloc @add|result_exp_init 1 7 2 2170 728 2470
load netBundle @add|sum0_i_n_ 16 add|sum0_i_n_0 add|sum0_i_n_1 add|sum0_i_n_2 add|sum0_i_n_3 add|sum0_i_n_4 add|sum0_i_n_5 add|sum0_i_n_6 add|sum0_i_n_7 add|sum0_i_n_8 add|sum0_i_n_9 add|sum0_i_n_10 add|sum0_i_n_11 add|sum0_i_n_12 add|sum0_i_n_13 add|sum0_i_n_14 add|sum0_i_n_15 -autobundled
netbloc @add|sum0_i_n_ 1 36 1 10350 288n
load netBundle @add|sum 16 add|sum[15] add|sum[14] add|sum[13] add|sum[12] add|sum[11] add|sum[10] add|sum[9] add|sum[8] add|sum[7] add|sum[6] add|sum[5] add|sum[4] add|sum[3] add|sum[2] add|sum[1] add|sum[0] -autobundled
netbloc @add|sum 1 37 1 N 278
levelinfo -pg 1 0 60 10720
levelinfo -hier add * 180 540 840 1120 1360 1700 2040 2280 2590 2810 3070 3380 3620 3880 4190 4410 4670 4980 5200 5460 5770 5990 6250 6560 6780 7050 7360 7580 7890 8220 8460 8770 9160 9490 9870 10220 10500 *
pagesize -pg 1 -db -bbox -sgen 0 -10 10720 930
pagesize -hier add -db -bbox -sgen 60 28 10640 898
show
zoom 0.113454
scrollpos -525 -233
#
# initialize ictrl to current module fc_accel work:fc_accel:NOFILE
ictrl init topinfo |
