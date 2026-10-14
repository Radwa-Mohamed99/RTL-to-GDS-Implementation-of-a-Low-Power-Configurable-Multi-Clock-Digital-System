
# Clear previous wave configuration
delete wave *

# Testbench signals
add wave -r /SYS_TB/*

# DUT hierarchy and internal signals
add wave -r /SYS_TB/DUT/*

# Display signals in binary/hex as appropriate
configure wave -namecolwidth 250
configure wave -valuecolwidth 120

# Zoom to fit simulation
wave zoom full
