# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_ctlz_32_32_1_1 BINDTYPE {op} TYPE {ctlz} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_am_addmul_15s_6ns_15s_15_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name bufC_94 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_94 \
    op interface \
    ports { bufC_94_address0 { O 4 vector } bufC_94_ce0 { O 1 bit } bufC_94_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name bufC_126 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_126 \
    op interface \
    ports { bufC_126_address0 { O 4 vector } bufC_126_ce0 { O 1 bit } bufC_126_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_126'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name C_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_0 \
    op interface \
    ports { C_0_address0 { O 11 vector } C_0_ce0 { O 1 bit } C_0_we0 { O 1 bit } C_0_d0 { O 16 vector } C_0_address1 { O 11 vector } C_0_ce1 { O 1 bit } C_0_we1 { O 1 bit } C_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name C_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_1 \
    op interface \
    ports { C_1_address0 { O 11 vector } C_1_ce0 { O 1 bit } C_1_we0 { O 1 bit } C_1_d0 { O 16 vector } C_1_address1 { O 11 vector } C_1_ce1 { O 1 bit } C_1_we1 { O 1 bit } C_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name C_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_2 \
    op interface \
    ports { C_2_address0 { O 11 vector } C_2_ce0 { O 1 bit } C_2_we0 { O 1 bit } C_2_d0 { O 16 vector } C_2_address1 { O 11 vector } C_2_ce1 { O 1 bit } C_2_we1 { O 1 bit } C_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name C_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_3 \
    op interface \
    ports { C_3_address0 { O 11 vector } C_3_ce0 { O 1 bit } C_3_we0 { O 1 bit } C_3_d0 { O 16 vector } C_3_address1 { O 11 vector } C_3_ce1 { O 1 bit } C_3_we1 { O 1 bit } C_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name C_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_4 \
    op interface \
    ports { C_4_address0 { O 11 vector } C_4_ce0 { O 1 bit } C_4_we0 { O 1 bit } C_4_d0 { O 16 vector } C_4_address1 { O 11 vector } C_4_ce1 { O 1 bit } C_4_we1 { O 1 bit } C_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name C_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_5 \
    op interface \
    ports { C_5_address0 { O 11 vector } C_5_ce0 { O 1 bit } C_5_we0 { O 1 bit } C_5_d0 { O 16 vector } C_5_address1 { O 11 vector } C_5_ce1 { O 1 bit } C_5_we1 { O 1 bit } C_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name C_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_6 \
    op interface \
    ports { C_6_address0 { O 11 vector } C_6_ce0 { O 1 bit } C_6_we0 { O 1 bit } C_6_d0 { O 16 vector } C_6_address1 { O 11 vector } C_6_ce1 { O 1 bit } C_6_we1 { O 1 bit } C_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name C_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_7 \
    op interface \
    ports { C_7_address0 { O 11 vector } C_7_ce0 { O 1 bit } C_7_we0 { O 1 bit } C_7_d0 { O 16 vector } C_7_address1 { O 11 vector } C_7_ce1 { O 1 bit } C_7_we1 { O 1 bit } C_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name C_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_8 \
    op interface \
    ports { C_8_address0 { O 11 vector } C_8_ce0 { O 1 bit } C_8_we0 { O 1 bit } C_8_d0 { O 16 vector } C_8_address1 { O 11 vector } C_8_ce1 { O 1 bit } C_8_we1 { O 1 bit } C_8_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name C_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_9 \
    op interface \
    ports { C_9_address0 { O 11 vector } C_9_ce0 { O 1 bit } C_9_we0 { O 1 bit } C_9_d0 { O 16 vector } C_9_address1 { O 11 vector } C_9_ce1 { O 1 bit } C_9_we1 { O 1 bit } C_9_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name C_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_10 \
    op interface \
    ports { C_10_address0 { O 11 vector } C_10_ce0 { O 1 bit } C_10_we0 { O 1 bit } C_10_d0 { O 16 vector } C_10_address1 { O 11 vector } C_10_ce1 { O 1 bit } C_10_we1 { O 1 bit } C_10_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name C_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_11 \
    op interface \
    ports { C_11_address0 { O 11 vector } C_11_ce0 { O 1 bit } C_11_we0 { O 1 bit } C_11_d0 { O 16 vector } C_11_address1 { O 11 vector } C_11_ce1 { O 1 bit } C_11_we1 { O 1 bit } C_11_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name C_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_12 \
    op interface \
    ports { C_12_address0 { O 11 vector } C_12_ce0 { O 1 bit } C_12_we0 { O 1 bit } C_12_d0 { O 16 vector } C_12_address1 { O 11 vector } C_12_ce1 { O 1 bit } C_12_we1 { O 1 bit } C_12_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name C_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_13 \
    op interface \
    ports { C_13_address0 { O 11 vector } C_13_ce0 { O 1 bit } C_13_we0 { O 1 bit } C_13_d0 { O 16 vector } C_13_address1 { O 11 vector } C_13_ce1 { O 1 bit } C_13_we1 { O 1 bit } C_13_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name C_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_14 \
    op interface \
    ports { C_14_address0 { O 11 vector } C_14_ce0 { O 1 bit } C_14_we0 { O 1 bit } C_14_d0 { O 16 vector } C_14_address1 { O 11 vector } C_14_ce1 { O 1 bit } C_14_we1 { O 1 bit } C_14_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name C_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename C_15 \
    op interface \
    ports { C_15_address0 { O 11 vector } C_15_ce0 { O 1 bit } C_15_we0 { O 1 bit } C_15_d0 { O 16 vector } C_15_address1 { O 11 vector } C_15_ce1 { O 1 bit } C_15_we1 { O 1 bit } C_15_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name bufC_93 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_93 \
    op interface \
    ports { bufC_93_address0 { O 4 vector } bufC_93_ce0 { O 1 bit } bufC_93_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name bufC_125 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_125 \
    op interface \
    ports { bufC_125_address0 { O 4 vector } bufC_125_ce0 { O 1 bit } bufC_125_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_125'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name bufC_92 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_92 \
    op interface \
    ports { bufC_92_address0 { O 4 vector } bufC_92_ce0 { O 1 bit } bufC_92_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name bufC_124 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_124 \
    op interface \
    ports { bufC_124_address0 { O 4 vector } bufC_124_ce0 { O 1 bit } bufC_124_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_124'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name bufC_91 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_91 \
    op interface \
    ports { bufC_91_address0 { O 4 vector } bufC_91_ce0 { O 1 bit } bufC_91_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name bufC_123 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_123 \
    op interface \
    ports { bufC_123_address0 { O 4 vector } bufC_123_ce0 { O 1 bit } bufC_123_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_123'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name bufC_90 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_90 \
    op interface \
    ports { bufC_90_address0 { O 4 vector } bufC_90_ce0 { O 1 bit } bufC_90_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name bufC_122 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_122 \
    op interface \
    ports { bufC_122_address0 { O 4 vector } bufC_122_ce0 { O 1 bit } bufC_122_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_122'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name bufC_89 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_89 \
    op interface \
    ports { bufC_89_address0 { O 4 vector } bufC_89_ce0 { O 1 bit } bufC_89_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name bufC_121 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_121 \
    op interface \
    ports { bufC_121_address0 { O 4 vector } bufC_121_ce0 { O 1 bit } bufC_121_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_121'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name bufC_88 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_88 \
    op interface \
    ports { bufC_88_address0 { O 4 vector } bufC_88_ce0 { O 1 bit } bufC_88_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name bufC_120 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_120 \
    op interface \
    ports { bufC_120_address0 { O 4 vector } bufC_120_ce0 { O 1 bit } bufC_120_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_120'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name bufC_87 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_87 \
    op interface \
    ports { bufC_87_address0 { O 4 vector } bufC_87_ce0 { O 1 bit } bufC_87_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name bufC_119 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_119 \
    op interface \
    ports { bufC_119_address0 { O 4 vector } bufC_119_ce0 { O 1 bit } bufC_119_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_119'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 290 \
    name bufC_86 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_86 \
    op interface \
    ports { bufC_86_address0 { O 4 vector } bufC_86_ce0 { O 1 bit } bufC_86_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name bufC_118 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_118 \
    op interface \
    ports { bufC_118_address0 { O 4 vector } bufC_118_ce0 { O 1 bit } bufC_118_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_118'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name bufC_85 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_85 \
    op interface \
    ports { bufC_85_address0 { O 4 vector } bufC_85_ce0 { O 1 bit } bufC_85_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 294 \
    name bufC_117 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_117 \
    op interface \
    ports { bufC_117_address0 { O 4 vector } bufC_117_ce0 { O 1 bit } bufC_117_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_117'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 296 \
    name bufC_84 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_84 \
    op interface \
    ports { bufC_84_address0 { O 4 vector } bufC_84_ce0 { O 1 bit } bufC_84_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 297 \
    name bufC_116 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_116 \
    op interface \
    ports { bufC_116_address0 { O 4 vector } bufC_116_ce0 { O 1 bit } bufC_116_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_116'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name bufC_83 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_83 \
    op interface \
    ports { bufC_83_address0 { O 4 vector } bufC_83_ce0 { O 1 bit } bufC_83_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name bufC_115 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_115 \
    op interface \
    ports { bufC_115_address0 { O 4 vector } bufC_115_ce0 { O 1 bit } bufC_115_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_115'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name bufC_82 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_82 \
    op interface \
    ports { bufC_82_address0 { O 4 vector } bufC_82_ce0 { O 1 bit } bufC_82_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name bufC_114 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_114 \
    op interface \
    ports { bufC_114_address0 { O 4 vector } bufC_114_ce0 { O 1 bit } bufC_114_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_114'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name bufC_81 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_81 \
    op interface \
    ports { bufC_81_address0 { O 4 vector } bufC_81_ce0 { O 1 bit } bufC_81_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name bufC_113 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_113 \
    op interface \
    ports { bufC_113_address0 { O 4 vector } bufC_113_ce0 { O 1 bit } bufC_113_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_113'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name bufC_80 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_80 \
    op interface \
    ports { bufC_80_address0 { O 4 vector } bufC_80_ce0 { O 1 bit } bufC_80_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name bufC_112 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_112 \
    op interface \
    ports { bufC_112_address0 { O 4 vector } bufC_112_ce0 { O 1 bit } bufC_112_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_112'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name bufC_79 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_79 \
    op interface \
    ports { bufC_79_address0 { O 4 vector } bufC_79_ce0 { O 1 bit } bufC_79_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name bufC_111 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_111 \
    op interface \
    ports { bufC_111_address0 { O 4 vector } bufC_111_ce0 { O 1 bit } bufC_111_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_111'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name bufC_78 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_78 \
    op interface \
    ports { bufC_78_address0 { O 4 vector } bufC_78_ce0 { O 1 bit } bufC_78_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name bufC_110 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_110 \
    op interface \
    ports { bufC_110_address0 { O 4 vector } bufC_110_ce0 { O 1 bit } bufC_110_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_110'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name bufC_77 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_77 \
    op interface \
    ports { bufC_77_address0 { O 4 vector } bufC_77_ce0 { O 1 bit } bufC_77_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name bufC_109 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_109 \
    op interface \
    ports { bufC_109_address0 { O 4 vector } bufC_109_ce0 { O 1 bit } bufC_109_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_109'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name bufC_76 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_76 \
    op interface \
    ports { bufC_76_address0 { O 4 vector } bufC_76_ce0 { O 1 bit } bufC_76_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name bufC_108 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_108 \
    op interface \
    ports { bufC_108_address0 { O 4 vector } bufC_108_ce0 { O 1 bit } bufC_108_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_108'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name bufC_75 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_75 \
    op interface \
    ports { bufC_75_address0 { O 4 vector } bufC_75_ce0 { O 1 bit } bufC_75_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name bufC_107 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_107 \
    op interface \
    ports { bufC_107_address0 { O 4 vector } bufC_107_ce0 { O 1 bit } bufC_107_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_107'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name bufC_74 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_74 \
    op interface \
    ports { bufC_74_address0 { O 4 vector } bufC_74_ce0 { O 1 bit } bufC_74_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name bufC_106 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_106 \
    op interface \
    ports { bufC_106_address0 { O 4 vector } bufC_106_ce0 { O 1 bit } bufC_106_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_106'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name bufC_73 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_73 \
    op interface \
    ports { bufC_73_address0 { O 4 vector } bufC_73_ce0 { O 1 bit } bufC_73_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name bufC_105 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_105 \
    op interface \
    ports { bufC_105_address0 { O 4 vector } bufC_105_ce0 { O 1 bit } bufC_105_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_105'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name bufC_72 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_72 \
    op interface \
    ports { bufC_72_address0 { O 4 vector } bufC_72_ce0 { O 1 bit } bufC_72_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name bufC_104 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_104 \
    op interface \
    ports { bufC_104_address0 { O 4 vector } bufC_104_ce0 { O 1 bit } bufC_104_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_104'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name bufC_71 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_71 \
    op interface \
    ports { bufC_71_address0 { O 4 vector } bufC_71_ce0 { O 1 bit } bufC_71_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name bufC_103 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_103 \
    op interface \
    ports { bufC_103_address0 { O 4 vector } bufC_103_ce0 { O 1 bit } bufC_103_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_103'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name bufC_70 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_70 \
    op interface \
    ports { bufC_70_address0 { O 4 vector } bufC_70_ce0 { O 1 bit } bufC_70_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name bufC_102 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_102 \
    op interface \
    ports { bufC_102_address0 { O 4 vector } bufC_102_ce0 { O 1 bit } bufC_102_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_102'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name bufC_69 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_69 \
    op interface \
    ports { bufC_69_address0 { O 4 vector } bufC_69_ce0 { O 1 bit } bufC_69_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name bufC_101 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_101 \
    op interface \
    ports { bufC_101_address0 { O 4 vector } bufC_101_ce0 { O 1 bit } bufC_101_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_101'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name bufC_68 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_68 \
    op interface \
    ports { bufC_68_address0 { O 4 vector } bufC_68_ce0 { O 1 bit } bufC_68_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name bufC_100 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_100 \
    op interface \
    ports { bufC_100_address0 { O 4 vector } bufC_100_ce0 { O 1 bit } bufC_100_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_100'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name bufC_67 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_67 \
    op interface \
    ports { bufC_67_address0 { O 4 vector } bufC_67_ce0 { O 1 bit } bufC_67_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name bufC_99 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_99 \
    op interface \
    ports { bufC_99_address0 { O 4 vector } bufC_99_ce0 { O 1 bit } bufC_99_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_99'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name bufC_66 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_66 \
    op interface \
    ports { bufC_66_address0 { O 4 vector } bufC_66_ce0 { O 1 bit } bufC_66_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name bufC_98 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_98 \
    op interface \
    ports { bufC_98_address0 { O 4 vector } bufC_98_ce0 { O 1 bit } bufC_98_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name bufC_65 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_65 \
    op interface \
    ports { bufC_65_address0 { O 4 vector } bufC_65_ce0 { O 1 bit } bufC_65_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name bufC_97 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_97 \
    op interface \
    ports { bufC_97_address0 { O 4 vector } bufC_97_ce0 { O 1 bit } bufC_97_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name bufC_64 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_64 \
    op interface \
    ports { bufC_64_address0 { O 4 vector } bufC_64_ce0 { O 1 bit } bufC_64_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name bufC_96 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_96 \
    op interface \
    ports { bufC_96_address0 { O 4 vector } bufC_96_ce0 { O 1 bit } bufC_96_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name bufC \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC \
    op interface \
    ports { bufC_address0 { O 4 vector } bufC_ce0 { O 1 bit } bufC_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name bufC_95 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufC_95 \
    op interface \
    ports { bufC_95_address0 { O 4 vector } bufC_95_ce0 { O 1 bit } bufC_95_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_95'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name or_ln295_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_29 \
    op interface \
    ports { or_ln295_29 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name or_ln295_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_28 \
    op interface \
    ports { or_ln295_28 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name or_ln295_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_27 \
    op interface \
    ports { or_ln295_27 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name or_ln295_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_26 \
    op interface \
    ports { or_ln295_26 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name or_ln295_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_25 \
    op interface \
    ports { or_ln295_25 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name or_ln295_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_24 \
    op interface \
    ports { or_ln295_24 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name or_ln295_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_23 \
    op interface \
    ports { or_ln295_23 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name or_ln295_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_22 \
    op interface \
    ports { or_ln295_22 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name or_ln295_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_21 \
    op interface \
    ports { or_ln295_21 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name or_ln295_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_20 \
    op interface \
    ports { or_ln295_20 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name or_ln295_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_19 \
    op interface \
    ports { or_ln295_19 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name or_ln295_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_18 \
    op interface \
    ports { or_ln295_18 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name or_ln295_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_17 \
    op interface \
    ports { or_ln295_17 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name or_ln295_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_16 \
    op interface \
    ports { or_ln295_16 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name or_ln295_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_15 \
    op interface \
    ports { or_ln295_15 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name or_ln295_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_14 \
    op interface \
    ports { or_ln295_14 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name or_ln295_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_13 \
    op interface \
    ports { or_ln295_13 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name or_ln295_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_12 \
    op interface \
    ports { or_ln295_12 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name or_ln295_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_11 \
    op interface \
    ports { or_ln295_11 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name or_ln295_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_10 \
    op interface \
    ports { or_ln295_10 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name or_ln295_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_s \
    op interface \
    ports { or_ln295_s { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name or_ln295_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_9 \
    op interface \
    ports { or_ln295_9 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name or_ln295_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_8 \
    op interface \
    ports { or_ln295_8 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name or_ln295_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_7 \
    op interface \
    ports { or_ln295_7 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name or_ln295_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_6 \
    op interface \
    ports { or_ln295_6 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name or_ln295_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_5 \
    op interface \
    ports { or_ln295_5 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name or_ln295_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_4 \
    op interface \
    ports { or_ln295_4 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name or_ln295_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_3 \
    op interface \
    ports { or_ln295_3 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name or_ln295_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_2 \
    op interface \
    ports { or_ln295_2 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name or_ln295_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln295_1 \
    op interface \
    ports { or_ln295_1 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name or_ln4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln4 \
    op interface \
    ports { or_ln4 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name empty_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_20 \
    op interface \
    ports { empty_20 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name empty_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_21 \
    op interface \
    ports { empty_21 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName qwen_superblock_flow_control_loop_pipe_sequential_init_U
set CompName qwen_superblock_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix qwen_superblock_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


