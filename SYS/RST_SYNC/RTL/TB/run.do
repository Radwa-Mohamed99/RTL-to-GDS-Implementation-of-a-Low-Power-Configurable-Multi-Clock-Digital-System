vlog ../RST_SYNC.v
vlog RST_SYNC_tb.v

vsim -voptargs=+acc work.RST_SYNC_tb

do wave.do

run -all