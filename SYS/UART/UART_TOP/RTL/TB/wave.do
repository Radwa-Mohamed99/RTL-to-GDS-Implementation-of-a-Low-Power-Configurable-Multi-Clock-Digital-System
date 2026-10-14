# ============================================================
# UART FULL DUPLEX TESTBENCH - WAVE.DO
# ============================================================

quietly WaveActivateNextPane {} 0


# ============================================================
# CLOCKS & RESET
# ============================================================

add wave -divider "===== CLOCKS & RESET ====="

add wave -radix binary sim:/UART_tb/TX_CLK
add wave -radix binary sim:/UART_tb/RX_CLK
add wave -radix binary sim:/UART_tb/RST


# ============================================================
# UART CONFIGURATION
# ============================================================

add wave -divider "===== UART CONFIGURATION ====="

add wave -radix unsigned sim:/UART_tb/Prescale
add wave -radix binary   sim:/UART_tb/PAR_EN
add wave -radix binary   sim:/UART_tb/PAR_TYP


# ============================================================
# UART A - TX
# ============================================================

add wave -divider "===== UART A TX ====="

add wave -radix hexadecimal sim:/UART_tb/A_TX_DATA
add wave -radix binary     sim:/UART_tb/A_TX_VALID
add wave -radix binary     sim:/UART_tb/A_TX_OUT
add wave -radix binary     sim:/UART_tb/A_TX_BUSY


# ============================================================
# UART A - RX
# ============================================================

add wave -divider "===== UART A RX ====="

add wave -radix hexadecimal sim:/UART_tb/A_RX_DATA
add wave -radix binary     sim:/UART_tb/A_RX_VALID
add wave -radix binary     sim:/UART_tb/A_PAR_ERR
add wave -radix binary     sim:/UART_tb/A_FRAME_ERR


# ============================================================
# UART B - TX
# ============================================================

add wave -divider "===== UART B TX ====="

add wave -radix hexadecimal sim:/UART_tb/B_TX_DATA
add wave -radix binary     sim:/UART_tb/B_TX_VALID
add wave -radix binary     sim:/UART_tb/B_TX_OUT
add wave -radix binary     sim:/UART_tb/B_TX_BUSY


# ============================================================
# UART B - RX
# ============================================================

add wave -divider "===== UART B RX ====="

add wave -radix hexadecimal sim:/UART_tb/B_RX_DATA
add wave -radix binary     sim:/UART_tb/B_RX_VALID
add wave -radix binary     sim:/UART_tb/B_PAR_ERR
add wave -radix binary     sim:/UART_tb/B_FRAME_ERR


# ============================================================
# SERIAL CONNECTION
# ============================================================

add wave -divider "===== SERIAL CONNECTION ====="

add wave -radix binary sim:/UART_tb/A_TO_B
add wave -radix binary sim:/UART_tb/B_TO_A


# ============================================================
# EXPECTED DATA
# ============================================================

add wave -divider "===== EXPECTED DATA ====="

add wave -radix hexadecimal sim:/UART_tb/expected_A_RX
add wave -radix hexadecimal sim:/UART_tb/expected_B_RX

add wave -radix binary sim:/UART_tb/A_RX_SEEN
add wave -radix binary sim:/UART_tb/B_RX_SEEN

add wave -radix binary sim:/UART_tb/A_PASS
add wave -radix binary sim:/UART_tb/B_PASS


# ============================================================
# UART A INTERNAL SIGNALS
# ============================================================

add wave -divider "===== UART A INTERNAL ====="

add wave -radix binary sim:/UART_tb/UART_A/RST
add wave -radix binary sim:/UART_tb/UART_A/TX_CLK
add wave -radix binary sim:/UART_tb/UART_A/RX_CLK

add wave -radix binary sim:/UART_tb/UART_A/RX_IN_S
add wave -radix hexadecimal sim:/UART_tb/UART_A/RX_OUT_P
add wave -radix binary sim:/UART_tb/UART_A/RX_OUT_V

add wave -radix hexadecimal sim:/UART_tb/UART_A/TX_IN_P
add wave -radix binary sim:/UART_tb/UART_A/TX_IN_V
add wave -radix binary sim:/UART_tb/UART_A/TX_OUT_S
add wave -radix binary sim:/UART_tb/UART_A/TX_OUT_V


# ============================================================
# UART B INTERNAL SIGNALS
# ============================================================

add wave -divider "===== UART B INTERNAL ====="

add wave -radix binary sim:/UART_tb/UART_B/RST
add wave -radix binary sim:/UART_tb/UART_B/TX_CLK
add wave -radix binary sim:/UART_tb/UART_B/RX_CLK

add wave -radix binary sim:/UART_tb/UART_B/RX_IN_S
add wave -radix hexadecimal sim:/UART_tb/UART_B/RX_OUT_P
add wave -radix binary sim:/UART_tb/UART_B/RX_OUT_V

add wave -radix hexadecimal sim:/UART_tb/UART_B/TX_IN_P
add wave -radix binary sim:/UART_tb/UART_B/TX_IN_V
add wave -radix binary sim:/UART_tb/UART_B/TX_OUT_S
add wave -radix binary sim:/UART_tb/UART_B/TX_OUT_V


# ============================================================
# WAVE WINDOW CONFIGURATION
# ============================================================

configure wave -namecolwidth 220
configure wave -valuecolwidth 120
configure wave -signalnamewidth 1
configure wave -timelineunits ns

update