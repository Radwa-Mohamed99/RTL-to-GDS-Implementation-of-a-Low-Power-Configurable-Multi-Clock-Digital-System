add wave -divider "CLOCKS"
add wave sim:/ASYNC_FIFO_tb/wclk
add wave sim:/ASYNC_FIFO_tb/rclk

add wave -divider "RESET"
add wave sim:/ASYNC_FIFO_tb/wrst_n
add wave sim:/ASYNC_FIFO_tb/rrst_n

add wave -divider "WRITE"
add wave sim:/ASYNC_FIFO_tb/winc
add wave sim:/ASYNC_FIFO_tb/wdata
add wave sim:/ASYNC_FIFO_tb/wfull

add wave -divider "READ"
add wave sim:/ASYNC_FIFO_tb/rinc
add wave sim:/ASYNC_FIFO_tb/rdata
add wave sim:/ASYNC_FIFO_tb/rempty

add wave -divider "FIFO INTERNAL"
add wave sim:/ASYNC_FIFO_tb/DUT/waddr
add wave sim:/ASYNC_FIFO_tb/DUT/raddr
add wave sim:/ASYNC_FIFO_tb/DUT/gray_wptr
add wave sim:/ASYNC_FIFO_tb/DUT/gray_rptr
add wave sim:/ASYNC_FIFO_tb/DUT/wq2_rptr
add wave sim:/ASYNC_FIFO_tb/DUT/rq2_wptr

add wave -divider "FIFO MEMORY"
add wave sim:/ASYNC_FIFO_tb/DUT/U_FIFO_MEM/*

add wave -divider "WRITE CONTROLLER"
add wave sim:/ASYNC_FIFO_tb/DUT/U_FIFO_WR/*

add wave -divider "READ CONTROLLER"
add wave sim:/ASYNC_FIFO_tb/DUT/U_FIFO_RD/*

add wave -divider "SYNC"
add wave sim:/ASYNC_FIFO_tb/DUT/U0_R2W/*
add wave sim:/ASYNC_FIFO_tb/DUT/U0_W2R/*

configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -timelineunits ns

WaveRestoreZoom {0 ns} {500 ns}