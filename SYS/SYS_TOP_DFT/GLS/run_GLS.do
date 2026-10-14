# run_GLS.do  -> vsim -c -do run_GLS.do
vlib work
vmap work work

vlog /home/ICer/Labs/System/std_cells/tsmc13_m.v
vlog -sv /home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.v
vlog -sv SYS_DFT_TB_FUNC.v

vsim -sdfmax /SYS_DFT_TB_FUNC/DUT=/home/ICer/Labs/System/PnR/PnR/export/SYS_TOP_DFT.sdf -sdfnoerror work.SYS_DFT_TB_FUNC


run -all


