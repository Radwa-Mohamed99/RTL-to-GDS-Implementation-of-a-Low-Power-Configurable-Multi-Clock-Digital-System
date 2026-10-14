# ============================================
# DATA_SYNC Waveform
# ============================================

add wave -divider "Inputs"

add wave -radix binary /DATA_SYNC_tb/CLK
add wave -radix binary /DATA_SYNC_tb/RST
add wave -radix binary /DATA_SYNC_tb/bus_enable
add wave -radix hexadecimal /DATA_SYNC_tb/Unsync_bus

add wave -divider "Outputs"

add wave -radix binary /DATA_SYNC_tb/enable_pulse
add wave -radix hexadecimal /DATA_SYNC_tb/sync_bus

add wave -divider "Internal Signals"

add wave -radix binary /DATA_SYNC_tb/DUT/enable_sync
add wave -radix binary /DATA_SYNC_tb/DUT/sync_enable
add wave -radix binary /DATA_SYNC_tb/DUT/sync_enable_d
add wave -radix binary /DATA_SYNC_tb/DUT/SEL

# Waveform formatting
configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -justifyvalue right

# Zoom waveform
wave zoom full
