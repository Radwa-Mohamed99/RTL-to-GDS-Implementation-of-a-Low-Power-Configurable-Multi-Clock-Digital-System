# ============================================
#  Simulation Script
# ============================================

vlib work
vmap work work

# Compile DUT and Testbench
vlog ../ClkDiv.v
vlog ClkDiv_tb.v

# Start simulation
vsim -voptargs=+acc work.ClkDiv_tb

# Add waves
do wave.do

# Run simulation
run -all
