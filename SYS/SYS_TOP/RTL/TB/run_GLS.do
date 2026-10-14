# run_GLS.do  -> vsim -c -do run_GLS.do
vlib work
vmap work work

vlog /home/ICer/Labs/System/std_cells/tsmc13_m.v
vlog -sv /home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.v
vlog -sv SYS_tb_1suite.v

vsim -sdfmax /SYS_TB_1S/DUT=/home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.sdf -sdfnoerror work.SYS_TB_1S


run -all


