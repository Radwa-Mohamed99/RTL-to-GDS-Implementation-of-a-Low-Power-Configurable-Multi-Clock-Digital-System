# ============================================================
# ClkDiv - WAVE.DO
# ============================================================

quietly WaveActivateNextPane {} 0

# ============================================================
# TESTBENCH SIGNALS
# ============================================================

add wave -divider "TESTBENCH"

add wave -radix binary /ClkDiv_tb/I_ref_clk
add wave -radix binary /ClkDiv_tb/I_rst
add wave -radix binary /ClkDiv_tb/I_clk_en
add wave -radix unsigned /ClkDiv_tb/I_div_ratio
add wave -radix binary /ClkDiv_tb/O_div_clk


# ============================================================
# DUT INTERNAL SIGNALS
# ============================================================

add wave -divider "DUT INTERNAL"

add wave -radix unsigned /ClkDiv_tb/DUT/count
add wave -radix binary /ClkDiv_tb/DUT/div_clk
add wave -radix binary /ClkDiv_tb/DUT/odd_edge_tog

add wave -radix binary /ClkDiv_tb/DUT/is_odd
add wave -radix binary /ClkDiv_tb/DUT/is_one
add wave -radix binary /ClkDiv_tb/DUT/is_zero
add wave -radix binary /ClkDiv_tb/DUT/clk_en

add wave -radix unsigned /ClkDiv_tb/DUT/edge_flip_half
add wave -radix unsigned /ClkDiv_tb/DUT/edge_flip_full


# ============================================================
# WAVE WINDOW SETTINGS
# ============================================================

configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -signalnamewidth 1
configure wave -timelineunits ns

TreeUpdate [SetDefaultTree]


# ============================================================
# CURSOR / ZOOM
# ============================================================

WaveRestoreZoom {0 ns} {65000 ns}