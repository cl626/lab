onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib single_data_mem_opt

do {wave.do}

view wave
view structure
view signals

do {single_data_mem.udo}

run -all

quit -force
