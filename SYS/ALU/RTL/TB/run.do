vlib work
vmap work work

vlog ../ALU.v
vlog ALU_tb.v

vsim -voptargs=+acc work.ALU_tb

add wave -divider "Clock & Reset"
add wave sim:/ALU_tb/CLK_tb
add wave sim:/ALU_tb/RST_tb

add wave -divider "Inputs"
add wave sim:/ALU_tb/A_tb
add wave sim:/ALU_tb/B_tb
add wave sim:/ALU_tb/ALU_FUN_tb
add wave sim:/ALU_tb/Enable_tb

add wave -divider "Outputs"
add wave sim:/ALU_tb/ALU_OUT_tb
add wave sim:/ALU_tb/OUT_VALID_tb

run -all