onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+single_text_mem -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.single_text_mem xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {single_text_mem.udo}

run -all

endsim

quit -force
