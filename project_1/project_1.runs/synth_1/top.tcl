# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv {
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/Pseudo_random_generator.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/Comperator.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/RandomRegister.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/steppermotor.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/steppermotor_wrapper.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/SevenSeg_4digit.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/keypad4x4.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/top.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/press_control.sv
  D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/sources_1/new/Comperator_cont.sv
}
read_xdc D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files D:/Users/TEMP.PCLABS.000/Desktop/lolty/project_1/project_1.srcs/constrs_1/new/top.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
