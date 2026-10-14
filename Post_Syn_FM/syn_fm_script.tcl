
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf /home/ICer/Labs/System/Syn/SYS_TOP.svf

set SSLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files

read_verilog -container Ref [list \
/home/ICer/Labs/System/SYS/ALU/RTL/ALU.v \
/home/ICer/Labs/System/SYS/CLK_DIV/RTL/ClkDiv.v \
/home/ICer/Labs/System/SYS/CLK_DIV_MUX/RTL/CLK_DIV_MUX.v \
/home/ICer/Labs/System/SYS/CLK_GATE/RTL/CLK_GATE.v \
/home/ICer/Labs/System/SYS/Reg_File/RTL/Reg_File.v \
/home/ICer/Labs/System/SYS/PULSE_GEN/RTL/PULSE_GEN.v \
/home/ICer/Labs/System/SYS/RST_SYNC/RTL/RST_SYNC.v \
/home/ICer/Labs/System/SYS/DATA_SYNC/RTL/Data_SYNC.v \
/home/ICer/Labs/System/SYS/ASYNC_FIFO/RTL/ASYNC_FIFO.v \
/home/ICer/Labs/System/SYS/ASYNC_FIFO/RTL/FIFO_MEM_CNTRL.v \
/home/ICer/Labs/System/SYS/ASYNC_FIFO/RTL/FIFO_WR.v \
/home/ICer/Labs/System/SYS/ASYNC_FIFO/RTL/FIFO_RD.v \
/home/ICer/Labs/System/SYS/ASYNC_FIFO/RTL/DF_SYNC.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/data_sampling.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/deserializer.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/edge_bit_counter.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/parity_check.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/stop_check.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/start_check.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/uart_rx_fsm.v \
/home/ICer/Labs/System/SYS/UART/RX/RTL/UART_RX.v \
/home/ICer/Labs/System/SYS/UART/TX/RTL/TX_MUX.v \
/home/ICer/Labs/System/SYS/UART/TX/RTL/Parity_Calc.v \
/home/ICer/Labs/System/SYS/UART/TX/RTL/serializer.v \
/home/ICer/Labs/System/SYS/UART/TX/RTL/FSM.v \
/home/ICer/Labs/System/SYS/UART/TX/RTL/UART_TX.v \
/home/ICer/Labs/System/SYS/UART/UART_TOP/RTL/UART.v \
/home/ICer/Labs/System/SYS/SYS_TOP/RTL/SYS_TOP.v \
/home/ICer/Labs/System/SYS/SYS_CTRL/RTL/SYS_CTRL.v]

## set the top Reference Design 

set_reference_design SYS_TOP
set_top SYS_TOP

######################## Implementation Container #########################

## Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files
 
 read_verilog -container Imp "/home/ICer/Labs/System/Syn/netlists/SYS_TOP.v"


## set the top Implementation Design

set_implementation_design SYS_TOP
set_top SYS_TOP

## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
