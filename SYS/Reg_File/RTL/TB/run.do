vlib work
vmap work work

vlog ../Reg_File.v
vlog Reg_File_tb.v

vsim -voptargs=+acc work.Reg_File_tb

add wave -divider "Clock & Control"
add wave sim:/Reg_File_tb/CLK_tb
add wave sim:/Reg_File_tb/rst_n_tb
add wave sim:/Reg_File_tb/WrEn_tb
add wave sim:/Reg_File_tb/RdEn_tb

add wave -divider "Read / Write"
add wave sim:/Reg_File_tb/Address_tb
add wave sim:/Reg_File_tb/WrData_tb
add wave sim:/Reg_File_tb/RdData_tb
add wave sim:/Reg_File_tb/RdData_Valid_tb

add wave -divider "Registers"
add wave sim:/Reg_File_tb/Reg_0_tb
add wave sim:/Reg_File_tb/Reg_1_tb
add wave sim:/Reg_File_tb/Reg_2_tb
add wave sim:/Reg_File_tb/Reg_3_tb

run -all