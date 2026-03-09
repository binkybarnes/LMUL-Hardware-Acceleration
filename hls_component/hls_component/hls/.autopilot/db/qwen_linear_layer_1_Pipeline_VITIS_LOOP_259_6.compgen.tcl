# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 486 \
    name bufA \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA \
    op interface \
    ports { bufA_address0 { O 6 vector } bufA_ce0 { O 1 bit } bufA_we0 { O 1 bit } bufA_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 487 \
    name bufA_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_1 \
    op interface \
    ports { bufA_1_address0 { O 6 vector } bufA_1_ce0 { O 1 bit } bufA_1_we0 { O 1 bit } bufA_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 488 \
    name bufA_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_2 \
    op interface \
    ports { bufA_2_address0 { O 6 vector } bufA_2_ce0 { O 1 bit } bufA_2_we0 { O 1 bit } bufA_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 489 \
    name bufA_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_3 \
    op interface \
    ports { bufA_3_address0 { O 6 vector } bufA_3_ce0 { O 1 bit } bufA_3_we0 { O 1 bit } bufA_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 490 \
    name bufA_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_4 \
    op interface \
    ports { bufA_4_address0 { O 6 vector } bufA_4_ce0 { O 1 bit } bufA_4_we0 { O 1 bit } bufA_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 491 \
    name bufA_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_5 \
    op interface \
    ports { bufA_5_address0 { O 6 vector } bufA_5_ce0 { O 1 bit } bufA_5_we0 { O 1 bit } bufA_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 492 \
    name bufA_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_6 \
    op interface \
    ports { bufA_6_address0 { O 6 vector } bufA_6_ce0 { O 1 bit } bufA_6_we0 { O 1 bit } bufA_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 493 \
    name bufA_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_7 \
    op interface \
    ports { bufA_7_address0 { O 6 vector } bufA_7_ce0 { O 1 bit } bufA_7_we0 { O 1 bit } bufA_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 494 \
    name bufA_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_8 \
    op interface \
    ports { bufA_8_address0 { O 6 vector } bufA_8_ce0 { O 1 bit } bufA_8_we0 { O 1 bit } bufA_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 495 \
    name bufA_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_9 \
    op interface \
    ports { bufA_9_address0 { O 6 vector } bufA_9_ce0 { O 1 bit } bufA_9_we0 { O 1 bit } bufA_9_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 496 \
    name bufA_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_10 \
    op interface \
    ports { bufA_10_address0 { O 6 vector } bufA_10_ce0 { O 1 bit } bufA_10_we0 { O 1 bit } bufA_10_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 497 \
    name bufA_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_11 \
    op interface \
    ports { bufA_11_address0 { O 6 vector } bufA_11_ce0 { O 1 bit } bufA_11_we0 { O 1 bit } bufA_11_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 498 \
    name bufA_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_12 \
    op interface \
    ports { bufA_12_address0 { O 6 vector } bufA_12_ce0 { O 1 bit } bufA_12_we0 { O 1 bit } bufA_12_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 499 \
    name bufA_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_13 \
    op interface \
    ports { bufA_13_address0 { O 6 vector } bufA_13_ce0 { O 1 bit } bufA_13_we0 { O 1 bit } bufA_13_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 500 \
    name bufA_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_14 \
    op interface \
    ports { bufA_14_address0 { O 6 vector } bufA_14_ce0 { O 1 bit } bufA_14_we0 { O 1 bit } bufA_14_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 501 \
    name bufA_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufA_15 \
    op interface \
    ports { bufA_15_address0 { O 6 vector } bufA_15_ce0 { O 1 bit } bufA_15_we0 { O 1 bit } bufA_15_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufA_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 506 \
    name bufW \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW \
    op interface \
    ports { bufW_address0 { O 6 vector } bufW_ce0 { O 1 bit } bufW_we0 { O 1 bit } bufW_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 507 \
    name bufW_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_1 \
    op interface \
    ports { bufW_1_address0 { O 6 vector } bufW_1_ce0 { O 1 bit } bufW_1_we0 { O 1 bit } bufW_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 508 \
    name bufW_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_2 \
    op interface \
    ports { bufW_2_address0 { O 6 vector } bufW_2_ce0 { O 1 bit } bufW_2_we0 { O 1 bit } bufW_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 509 \
    name bufW_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_3 \
    op interface \
    ports { bufW_3_address0 { O 6 vector } bufW_3_ce0 { O 1 bit } bufW_3_we0 { O 1 bit } bufW_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 510 \
    name bufW_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_4 \
    op interface \
    ports { bufW_4_address0 { O 6 vector } bufW_4_ce0 { O 1 bit } bufW_4_we0 { O 1 bit } bufW_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 511 \
    name bufW_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_5 \
    op interface \
    ports { bufW_5_address0 { O 6 vector } bufW_5_ce0 { O 1 bit } bufW_5_we0 { O 1 bit } bufW_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 512 \
    name bufW_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_6 \
    op interface \
    ports { bufW_6_address0 { O 6 vector } bufW_6_ce0 { O 1 bit } bufW_6_we0 { O 1 bit } bufW_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 513 \
    name bufW_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_7 \
    op interface \
    ports { bufW_7_address0 { O 6 vector } bufW_7_ce0 { O 1 bit } bufW_7_we0 { O 1 bit } bufW_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 514 \
    name bufW_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_8 \
    op interface \
    ports { bufW_8_address0 { O 6 vector } bufW_8_ce0 { O 1 bit } bufW_8_we0 { O 1 bit } bufW_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 515 \
    name bufW_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_9 \
    op interface \
    ports { bufW_9_address0 { O 6 vector } bufW_9_ce0 { O 1 bit } bufW_9_we0 { O 1 bit } bufW_9_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 516 \
    name bufW_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_10 \
    op interface \
    ports { bufW_10_address0 { O 6 vector } bufW_10_ce0 { O 1 bit } bufW_10_we0 { O 1 bit } bufW_10_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 517 \
    name bufW_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_11 \
    op interface \
    ports { bufW_11_address0 { O 6 vector } bufW_11_ce0 { O 1 bit } bufW_11_we0 { O 1 bit } bufW_11_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 518 \
    name bufW_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_12 \
    op interface \
    ports { bufW_12_address0 { O 6 vector } bufW_12_ce0 { O 1 bit } bufW_12_we0 { O 1 bit } bufW_12_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 519 \
    name bufW_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_13 \
    op interface \
    ports { bufW_13_address0 { O 6 vector } bufW_13_ce0 { O 1 bit } bufW_13_we0 { O 1 bit } bufW_13_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 520 \
    name bufW_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_14 \
    op interface \
    ports { bufW_14_address0 { O 6 vector } bufW_14_ce0 { O 1 bit } bufW_14_we0 { O 1 bit } bufW_14_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 521 \
    name bufW_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bufW_15 \
    op interface \
    ports { bufW_15_address0 { O 6 vector } bufW_15_ce0 { O 1 bit } bufW_15_we0 { O 1 bit } bufW_15_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bufW_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 525 \
    name A_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_0 \
    op interface \
    ports { A_0_address0 { O 11 vector } A_0_ce0 { O 1 bit } A_0_q0 { I 16 vector } A_0_address1 { O 11 vector } A_0_ce1 { O 1 bit } A_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 526 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 11 vector } A_1_ce0 { O 1 bit } A_1_q0 { I 16 vector } A_1_address1 { O 11 vector } A_1_ce1 { O 1 bit } A_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 527 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 11 vector } A_2_ce0 { O 1 bit } A_2_q0 { I 16 vector } A_2_address1 { O 11 vector } A_2_ce1 { O 1 bit } A_2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 528 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 11 vector } A_3_ce0 { O 1 bit } A_3_q0 { I 16 vector } A_3_address1 { O 11 vector } A_3_ce1 { O 1 bit } A_3_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 529 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 11 vector } A_4_ce0 { O 1 bit } A_4_q0 { I 16 vector } A_4_address1 { O 11 vector } A_4_ce1 { O 1 bit } A_4_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 530 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 11 vector } A_5_ce0 { O 1 bit } A_5_q0 { I 16 vector } A_5_address1 { O 11 vector } A_5_ce1 { O 1 bit } A_5_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 531 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 11 vector } A_6_ce0 { O 1 bit } A_6_q0 { I 16 vector } A_6_address1 { O 11 vector } A_6_ce1 { O 1 bit } A_6_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 532 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 11 vector } A_7_ce0 { O 1 bit } A_7_q0 { I 16 vector } A_7_address1 { O 11 vector } A_7_ce1 { O 1 bit } A_7_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 533 \
    name A_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_8 \
    op interface \
    ports { A_8_address0 { O 11 vector } A_8_ce0 { O 1 bit } A_8_q0 { I 16 vector } A_8_address1 { O 11 vector } A_8_ce1 { O 1 bit } A_8_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 534 \
    name A_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_9 \
    op interface \
    ports { A_9_address0 { O 11 vector } A_9_ce0 { O 1 bit } A_9_q0 { I 16 vector } A_9_address1 { O 11 vector } A_9_ce1 { O 1 bit } A_9_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 535 \
    name A_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_10 \
    op interface \
    ports { A_10_address0 { O 11 vector } A_10_ce0 { O 1 bit } A_10_q0 { I 16 vector } A_10_address1 { O 11 vector } A_10_ce1 { O 1 bit } A_10_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 536 \
    name A_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_11 \
    op interface \
    ports { A_11_address0 { O 11 vector } A_11_ce0 { O 1 bit } A_11_q0 { I 16 vector } A_11_address1 { O 11 vector } A_11_ce1 { O 1 bit } A_11_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 537 \
    name A_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_12 \
    op interface \
    ports { A_12_address0 { O 11 vector } A_12_ce0 { O 1 bit } A_12_q0 { I 16 vector } A_12_address1 { O 11 vector } A_12_ce1 { O 1 bit } A_12_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 538 \
    name A_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_13 \
    op interface \
    ports { A_13_address0 { O 11 vector } A_13_ce0 { O 1 bit } A_13_q0 { I 16 vector } A_13_address1 { O 11 vector } A_13_ce1 { O 1 bit } A_13_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 539 \
    name A_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_14 \
    op interface \
    ports { A_14_address0 { O 11 vector } A_14_ce0 { O 1 bit } A_14_q0 { I 16 vector } A_14_address1 { O 11 vector } A_14_ce1 { O 1 bit } A_14_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 540 \
    name A_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_15 \
    op interface \
    ports { A_15_address0 { O 11 vector } A_15_ce0 { O 1 bit } A_15_q0 { I 16 vector } A_15_address1 { O 11 vector } A_15_ce1 { O 1 bit } A_15_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name sext_ln259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln259 \
    op interface \
    ports { sext_ln259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name zext_ln246_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln246_2 \
    op interface \
    ports { zext_ln246_2 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name shl_ln1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln1 \
    op interface \
    ports { shl_ln1 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name W \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W \
    op interface \
    ports { W { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name empty_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_22 \
    op interface \
    ports { empty_22 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name empty_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_23 \
    op interface \
    ports { empty_23 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
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
    id 541 \
    name gmem2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem2 \
    op interface \
    ports { m_axi_gmem2_0_AWVALID { O 1 bit } m_axi_gmem2_0_AWREADY { I 1 bit } m_axi_gmem2_0_AWADDR { O 64 vector } m_axi_gmem2_0_AWID { O 1 vector } m_axi_gmem2_0_AWLEN { O 32 vector } m_axi_gmem2_0_AWSIZE { O 3 vector } m_axi_gmem2_0_AWBURST { O 2 vector } m_axi_gmem2_0_AWLOCK { O 2 vector } m_axi_gmem2_0_AWCACHE { O 4 vector } m_axi_gmem2_0_AWPROT { O 3 vector } m_axi_gmem2_0_AWQOS { O 4 vector } m_axi_gmem2_0_AWREGION { O 4 vector } m_axi_gmem2_0_AWUSER { O 1 vector } m_axi_gmem2_0_WVALID { O 1 bit } m_axi_gmem2_0_WREADY { I 1 bit } m_axi_gmem2_0_WDATA { O 16 vector } m_axi_gmem2_0_WSTRB { O 2 vector } m_axi_gmem2_0_WLAST { O 1 bit } m_axi_gmem2_0_WID { O 1 vector } m_axi_gmem2_0_WUSER { O 1 vector } m_axi_gmem2_0_ARVALID { O 1 bit } m_axi_gmem2_0_ARREADY { I 1 bit } m_axi_gmem2_0_ARADDR { O 64 vector } m_axi_gmem2_0_ARID { O 1 vector } m_axi_gmem2_0_ARLEN { O 32 vector } m_axi_gmem2_0_ARSIZE { O 3 vector } m_axi_gmem2_0_ARBURST { O 2 vector } m_axi_gmem2_0_ARLOCK { O 2 vector } m_axi_gmem2_0_ARCACHE { O 4 vector } m_axi_gmem2_0_ARPROT { O 3 vector } m_axi_gmem2_0_ARQOS { O 4 vector } m_axi_gmem2_0_ARREGION { O 4 vector } m_axi_gmem2_0_ARUSER { O 1 vector } m_axi_gmem2_0_RVALID { I 1 bit } m_axi_gmem2_0_RREADY { O 1 bit } m_axi_gmem2_0_RDATA { I 16 vector } m_axi_gmem2_0_RLAST { I 1 bit } m_axi_gmem2_0_RID { I 1 vector } m_axi_gmem2_0_RFIFONUM { I 10 vector } m_axi_gmem2_0_RUSER { I 1 vector } m_axi_gmem2_0_RRESP { I 2 vector } m_axi_gmem2_0_BVALID { I 1 bit } m_axi_gmem2_0_BREADY { O 1 bit } m_axi_gmem2_0_BRESP { I 2 vector } m_axi_gmem2_0_BID { I 1 vector } m_axi_gmem2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name or_ln2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln2 \
    op interface \
    ports { or_ln2 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name or_ln262_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_1 \
    op interface \
    ports { or_ln262_1 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name or_ln262_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_2 \
    op interface \
    ports { or_ln262_2 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name or_ln262_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_3 \
    op interface \
    ports { or_ln262_3 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name or_ln262_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_4 \
    op interface \
    ports { or_ln262_4 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name or_ln262_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_5 \
    op interface \
    ports { or_ln262_5 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name or_ln262_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_6 \
    op interface \
    ports { or_ln262_6 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name or_ln262_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_7 \
    op interface \
    ports { or_ln262_7 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name or_ln262_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_8 \
    op interface \
    ports { or_ln262_8 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name or_ln262_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_9 \
    op interface \
    ports { or_ln262_9 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name or_ln262_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_s \
    op interface \
    ports { or_ln262_s { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name or_ln262_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_10 \
    op interface \
    ports { or_ln262_10 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name or_ln262_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_11 \
    op interface \
    ports { or_ln262_11 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name or_ln262_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_12 \
    op interface \
    ports { or_ln262_12 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name or_ln262_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_13 \
    op interface \
    ports { or_ln262_13 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name or_ln262_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_14 \
    op interface \
    ports { or_ln262_14 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name or_ln262_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_15 \
    op interface \
    ports { or_ln262_15 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name or_ln262_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_16 \
    op interface \
    ports { or_ln262_16 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name or_ln262_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_17 \
    op interface \
    ports { or_ln262_17 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name or_ln262_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_18 \
    op interface \
    ports { or_ln262_18 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name or_ln262_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_19 \
    op interface \
    ports { or_ln262_19 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name or_ln262_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_20 \
    op interface \
    ports { or_ln262_20 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name or_ln262_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_21 \
    op interface \
    ports { or_ln262_21 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name or_ln262_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_22 \
    op interface \
    ports { or_ln262_22 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name or_ln262_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_23 \
    op interface \
    ports { or_ln262_23 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name or_ln262_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_24 \
    op interface \
    ports { or_ln262_24 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name or_ln262_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_25 \
    op interface \
    ports { or_ln262_25 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name or_ln262_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_26 \
    op interface \
    ports { or_ln262_26 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name or_ln262_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_27 \
    op interface \
    ports { or_ln262_27 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name or_ln262_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_28 \
    op interface \
    ports { or_ln262_28 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name or_ln262_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln262_29 \
    op interface \
    ports { or_ln262_29 { I 15 vector } } \
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


