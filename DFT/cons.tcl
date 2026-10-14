
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. DFT Clock

set SCAN_CLK_NAME SCAN_CLK
set SCAN_CLK_PER 100
set SCAN_CLK_SETUP_SKEW 0.2
set SCAN_CLK_HOLD_SKEW 0.1
set SCAN_CLK_RISE 0.05
set SCAN_CLK_FALL 0.05


create_clock -name $SCAN_CLK_NAME -period $SCAN_CLK_PER  [get_ports scan_clk]
set_clock_uncertainty -setup $SCAN_CLK_SETUP_SKEW [get_clocks SCAN_CLK]
set_clock_uncertainty -hold $SCAN_CLK_HOLD_SKEW  [get_clocks SCAN_CLK]
set_clock_transition -rise $SCAN_CLK_RISE  [get_clocks SCAN_CLK]
set_clock_transition -fall $SCAN_CLK_FALL  [get_clocks SCAN_CLK]

#1. Master Clocks

#===============================================================================
# 1. REF_CLK
#===============================================================================

set CLK_NAME1 REF_CLK
set CLK_PER1 20
set CLK_SETUP_SKEW1 0.2
set CLK_HOLD_SKEW1  0.1
set CLK_LAT1 0
set CLK_RISE1 0.05
set CLK_FALL1 0.05

create_clock \
    -name $CLK_NAME1 \
    -period $CLK_PER1 \
    -waveform "0 [expr $CLK_PER1/2]" \
    [get_ports REF_CLK]

set_clock_uncertainty \
    -setup $CLK_SETUP_SKEW1 \
    [get_clocks $CLK_NAME1]

set_clock_uncertainty \
    -hold $CLK_HOLD_SKEW1 \
    [get_clocks $CLK_NAME1]

set_clock_transition \
    -rise $CLK_RISE1 \
    [get_clocks $CLK_NAME1]

set_clock_transition \
    -fall $CLK_FALL1 \
    [get_clocks $CLK_NAME1]

set_clock_latency \
    $CLK_LAT1 \
    [get_clocks $CLK_NAME1]

set_dont_touch_network [get_ports REF_CLK]


#===============================================================================
# 2. UART_CLK
#===============================================================================

set CLK_NAME2 UART_CLK
set CLK_PER2 271.297
set CLK_SETUP_SKEW2 0.2
set CLK_HOLD_SKEW2  0.1
set CLK_LAT2 0
set CLK_RISE2 0.05
set CLK_FALL2 0.05

create_clock \
    -name $CLK_NAME2 \
    -period $CLK_PER2 \
    -waveform "0 [expr $CLK_PER2/2]" \
    [get_ports UART_CLK]

set_clock_uncertainty \
    -setup $CLK_SETUP_SKEW2 \
    [get_clocks $CLK_NAME2]

set_clock_uncertainty \
    -hold $CLK_HOLD_SKEW2 \
    [get_clocks $CLK_NAME2]

set_clock_transition \
    -rise $CLK_RISE2 \
    [get_clocks $CLK_NAME2]

set_clock_transition \
    -fall $CLK_FALL2 \
    [get_clocks $CLK_NAME2]

set_clock_latency \
    $CLK_LAT2 \
    [get_clocks $CLK_NAME2]

set_dont_touch_network [get_ports UART_CLK]

#2. Generated clocks

#===============================================================================
# 1. ALU_CLK
#
# REF_CLK --> CLK_GATE_INST --> ALU_CLK
#===============================================================================

create_generated_clock \
    -master_clock $CLK_NAME1 \
    -source [get_ports REF_CLK] \
    -name ALU_CLK \
    -divide_by 1 \
    [get_pins CLK_GATE_DFT_INST/GATED_CLK]

set_clock_uncertainty \
    -setup $CLK_SETUP_SKEW1 \
    [get_clocks ALU_CLK]

set_clock_uncertainty \
    -hold $CLK_HOLD_SKEW1 \
    [get_clocks ALU_CLK]

set_dont_touch_network [get_clocks ALU_CLK]


#===============================================================================
# 2. RX_CLK
#
# UART_CLK --> RX_CLK_DIV_INST --> RX_CLK
#===============================================================================

create_generated_clock \
    -master_clock $CLK_NAME2 \
    -source [get_ports UART_CLK] \
    -name RX_CLK \
    -divide_by 1 \
    [get_pins RX_CLK_DIV_INST/O_div_clk]

set_clock_uncertainty \
    -setup $CLK_SETUP_SKEW2 \
    [get_clocks RX_CLK]

set_clock_uncertainty \
    -hold $CLK_HOLD_SKEW2 \
    [get_clocks RX_CLK]

set_dont_touch_network [get_clocks RX_CLK]


#===============================================================================
# 3. TX_CLK
#
# UART_CLK --> TX_CLK_DIV_INST --> TX_CLK
#===============================================================================

create_generated_clock \
    -master_clock $CLK_NAME2 \
    -source [get_ports UART_CLK] \
    -name TX_CLK \
    -divide_by 32 \
    [get_pins TX_CLK_DIV_INST/O_div_clk]

set_clock_uncertainty \
    -setup $CLK_SETUP_SKEW2 \
    [get_clocks TX_CLK]

set_clock_uncertainty \
    -hold $CLK_HOLD_SKEW2 \
    [get_clocks TX_CLK]

set_dont_touch_network [get_clocks TX_CLK]


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous \
    -group [get_clocks {REF_CLK ALU_CLK}] \
    -group [get_clocks {UART_CLK TX_CLK RX_CLK}]

set_clock_groups -logically_exclusive \
    -group [get_clocks SCAN_CLK] \
    -group [get_clocks {REF_CLK ALU_CLK UART_CLK TX_CLK RX_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################

#Constrain Input Paths
set_input_delay 54.2594 -clock RX_CLK [get_port UART_RX_IN]
set_input_delay 20      -clock SCAN_CLK [get_port SI]
set_input_delay 20      -clock SCAN_CLK [get_port SE]
set_input_delay 20      -clock SCAN_CLK [get_port test_mode]

#Constrain Output Paths
set_output_delay 1736.3  -clock TX_CLK [get_port UART_TX_OUT]
set_output_delay 54.2594 -clock RX_CLK [get_port parity_error]
set_output_delay 54.2594 -clock RX_CLK [get_port framing_error]
set_output_delay 20      -clock SCAN_CLK [get_port SO]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SI]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SE]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port test_mode]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports UART_TX_OUT]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]

set_load 0.1 [get_port SO]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : SET CASE ANALYSIS ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_port test_mode] 

####################################################################################
           #########################################################
                  #### Section 8 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 9 : premapped cells ####
           #########################################################
####################################################################################

# بدل ده:
# set_dont_touch [get_designs CLK_GATE_DFT]
# استخدم:
set_dont_touch [get_cells CLK_GATE_DFT_INST/U0_TLATNCAX12M]

####################################################################################

