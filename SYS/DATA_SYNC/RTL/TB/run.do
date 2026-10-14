# ============================================
# DATA_SYNC Simulation Script
# ============================================

vlib work
vmap work work

# Compile DUT and Testbench
vlog ../DATA_SYNC.v
vlog DATA_SYNC_tb.v

# Start simulation
vsim -voptargs=+acc work.DATA_SYNC_tb

# Add waves
do wave.do

# Run simulation
run -all
