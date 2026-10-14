# ============================================================
# UART RX - WAVE.DO
# ============================================================

quietly WaveActivateNextPane {} 0

# ============================================================
# TESTBENCH SIGNALS
# ============================================================

add wave -noupdate -divider "===== TESTBENCH ====="

add wave -noupdate -radix binary   /UART_RX_tb/RX_IN
add wave -noupdate -radix binary   /UART_RX_tb/rst_n
add wave -noupdate -radix binary   /UART_RX_tb/PAR_EN
add wave -noupdate -radix binary   /UART_RX_tb/PAR_TYP
add wave -noupdate -radix unsigned /UART_RX_tb/Prescale

# ============================================================
# UART RX OUTPUTS
# ============================================================

add wave -noupdate -divider "===== UART RX OUTPUTS ====="

add wave -noupdate -radix hexadecimal /UART_RX_tb/P_DATA
add wave -noupdate -radix binary      /UART_RX_tb/DATA_VALID
add wave -noupdate -radix binary      /UART_RX_tb/PAR_ERR
add wave -noupdate -radix binary      /UART_RX_tb/Stop_ERR

# ============================================================
# INTERNAL COUNTERS
# ============================================================

add wave -noupdate -divider "===== INTERNAL COUNTERS ====="

add wave -noupdate -radix unsigned /UART_RX_tb/DUT/bit_cnt
add wave -noupdate -radix unsigned /UART_RX_tb/DUT/edge_cnt

# ============================================================
# DATA SAMPLING
# ============================================================

add wave -noupdate -divider "===== DATA SAMPLING ====="

add wave -noupdate -radix binary /UART_RX_tb/DUT/sampled_bit
add wave -noupdate -radix binary /UART_RX_tb/DUT/data_samp_en

# ============================================================
# CONTROL SIGNALS
# ============================================================

add wave -noupdate -divider "===== CONTROL SIGNALS ====="

add wave -noupdate -radix binary /UART_RX_tb/DUT/edge_bit_counter_en
add wave -noupdate -radix binary /UART_RX_tb/DUT/deser_en
add wave -noupdate -radix binary /UART_RX_tb/DUT/strt_chk_en
add wave -noupdate -radix binary /UART_RX_tb/DUT/par_chk_en
add wave -noupdate -radix binary /UART_RX_tb/DUT/stp_chk_en

# ============================================================
# ERROR CHECKS
# ============================================================

add wave -noupdate -divider "===== ERROR CHECKS ====="

add wave -noupdate -radix binary /UART_RX_tb/DUT/strt_glitch
add wave -noupdate -radix binary /UART_RX_tb/DUT/par_err
add wave -noupdate -radix binary /UART_RX_tb/DUT/stp_err

# ============================================================
# CLOCK
# ============================================================

add wave -noupdate -divider "===== CLOCK ====="

add wave -noupdate -radix binary /UART_RX_tb/clk

# ============================================================
# WAVE WINDOW SETTINGS
# ============================================================

configure wave -namecolwidth 220
configure wave -valuecolwidth 100
configure wave -signalnamewidth 1
configure wave -timelineunits ns

# ============================================================
# UPDATE & ZOOM
# ============================================================

update
wave zoom full