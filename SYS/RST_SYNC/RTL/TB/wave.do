add wave -divider "RST_SYNC"
add wave sim:/RST_SYNC_tb/CLK
add wave sim:/RST_SYNC_tb/RST
add wave sim:/RST_SYNC_tb/SYNC_RST
add wave sim:/RST_SYNC_tb/DUT/sync_reg

run -all