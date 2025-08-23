vlib work
vlog DSP48A1.v REG_MUX.v test_bench.v
vsim -voptargs=+acc work.test_bench
add wave *
run -all
#quit -sim


