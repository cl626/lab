# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/lab4/single_cpu/single_cpu.cache/wt [current_project]
set_property parent.project_path E:/lab4/single_cpu/single_cpu.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo e:/lab4/single_cpu/single_cpu.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files E:/lab4/testtext.coe
add_files E:/lab4/testdata.coe
add_files E:/lab4/test.coe/sub.coe
add_files E:/lab4/test.coe/sub_data.coe
add_files e:/lab4/fib_text.coe
add_files e:/lab4/fib_data.coe
add_files e:/lab4/test.coe/testtext.coe
add_files e:/lab4/test.coe/testdata.coe
add_files e:/lab4/test.coe/fib_text.coe
add_files e:/lab4/test.coe/fib_data.coe
read_verilog -library xil_defaultlib {
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/Imm.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/alu.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/alucontrol.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/cpu.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/cu.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/regfile.v
  E:/lab4/single_cpu/single_cpu.srcs/sources_1/new/single.v
}
read_ip -quiet E:/lab4/single_cpu/single_cpu.srcs/sources_1/ip/single_data_mem/single_data_mem.xci
set_property used_in_implementation false [get_files -all e:/lab4/single_cpu/single_cpu.srcs/sources_1/ip/single_data_mem/single_data_mem_ooc.xdc]

read_ip -quiet E:/lab4/single_cpu/single_cpu.srcs/sources_1/ip/single_text_mem/single_text_mem.xci
set_property used_in_implementation false [get_files -all e:/lab4/single_cpu/single_cpu.srcs/sources_1/ip/single_text_mem/single_text_mem_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/lab4/single_cpu/single_cpu.srcs/constrs_1/new/single.xdc
set_property used_in_implementation false [get_files E:/lab4/single_cpu/single_cpu.srcs/constrs_1/new/single.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top single -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef single.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file single_utilization_synth.rpt -pb single_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
