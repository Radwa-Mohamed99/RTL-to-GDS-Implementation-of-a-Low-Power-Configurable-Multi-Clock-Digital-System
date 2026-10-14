vlib work
vmap work work

vlog ../ASYNC_FIFO.v
vlog ../FIFO_MEM_CNTRL.v
vlog ../FIFO_WR.v
vlog ../FIFO_RD.v
vlog ../DF_SYNC.v
vlog ASYNC_FIFO_tb.v

vsim -voptargs=+acc work.ASYNC_FIFO_tb

do wave.do

run -all