# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_65_5_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_7_2_15_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
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
    id 119 \
    name bufA \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA \
    op interface \
    ports { bufA_address0 { O 6 vector } bufA_ce0 { O 1 bit } bufA_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name bufA_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_1 \
    op interface \
    ports { bufA_1_address0 { O 6 vector } bufA_1_ce0 { O 1 bit } bufA_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name bufA_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_2 \
    op interface \
    ports { bufA_2_address0 { O 6 vector } bufA_2_ce0 { O 1 bit } bufA_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name bufA_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_3 \
    op interface \
    ports { bufA_3_address0 { O 6 vector } bufA_3_ce0 { O 1 bit } bufA_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name bufA_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_4 \
    op interface \
    ports { bufA_4_address0 { O 6 vector } bufA_4_ce0 { O 1 bit } bufA_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name bufA_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_5 \
    op interface \
    ports { bufA_5_address0 { O 6 vector } bufA_5_ce0 { O 1 bit } bufA_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name bufA_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_6 \
    op interface \
    ports { bufA_6_address0 { O 6 vector } bufA_6_ce0 { O 1 bit } bufA_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name bufA_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_7 \
    op interface \
    ports { bufA_7_address0 { O 6 vector } bufA_7_ce0 { O 1 bit } bufA_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name bufA_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_8 \
    op interface \
    ports { bufA_8_address0 { O 6 vector } bufA_8_ce0 { O 1 bit } bufA_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name bufA_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_9 \
    op interface \
    ports { bufA_9_address0 { O 6 vector } bufA_9_ce0 { O 1 bit } bufA_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name bufA_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_10 \
    op interface \
    ports { bufA_10_address0 { O 6 vector } bufA_10_ce0 { O 1 bit } bufA_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name bufA_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_11 \
    op interface \
    ports { bufA_11_address0 { O 6 vector } bufA_11_ce0 { O 1 bit } bufA_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name bufA_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_12 \
    op interface \
    ports { bufA_12_address0 { O 6 vector } bufA_12_ce0 { O 1 bit } bufA_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name bufA_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_13 \
    op interface \
    ports { bufA_13_address0 { O 6 vector } bufA_13_ce0 { O 1 bit } bufA_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name bufA_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_14 \
    op interface \
    ports { bufA_14_address0 { O 6 vector } bufA_14_ce0 { O 1 bit } bufA_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name bufA_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufA_15 \
    op interface \
    ports { bufA_15_address0 { O 6 vector } bufA_15_ce0 { O 1 bit } bufA_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name bufW \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW \
    op interface \
    ports { bufW_address0 { O 6 vector } bufW_ce0 { O 1 bit } bufW_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name bufW_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_1 \
    op interface \
    ports { bufW_1_address0 { O 6 vector } bufW_1_ce0 { O 1 bit } bufW_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name bufW_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_2 \
    op interface \
    ports { bufW_2_address0 { O 6 vector } bufW_2_ce0 { O 1 bit } bufW_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name bufW_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_3 \
    op interface \
    ports { bufW_3_address0 { O 6 vector } bufW_3_ce0 { O 1 bit } bufW_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name bufW_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_4 \
    op interface \
    ports { bufW_4_address0 { O 6 vector } bufW_4_ce0 { O 1 bit } bufW_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name bufW_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_5 \
    op interface \
    ports { bufW_5_address0 { O 6 vector } bufW_5_ce0 { O 1 bit } bufW_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name bufW_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_6 \
    op interface \
    ports { bufW_6_address0 { O 6 vector } bufW_6_ce0 { O 1 bit } bufW_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name bufW_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_7 \
    op interface \
    ports { bufW_7_address0 { O 6 vector } bufW_7_ce0 { O 1 bit } bufW_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name bufW_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_8 \
    op interface \
    ports { bufW_8_address0 { O 6 vector } bufW_8_ce0 { O 1 bit } bufW_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name bufW_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_9 \
    op interface \
    ports { bufW_9_address0 { O 6 vector } bufW_9_ce0 { O 1 bit } bufW_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name bufW_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_10 \
    op interface \
    ports { bufW_10_address0 { O 6 vector } bufW_10_ce0 { O 1 bit } bufW_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name bufW_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_11 \
    op interface \
    ports { bufW_11_address0 { O 6 vector } bufW_11_ce0 { O 1 bit } bufW_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name bufW_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_12 \
    op interface \
    ports { bufW_12_address0 { O 6 vector } bufW_12_ce0 { O 1 bit } bufW_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name bufW_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_13 \
    op interface \
    ports { bufW_13_address0 { O 6 vector } bufW_13_ce0 { O 1 bit } bufW_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name bufW_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_14 \
    op interface \
    ports { bufW_14_address0 { O 6 vector } bufW_14_ce0 { O 1 bit } bufW_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name bufW_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bufW_15 \
    op interface \
    ports { bufW_15_address0 { O 6 vector } bufW_15_ce0 { O 1 bit } bufW_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name bufC \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC \
    op interface \
    ports { bufC_address0 { O 4 vector } bufC_ce0 { O 1 bit } bufC_we0 { O 1 bit } bufC_d0 { O 32 vector } bufC_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name bufC_64 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_64 \
    op interface \
    ports { bufC_64_address0 { O 4 vector } bufC_64_ce0 { O 1 bit } bufC_64_we0 { O 1 bit } bufC_64_d0 { O 32 vector } bufC_64_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name bufC_65 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_65 \
    op interface \
    ports { bufC_65_address0 { O 4 vector } bufC_65_ce0 { O 1 bit } bufC_65_we0 { O 1 bit } bufC_65_d0 { O 32 vector } bufC_65_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name bufC_66 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_66 \
    op interface \
    ports { bufC_66_address0 { O 4 vector } bufC_66_ce0 { O 1 bit } bufC_66_we0 { O 1 bit } bufC_66_d0 { O 32 vector } bufC_66_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name bufC_67 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_67 \
    op interface \
    ports { bufC_67_address0 { O 4 vector } bufC_67_ce0 { O 1 bit } bufC_67_we0 { O 1 bit } bufC_67_d0 { O 32 vector } bufC_67_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name bufC_68 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_68 \
    op interface \
    ports { bufC_68_address0 { O 4 vector } bufC_68_ce0 { O 1 bit } bufC_68_we0 { O 1 bit } bufC_68_d0 { O 32 vector } bufC_68_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name bufC_69 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_69 \
    op interface \
    ports { bufC_69_address0 { O 4 vector } bufC_69_ce0 { O 1 bit } bufC_69_we0 { O 1 bit } bufC_69_d0 { O 32 vector } bufC_69_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name bufC_70 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_70 \
    op interface \
    ports { bufC_70_address0 { O 4 vector } bufC_70_ce0 { O 1 bit } bufC_70_we0 { O 1 bit } bufC_70_d0 { O 32 vector } bufC_70_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name bufC_71 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_71 \
    op interface \
    ports { bufC_71_address0 { O 4 vector } bufC_71_ce0 { O 1 bit } bufC_71_we0 { O 1 bit } bufC_71_d0 { O 32 vector } bufC_71_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name bufC_72 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_72 \
    op interface \
    ports { bufC_72_address0 { O 4 vector } bufC_72_ce0 { O 1 bit } bufC_72_we0 { O 1 bit } bufC_72_d0 { O 32 vector } bufC_72_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name bufC_73 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_73 \
    op interface \
    ports { bufC_73_address0 { O 4 vector } bufC_73_ce0 { O 1 bit } bufC_73_we0 { O 1 bit } bufC_73_d0 { O 32 vector } bufC_73_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name bufC_74 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_74 \
    op interface \
    ports { bufC_74_address0 { O 4 vector } bufC_74_ce0 { O 1 bit } bufC_74_we0 { O 1 bit } bufC_74_d0 { O 32 vector } bufC_74_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name bufC_75 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_75 \
    op interface \
    ports { bufC_75_address0 { O 4 vector } bufC_75_ce0 { O 1 bit } bufC_75_we0 { O 1 bit } bufC_75_d0 { O 32 vector } bufC_75_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name bufC_76 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_76 \
    op interface \
    ports { bufC_76_address0 { O 4 vector } bufC_76_ce0 { O 1 bit } bufC_76_we0 { O 1 bit } bufC_76_d0 { O 32 vector } bufC_76_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name bufC_77 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_77 \
    op interface \
    ports { bufC_77_address0 { O 4 vector } bufC_77_ce0 { O 1 bit } bufC_77_we0 { O 1 bit } bufC_77_d0 { O 32 vector } bufC_77_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name bufC_78 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_78 \
    op interface \
    ports { bufC_78_address0 { O 4 vector } bufC_78_ce0 { O 1 bit } bufC_78_we0 { O 1 bit } bufC_78_d0 { O 32 vector } bufC_78_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name bufC_79 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_79 \
    op interface \
    ports { bufC_79_address0 { O 4 vector } bufC_79_ce0 { O 1 bit } bufC_79_we0 { O 1 bit } bufC_79_d0 { O 32 vector } bufC_79_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name bufC_80 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_80 \
    op interface \
    ports { bufC_80_address0 { O 4 vector } bufC_80_ce0 { O 1 bit } bufC_80_we0 { O 1 bit } bufC_80_d0 { O 32 vector } bufC_80_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name bufC_81 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_81 \
    op interface \
    ports { bufC_81_address0 { O 4 vector } bufC_81_ce0 { O 1 bit } bufC_81_we0 { O 1 bit } bufC_81_d0 { O 32 vector } bufC_81_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name bufC_82 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_82 \
    op interface \
    ports { bufC_82_address0 { O 4 vector } bufC_82_ce0 { O 1 bit } bufC_82_we0 { O 1 bit } bufC_82_d0 { O 32 vector } bufC_82_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name bufC_83 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_83 \
    op interface \
    ports { bufC_83_address0 { O 4 vector } bufC_83_ce0 { O 1 bit } bufC_83_we0 { O 1 bit } bufC_83_d0 { O 32 vector } bufC_83_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name bufC_84 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_84 \
    op interface \
    ports { bufC_84_address0 { O 4 vector } bufC_84_ce0 { O 1 bit } bufC_84_we0 { O 1 bit } bufC_84_d0 { O 32 vector } bufC_84_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name bufC_85 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_85 \
    op interface \
    ports { bufC_85_address0 { O 4 vector } bufC_85_ce0 { O 1 bit } bufC_85_we0 { O 1 bit } bufC_85_d0 { O 32 vector } bufC_85_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name bufC_86 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_86 \
    op interface \
    ports { bufC_86_address0 { O 4 vector } bufC_86_ce0 { O 1 bit } bufC_86_we0 { O 1 bit } bufC_86_d0 { O 32 vector } bufC_86_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name bufC_87 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_87 \
    op interface \
    ports { bufC_87_address0 { O 4 vector } bufC_87_ce0 { O 1 bit } bufC_87_we0 { O 1 bit } bufC_87_d0 { O 32 vector } bufC_87_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name bufC_88 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_88 \
    op interface \
    ports { bufC_88_address0 { O 4 vector } bufC_88_ce0 { O 1 bit } bufC_88_we0 { O 1 bit } bufC_88_d0 { O 32 vector } bufC_88_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name bufC_89 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_89 \
    op interface \
    ports { bufC_89_address0 { O 4 vector } bufC_89_ce0 { O 1 bit } bufC_89_we0 { O 1 bit } bufC_89_d0 { O 32 vector } bufC_89_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name bufC_90 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_90 \
    op interface \
    ports { bufC_90_address0 { O 4 vector } bufC_90_ce0 { O 1 bit } bufC_90_we0 { O 1 bit } bufC_90_d0 { O 32 vector } bufC_90_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name bufC_91 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_91 \
    op interface \
    ports { bufC_91_address0 { O 4 vector } bufC_91_ce0 { O 1 bit } bufC_91_we0 { O 1 bit } bufC_91_d0 { O 32 vector } bufC_91_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name bufC_92 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_92 \
    op interface \
    ports { bufC_92_address0 { O 4 vector } bufC_92_ce0 { O 1 bit } bufC_92_we0 { O 1 bit } bufC_92_d0 { O 32 vector } bufC_92_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name bufC_93 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_93 \
    op interface \
    ports { bufC_93_address0 { O 4 vector } bufC_93_ce0 { O 1 bit } bufC_93_we0 { O 1 bit } bufC_93_d0 { O 32 vector } bufC_93_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name bufC_94 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_94 \
    op interface \
    ports { bufC_94_address0 { O 4 vector } bufC_94_ce0 { O 1 bit } bufC_94_we0 { O 1 bit } bufC_94_d0 { O 32 vector } bufC_94_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name bufC_95 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_95 \
    op interface \
    ports { bufC_95_address0 { O 4 vector } bufC_95_ce0 { O 1 bit } bufC_95_we0 { O 1 bit } bufC_95_d0 { O 32 vector } bufC_95_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name bufC_96 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_96 \
    op interface \
    ports { bufC_96_address0 { O 4 vector } bufC_96_ce0 { O 1 bit } bufC_96_we0 { O 1 bit } bufC_96_d0 { O 32 vector } bufC_96_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name bufC_97 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_97 \
    op interface \
    ports { bufC_97_address0 { O 4 vector } bufC_97_ce0 { O 1 bit } bufC_97_we0 { O 1 bit } bufC_97_d0 { O 32 vector } bufC_97_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name bufC_98 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_98 \
    op interface \
    ports { bufC_98_address0 { O 4 vector } bufC_98_ce0 { O 1 bit } bufC_98_we0 { O 1 bit } bufC_98_d0 { O 32 vector } bufC_98_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name bufC_99 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_99 \
    op interface \
    ports { bufC_99_address0 { O 4 vector } bufC_99_ce0 { O 1 bit } bufC_99_we0 { O 1 bit } bufC_99_d0 { O 32 vector } bufC_99_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_99'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name bufC_100 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_100 \
    op interface \
    ports { bufC_100_address0 { O 4 vector } bufC_100_ce0 { O 1 bit } bufC_100_we0 { O 1 bit } bufC_100_d0 { O 32 vector } bufC_100_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_100'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name bufC_101 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_101 \
    op interface \
    ports { bufC_101_address0 { O 4 vector } bufC_101_ce0 { O 1 bit } bufC_101_we0 { O 1 bit } bufC_101_d0 { O 32 vector } bufC_101_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_101'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name bufC_102 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_102 \
    op interface \
    ports { bufC_102_address0 { O 4 vector } bufC_102_ce0 { O 1 bit } bufC_102_we0 { O 1 bit } bufC_102_d0 { O 32 vector } bufC_102_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_102'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name bufC_103 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_103 \
    op interface \
    ports { bufC_103_address0 { O 4 vector } bufC_103_ce0 { O 1 bit } bufC_103_we0 { O 1 bit } bufC_103_d0 { O 32 vector } bufC_103_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_103'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name bufC_104 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_104 \
    op interface \
    ports { bufC_104_address0 { O 4 vector } bufC_104_ce0 { O 1 bit } bufC_104_we0 { O 1 bit } bufC_104_d0 { O 32 vector } bufC_104_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_104'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name bufC_105 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_105 \
    op interface \
    ports { bufC_105_address0 { O 4 vector } bufC_105_ce0 { O 1 bit } bufC_105_we0 { O 1 bit } bufC_105_d0 { O 32 vector } bufC_105_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_105'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name bufC_106 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_106 \
    op interface \
    ports { bufC_106_address0 { O 4 vector } bufC_106_ce0 { O 1 bit } bufC_106_we0 { O 1 bit } bufC_106_d0 { O 32 vector } bufC_106_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_106'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name bufC_107 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_107 \
    op interface \
    ports { bufC_107_address0 { O 4 vector } bufC_107_ce0 { O 1 bit } bufC_107_we0 { O 1 bit } bufC_107_d0 { O 32 vector } bufC_107_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_107'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name bufC_108 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_108 \
    op interface \
    ports { bufC_108_address0 { O 4 vector } bufC_108_ce0 { O 1 bit } bufC_108_we0 { O 1 bit } bufC_108_d0 { O 32 vector } bufC_108_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_108'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name bufC_109 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_109 \
    op interface \
    ports { bufC_109_address0 { O 4 vector } bufC_109_ce0 { O 1 bit } bufC_109_we0 { O 1 bit } bufC_109_d0 { O 32 vector } bufC_109_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_109'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name bufC_110 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_110 \
    op interface \
    ports { bufC_110_address0 { O 4 vector } bufC_110_ce0 { O 1 bit } bufC_110_we0 { O 1 bit } bufC_110_d0 { O 32 vector } bufC_110_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_110'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name bufC_111 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_111 \
    op interface \
    ports { bufC_111_address0 { O 4 vector } bufC_111_ce0 { O 1 bit } bufC_111_we0 { O 1 bit } bufC_111_d0 { O 32 vector } bufC_111_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_111'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name bufC_112 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_112 \
    op interface \
    ports { bufC_112_address0 { O 4 vector } bufC_112_ce0 { O 1 bit } bufC_112_we0 { O 1 bit } bufC_112_d0 { O 32 vector } bufC_112_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_112'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name bufC_113 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_113 \
    op interface \
    ports { bufC_113_address0 { O 4 vector } bufC_113_ce0 { O 1 bit } bufC_113_we0 { O 1 bit } bufC_113_d0 { O 32 vector } bufC_113_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_113'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name bufC_114 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_114 \
    op interface \
    ports { bufC_114_address0 { O 4 vector } bufC_114_ce0 { O 1 bit } bufC_114_we0 { O 1 bit } bufC_114_d0 { O 32 vector } bufC_114_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_114'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name bufC_115 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_115 \
    op interface \
    ports { bufC_115_address0 { O 4 vector } bufC_115_ce0 { O 1 bit } bufC_115_we0 { O 1 bit } bufC_115_d0 { O 32 vector } bufC_115_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_115'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name bufC_116 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_116 \
    op interface \
    ports { bufC_116_address0 { O 4 vector } bufC_116_ce0 { O 1 bit } bufC_116_we0 { O 1 bit } bufC_116_d0 { O 32 vector } bufC_116_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_116'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name bufC_117 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_117 \
    op interface \
    ports { bufC_117_address0 { O 4 vector } bufC_117_ce0 { O 1 bit } bufC_117_we0 { O 1 bit } bufC_117_d0 { O 32 vector } bufC_117_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_117'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name bufC_118 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_118 \
    op interface \
    ports { bufC_118_address0 { O 4 vector } bufC_118_ce0 { O 1 bit } bufC_118_we0 { O 1 bit } bufC_118_d0 { O 32 vector } bufC_118_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_118'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name bufC_119 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_119 \
    op interface \
    ports { bufC_119_address0 { O 4 vector } bufC_119_ce0 { O 1 bit } bufC_119_we0 { O 1 bit } bufC_119_d0 { O 32 vector } bufC_119_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_119'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name bufC_120 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_120 \
    op interface \
    ports { bufC_120_address0 { O 4 vector } bufC_120_ce0 { O 1 bit } bufC_120_we0 { O 1 bit } bufC_120_d0 { O 32 vector } bufC_120_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_120'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name bufC_121 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_121 \
    op interface \
    ports { bufC_121_address0 { O 4 vector } bufC_121_ce0 { O 1 bit } bufC_121_we0 { O 1 bit } bufC_121_d0 { O 32 vector } bufC_121_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_121'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name bufC_122 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_122 \
    op interface \
    ports { bufC_122_address0 { O 4 vector } bufC_122_ce0 { O 1 bit } bufC_122_we0 { O 1 bit } bufC_122_d0 { O 32 vector } bufC_122_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_122'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name bufC_123 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_123 \
    op interface \
    ports { bufC_123_address0 { O 4 vector } bufC_123_ce0 { O 1 bit } bufC_123_we0 { O 1 bit } bufC_123_d0 { O 32 vector } bufC_123_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_123'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name bufC_124 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_124 \
    op interface \
    ports { bufC_124_address0 { O 4 vector } bufC_124_ce0 { O 1 bit } bufC_124_we0 { O 1 bit } bufC_124_d0 { O 32 vector } bufC_124_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_124'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name bufC_125 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_125 \
    op interface \
    ports { bufC_125_address0 { O 4 vector } bufC_125_ce0 { O 1 bit } bufC_125_we0 { O 1 bit } bufC_125_d0 { O 32 vector } bufC_125_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_125'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name bufC_126 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename bufC_126 \
    op interface \
    ports { bufC_126_address0 { O 4 vector } bufC_126_ce0 { O 1 bit } bufC_126_we0 { O 1 bit } bufC_126_d0 { O 32 vector } bufC_126_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufC_126'"
}
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


