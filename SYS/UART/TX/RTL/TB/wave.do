quietly WaveActivateNextPane {} 0

add wave sim:/UART_TX_tb/clk
add wave sim:/UART_TX_tb/rst_n
add wave sim:/UART_TX_tb/P_DATA
add wave sim:/UART_TX_tb/DATA_VALID
add wave sim:/UART_TX_tb/PAR_EN
add wave sim:/UART_TX_tb/PAR_TYP

add wave sim:/UART_TX_tb/DUT/Busy
add wave sim:/UART_TX_tb/DUT/TX_OUT

add wave sim:/UART_TX_tb/DUT/ser_data
add wave sim:/UART_TX_tb/DUT/par_bit
add wave sim:/UART_TX_tb/DUT/mux_sel
add wave sim:/UART_TX_tb/DUT/ser_done

run 0