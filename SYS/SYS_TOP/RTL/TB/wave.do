# ============================================================
# SYS_TOP WAVE FILE
# ============================================================

quietly WaveActivateNextPane {} 0


# ============================================================
# TOP LEVEL
# ============================================================

add wave -noupdate -divider "===== TOP LEVEL ====="

add wave -noupdate /SYS_TB/REF_CLK
add wave -noupdate /SYS_TB/UART_CLK
add wave -noupdate /SYS_TB/RST_N_TB

add wave -noupdate /SYS_TB/UART_RX_IN
add wave -noupdate /SYS_TB/UART_TX_OUT

add wave -noupdate /SYS_TB/parity_error
add wave -noupdate /SYS_TB/framing_error


# ============================================================
# CLOCKS
# ============================================================

add wave -noupdate -divider "===== CLOCKS ====="

add wave -noupdate /SYS_TB/DUT/REF_CLK
add wave -noupdate /SYS_TB/DUT/UART_CLK

add wave -noupdate /SYS_TB/DUT/RX_CLK
add wave -noupdate /SYS_TB/DUT/TX_CLK

add wave -noupdate /SYS_TB/DUT/ALU_CLK

add wave -noupdate /SYS_TB/DUT/CLK_EN
add wave -noupdate /SYS_TB/DUT/CLK_DIV_EN


# ============================================================
# RESET
# ============================================================

add wave -noupdate -divider "===== RESET ====="

add wave -noupdate /SYS_TB/DUT/RST
add wave -noupdate /SYS_TB/DUT/RST_SYNC_1
add wave -noupdate /SYS_TB/DUT/RST_SYNC_2


# ============================================================
# UART RX
# ============================================================

add wave -noupdate -divider "===== UART RX ====="

add wave -noupdate /SYS_TB/DUT/UART_RX_IN

add wave -noupdate /SYS_TB/DUT/RX_CLK

add wave -noupdate /SYS_TB/DUT/RX_P_DATA
add wave -noupdate /SYS_TB/DUT/RX_DATA_VALID


# ============================================================
# DATA SYNC
# ============================================================

add wave -noupdate -divider "===== DATA SYNC ====="

add wave -noupdate /SYS_TB/DUT/RX_P_DATA
add wave -noupdate /SYS_TB/DUT/RX_DATA_VALID

add wave -noupdate /SYS_TB/DUT/RX_SYNC_DATA
add wave -noupdate /SYS_TB/DUT/RX_SYNC_VALID


# ============================================================
# SYS CTRL
# ============================================================

add wave -noupdate -divider "===== SYS CTRL ====="

add wave -noupdate /SYS_TB/DUT/SYS_CTRL_INST/current_state

add wave -noupdate /SYS_TB/DUT/RF_Address
add wave -noupdate /SYS_TB/DUT/RF_WrData

add wave -noupdate /SYS_TB/DUT/RF_WrEn
add wave -noupdate /SYS_TB/DUT/RF_RdEn

add wave -noupdate /SYS_TB/DUT/RF_RdData
add wave -noupdate /SYS_TB/DUT/RF_RdData_Valid


# ============================================================
# REGISTER FILE
# ============================================================

add wave -noupdate -divider "===== REGISTER FILE ====="

add wave -noupdate /SYS_TB/DUT/REG0
add wave -noupdate /SYS_TB/DUT/REG1
add wave -noupdate /SYS_TB/DUT/REG2
add wave -noupdate /SYS_TB/DUT/REG3


# ============================================================
# UART CONFIGURATION
# ============================================================

add wave -noupdate -divider "===== UART CONFIG ====="

add wave -noupdate /SYS_TB/DUT/PAR_EN
add wave -noupdate /SYS_TB/DUT/PAR_TYP
add wave -noupdate /SYS_TB/DUT/PRESCALE

add wave -noupdate /SYS_TB/DUT/RX_Div_Ratio

add wave -noupdate /SYS_TB/DUT/REG2
add wave -noupdate /SYS_TB/DUT/REG3


# ============================================================
# CLOCK DIVIDERS
# ============================================================

add wave -noupdate -divider "===== CLOCK DIVIDERS ====="

add wave -noupdate /SYS_TB/DUT/RX_Div_Ratio

add wave -noupdate /SYS_TB/DUT/RX_CLK
add wave -noupdate /SYS_TB/DUT/TX_CLK


# ============================================================
# ALU
# ============================================================

