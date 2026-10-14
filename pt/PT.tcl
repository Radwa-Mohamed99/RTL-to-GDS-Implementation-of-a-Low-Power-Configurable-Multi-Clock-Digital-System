set_app_var power_enable_analysis true
set_app_var power_analysis_mode time_based
set power_vcd_time_unit 1ns
#set_app_var power_analysis_mode averaged 

set report_dir /home/ICer/Labs/System/pt
file mkdir $report_dir

set Out_report SYS_TOP_DFT
#------------------------------------------------------------------------------
# Libraries
#------------------------------------------------------------------------------
lappend search_path /home/ICer/Labs/System/std_cells/libs

set SSLIB scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
set TTLIB scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
set FFLIB scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db

set target_library [list $TTLIB $SSLIB $FFLIB]
set link_library   [list * $TTLIB $SSLIB $FFLIB]

#------------------------------------------------------------------------------
# Read Design Files
#------------------------------------------------------------------------------

# Read Verilog Netlist
read_verilog /home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.v

current_design SYS_TOP_DFT

link_design

# Read SDC File
read_sdc /home/ICer/Labs/System/PnR/DFT/sdc/SYS_TOP_DFT_func_pt.sdc

set_operating_conditions scmetro_tsmc_cl013g_rvt_tt_1p2v_25c \
    -library scmetro_tsmc_cl013g_rvt_tt_1p2v_25c

# Read SDF File
read_sdf /home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT_rem.sdf

#------------------------------------------------------------------------------
# Read Switching Activity
#------------------------------------------------------------------------------
read_vcd -strip_path SYS_DFT_TB_FUNC/DUT -time {0 5600000} \
    /home/ICer/Labs/System/SYS/SYS_TOP_DFT/GLS/SYS_DFT_TB_FUNC.vcd

update_power

#------------------------------------------------------------------------------
# Reports
#------------------------------------------------------------------------------
report_switching_activity -list_not_annotated > $report_dir/not_annotated.rpt
report_power -hierarchy > $report_dir/${Out_report}_hier.rpt
report_power                              > $report_dir/$Out_report.rpt

echo "----------------------------------------"
echo "PrimeTime PX Analysis Finished"
echo "Reports saved in:"
echo "$report_dir"
echo "----------------------------------------"
#start_gui
exit

