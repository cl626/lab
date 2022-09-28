# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/����/OneDrive/����/final/pipeline_cpu.runs/synth_1/.Xil/Vivado-13220-rocket/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -include {
    c:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem
    c:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/ip/single_text_mem
  } {
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/Imm.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alu.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alucontrol.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cpu.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cu.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/ex_mem.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/forward.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/hazard.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/id_ex.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/if_id.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/new/mem_wb.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/regfile.v
      C:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/single.v
    }
      rt::read_vhdl -lib dist_mem_gen_v8_0_13 c:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd
      rt::read_vhdl -lib xil_defaultlib {
      c:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd
      c:/Users/����/OneDrive/����/final/pipeline_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top pipeline
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "C:/Users/����/OneDrive/����/final/pipeline_cpu.runs/synth_1/.Xil/Vivado-13220-rocket/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}