add wave -noupdate -divider "===== ALU ====="

add wave -noupdate /SYS_TB/DUT/ALU_CLK

add wave -noupdate /SYS_TB/DUT/ALU_EN
add wave -noupdate /SYS_TB/DUT/ALU_FUN

add wave -noupdate /SYS_TB/DUT/REG0
add wave -noupdate /SYS_TB/DUT/REG1

add wave -noupdate /SYS_TB/DUT/ALU_OUT
add wave -noupdate /SYS_TB/DUT/ALU_OUT_VALID


# ============================================================
# FIFO - WRITE SIDE
# ============================================================

add wave -noupdate -divider "===== FIFO WRITE ====="

add wave -noupdate /SYS_TB/DUT/TX_FIFO_WDATA
add wave -noupdate /SYS_TB/DUT/TX_FIFO_WINC

add wave -noupdate /SYS_TB/DUT/FIFO_FULL


# ============================================================
# FIFO - READ SIDE
# ============================================================

add wave -noupdate -divider "===== FIFO READ ====="

add wave -noupdate /SYS_TB/DUT/FIFO_RDATA
add wave -noupdate /SYS_TB/DUT/FIFO_RINC

add wave -noupdate /SYS_TB/DUT/FIFO_EMPTY


# ============================================================
# FIFO CLOCK DOMAINS
# ============================================================

add wave -noupdate -divider "===== FIFO CLOCK DOMAINS ====="

add wave -noupdate /SYS_TB/DUT/REF_CLK
add wave -noupdate /SYS_TB/DUT/TX_CLK

add wave -noupdate /SYS_TB/DUT/TX_FIFO_WINC
add wave -noupdate /SYS_TB/DUT/FIFO_RINC


# ============================================================
# UART TX
# ============================================================

add wave -noupdate -divider "===== UART TX ====="

add wave -noupdate /SYS_TB/DUT/TX_CLK
add wave -noupdate /SYS_TB/DUT/TX_BUSY

add wave -noupdate /SYS_TB/DUT/FIFO_RDATA
add wave -noupdate /SYS_TB/DUT/FIFO_EMPTY

add wave -noupdate /SYS_TB/DUT/UART_TX_OUT


# ============================================================
# COMPLETE DATA PATH
# ============================================================

add wave -noupdate -divider "===== COMPLETE DATA PATH ====="

add wave -noupdate /SYS_TB/DUT/RX_P_DATA
add wave -noupdate /SYS_TB/DUT/RX_DATA_VALID

add wave -noupdate /SYS_TB/DUT/RX_SYNC_DATA
add wave -noupdate /SYS_TB/DUT/RX_SYNC_VALID

add wave -noupdate /SYS_TB/DUT/SYS_CTRL_INST/current_state

add wave -noupdate /SYS_TB/DUT/RF_Address
add wave -noupdate /SYS_TB/DUT/RF_WrData
add wave -noupdate /SYS_TB/DUT/RF_WrEn
add wave -noupdate /SYS_TB/DUT/RF_RdEn

add wave -noupdate /SYS_TB/DUT/RF_RdData
add wave -noupdate /SYS_TB/DUT/RF_RdData_Valid

add wave -noupdate /SYS_TB/DUT/REG0
add wave -noupdate /SYS_TB/DUT/REG1

add wave -noupdate /SYS_TB/DUT/ALU_FUN
add wave -noupdate /SYS_TB/DUT/ALU_EN
add wave -noupdate /SYS_TB/DUT/ALU_OUT
add wave -noupdate /SYS_TB/DUT/ALU_OUT_VALID

add wave -noupdate /SYS_TB/DUT/TX_FIFO_WDATA
add wave -noupdate /SYS_TB/DUT/TX_FIFO_WINC

add wave -noupdate /SYS_TB/DUT/FIFO_RDATA
add wave -noupdate /SYS_TB/DUT/FIFO_RINC
add wave -noupdate /SYS_TB/DUT/FIFO_EMPTY

add wave -noupdate /SYS_TB/DUT/TX_BUSY
add wave -noupdate /SYS_TB/DUT/UART_TX_OUT


# ============================================================
# WAVE CONFIGURATION
# ============================================================

configure wave -namecolwidth 220
configure wave -valuecolwidth 120
configure wave -justifyvalue right
configure wave -signalnamewidth 1
configure wave -timelineunits ns


# ============================================================
# UPDATE
# ============================================================

update