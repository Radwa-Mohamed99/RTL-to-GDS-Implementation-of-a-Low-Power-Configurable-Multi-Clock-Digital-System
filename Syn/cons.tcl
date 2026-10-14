####################################################################################
# Constraints
####################################################################################

####################################################################################
# Section 0 : DC Variables
####################################################################################

# Prevent assign statements in generated netlist
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs


####################################################################################
# Section 1 : Clock Definitions
####################################################################################

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


####################################################################################
# Section 2 : Generated Clocks
####################################################################################

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
    [get_pins CLK_GATE_INST/GATED_CLK]

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
# Section 3 : Clock Relationships
####################################################################################

set_clock_groups \
    -asynchronous \
    -group [get_clocks {REF_CLK ALU_CLK}] \
    -group [get_clocks {UART_CLK TX_CLK RX_CLK}]


####################################################################################
# Section 4 : Input / Output Delays
####################################################################################

#===============================================================================
# Input
#===============================================================================

set_input_delay \
    54.2594 \
    -clock RX_CLK \
    [get_ports UART_RX_IN]


#===============================================================================
# Outputs
#===============================================================================

set_output_delay \
    1736.3 \
    -clock TX_CLK \
    [get_ports UART_TX_OUT]

set_output_delay \
    54.2594 \
    -clock RX_CLK \
    [get_ports parity_error]

set_output_delay \
    54.2594 \
    -clock RX_CLK \
    [get_ports framing_error]


####################################################################################
# Section 5 : Driving Cells
####################################################################################

set_driving_cell \
    -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
    -lib_cell BUFX2M \
    -pin Y \
    [get_ports UART_RX_IN]


####################################################################################
# Section 6 : Output Load
####################################################################################

set_load 0.1 [get_ports UART_TX_OUT]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]


####################################################################################
# Section 7 : Operating Conditions
####################################################################################

# Worst case for hold
# Worst case for setup

set_operating_conditions \
    -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c \
    -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c \
    -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
    -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c


####################################################################################
# Section 8 : Premapped Cells
####################################################################################

set_dont_touch [get_designs CLK_GATE]


####################################################################################
# End of Constraints
####################################################################################
