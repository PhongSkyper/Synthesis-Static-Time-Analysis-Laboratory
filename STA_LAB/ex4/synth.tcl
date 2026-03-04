set_db init_lib_search_path {/home/yellow/ee3201_2/Desktop/lab3/gpdk045_lib}
set_db init_hdl_search_path {/home/yellow/ee3201_2/Desktop/lab3/EX4/00_src}
read_libs slow_vdd1v2_basicCells_hvt.lib

read_hdl -sv alu_low_power.sv
elaborate

read_sdc constraints.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

#Generate reports

report_timing > 02_reports/timing_alu_low_power.rpt
report_timing -nworst 10 > 02_reports/alu_low_power_timing_10_path.rpt
report_power > 02_reports/power_alu.rpt
report_area > 02_reports/area_alu.rpt
report_qor > 02_reports/qor_alu.rpt

#Generate netlist and sdc file

write_hdl > 03_outputs/alu_netlist.sv
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > 03_outputs/alu_low_power_delay.sdf
