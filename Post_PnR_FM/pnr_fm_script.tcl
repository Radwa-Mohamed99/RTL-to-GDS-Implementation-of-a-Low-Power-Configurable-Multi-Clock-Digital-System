
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_DFT

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/ICer/Labs/System/PnR/DFT/SYS_TOP_DFT.svf"


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
/home/ICer/Labs/System/SYS/CLK_GATE_DFT/CLK_GATE_DFT.v \
/home/ICer/Labs/System/SYS/Reg_File/RTL/Reg_File.v \
/home/ICer/Labs/System/SYS/PULSE_GEN/RTL/PULSE_GEN.v \
/home/ICer/Labs/System/SYS/MUX2X1_DFT/RTL/MUX2X1.v \
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
/home/ICer/Labs/System/SYS/SYS_TOP_DFT/SYS_TOP_DFT.v \
/home/ICer/Labs/System/SYS/SYS_CTRL/RTL/SYS_CTRL.v]

## set the top Reference Design 

set_reference_design SYS_TOP_DFT
set_top SYS_TOP_DFT


######################## Implementation Container #########################

## Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files
 
 read_verilog -container Imp /home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.v


## set the top Implementation Design

set_implementation_design SYS_TOP_DFT
set_top SYS_TOP_DFT

############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/*SI*
set_dont_verify_points -type port Imp:/WORK/*/*SI*

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/*SO*
set_dont_verify_points -type port Imp:/WORK/*/*SO*

############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0

########################### matching Compare points ##########################

match

################################# verify #####################################

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
