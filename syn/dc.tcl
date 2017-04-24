#-------------------------------------------------------------------------------------------------------#
#                                              VARIABLE DEFINITION                                      #
#-------------------------------------------------------------------------------------------------------#
# Change DESIGN_NAME to synthesize other designs
# array_fix_bw_mul
# array_var_bw_mul
# array_var_bw_mul_bad 
# dadda_fix_bw_mul
# dadda_var_bw_mul
# dadda_var_bw_mul_bad 
# vbw_adder_nco
# vbw_adder_nci
# vbw_adder_bsln
# vbw_cla_bsln
# vbw_cla_kill
# vbw_cla_nci
set DESIGN_NAME vbw_cla_nci
# Other stuff should not need to be changed
set REPORTS_DIR ${DESIGN_NAME}.reports
set RESULTS_DIR ${DESIGN_NAME}.results
set DCRM_FINAL_AREA_REPORT ${DESIGN_NAME}.area.rpt
set DCRM_FINAL_POWER_REPORT ${DESIGN_NAME}.power.rpt
set WDIR [pwd]
set DCRM_FINAL_QOR_REPORT ${DESIGN_NAME}.qor.rpt
set TOP ${WDIR}/..
set DO_TOPO false
set DO_CLOCK_GATING false
set DO_RETIMING false
set DO_LEAKAGE_OPT false
exec rm -rf ${RESULTS_DIR} ${REPORTS_DIR}
exec mkdir ${RESULTS_DIR} ${REPORTS_DIR}

#* set DO_AREA_RECOVERY true

#* set_svf ${RESULTS_DIR}/${DESIGN_NAME}.svf

source  common.tcl

#-------------------------------------------------------------------------------------------------------#
#                                         APP VARIABLE DEFINITION                                       #
#-------------------------------------------------------------------------------------------------------#
#* set_app_var verilogout_no_tri true
#* set_app_var timing_enable_multiple_clocks_per_reg true
#* set_app_var enable_recovery_removal_arcs true
#* set_app_var verilogout_show_unconnected_pins true
#* set_app_var sh_new_variable_message false
#* set_app_var compile_seqmap_propagate_constants false 
#* set_app_var sh_enable_page_mode false
set_app_var report_default_significant_digits 2
#-------------------------------------------------------------------------------------------------------#
#                         OPTIMIZATION STRATEGY (HIGHER PRIORITY FOR DELAY OPTIMIZATION)                #
#-------------------------------------------------------------------------------------------------------#
#* set_app_var synlib_enable_analyze_dw_power 1
#* set_dp_smartgen_options -all_options auto -optimize_for speed
#* set_app_var compile_ultra_ungroup_dw true ;

#-------------------------------------------------------------------------------------------------------#
#                                              LIBRARY SETUP                                            #
#-------------------------------------------------------------------------------------------------------#

set lib_dir $DESIGN_REF_LIB_PATH
set std_library "saed32rvt_tt1p05v25c.db"
#* set ram_library "saed32sram_tt1p05v25c.db"

set search_path ". \
                $lib_dir/stdcell_rvt/db_nldm \
"

set target_library "saed32rvt_tt1p05v25c.db"
set link_library [concat * $std_library]

if {$DO_TOPO == "true"} {

 set mw_ref_lib  "$lib_dir/stdcell_hvt/milkyway/saed32nm_hvt_1p9m \
                  $lib_dir/stdcell_rvt/milkyway/saed32nm_rvt_1p9m \
                  $lib_dir/stdcell_lvt/milkyway/saed32nm_lvt_1p9m \
                 "

 set mw_design_library ${TOP}/dc/system.mw
 set tf_file "$DESIGN_REF_TECH_PATH/milkyway/saed32nm_1p9m_mw.tf"

 set_tlu_plus_files -max_tluplus $Tlup_max_file -min_tluplus $Tlup_min_file -tech2itf_map $Map_file

 exec rm -rf $mw_design_library
 create_mw_lib -technology $tf_file -open $mw_design_library -mw_reference_library $mw_ref_lib
 check_tlu_plus_files
}


#-------------------------------------------------------------------------------------------------------#
#                                              DONT USE LIST                                            #
#-------------------------------------------------------------------------------------------------------#
#* set_dont_use [get_lib_cells */*X0*]

#-------------------------------------------------------------------------------------------------------#
#                                             ANALYZE/ELABORATE                                         #
#-------------------------------------------------------------------------------------------------------#
set rtl_search_path "${TOP}/rtl"

set my_toplevel ${DESIGN_NAME} 

define_design_lib WORK -path ./WORK

set search_path [concat $search_path [join $rtl_search_path]]

source ${DESIGN_NAME}.rtl_list

set my_verilog_files $rtl_list

analyze -f verilog $my_verilog_files

elaborate -library WORK -update $my_toplevel

current_design $my_toplevel

link
#* uniquify -dont_skip_empty_designs
#* current_design $my_toplevel
#-------------------------------------------------------------------------------------------------------#
#                                              DONT TOUCH CELLS                                         #
#-------------------------------------------------------------------------------------------------------#
#* set_dont_touch [get_cell u_clocks_resets/sys_clk_buff] true
#* set_dont_touch [get_cell u_clocks_resets/sys_clk_slow_buff] true
#* set_dont_touch [get_cell u_clocks_resets/clk_200_buff] true
set_dont_touch ${DESIGN_NAME} true
set_dont_use {                             \
                saed32rvt_tt1p05v25c/OA*   \
                saed32rvt_tt1p05v25c/AO*   \
                saed32rvt_tt1p05v25c/NAND* \
                saed32rvt_tt1p05v25c/NOR*  \
                saed32rvt_tt1p05v25c/XOR*  \
                saed32rvt_tt1p05v25c/XNOR* \
             }

#-------------------------------------------------------------------------------------------------------#
#                                         SOURCE CONSTRAINTS                                            #
#-------------------------------------------------------------------------------------------------------#
#* source -e -v constraints.sdc
#* set_max_fanout 16 [get_designs $my_toplevel]

#-------------------------------------------------------------------------------------------------------#
#                                         WIRE LOAD SELECTION                                           #
#-------------------------------------------------------------------------------------------------------#
set auto_wire_load_selection true

#-------------------------------------------------------------------------------------------------------#
#                                         CLOCK GATING SELECTION                                        #
#-------------------------------------------------------------------------------------------------------#
#* set pos_cg_cells [get_lib_cells */CGLP*]
#* set neg_cg_cells [get_lib_cells */CGLN*]
#* 
#* foreach_in_coll pos_cg_cell $pos_cg_cells {
#*     set pos_cg_cell_name [get_attr [get_lib_cell $pos_cg_cell] full_name]
#*     set_attribute [get_lib_cell $pos_cg_cell_name] clock_gating_integrated_cell latch_posedge
#* }
#* foreach_in_coll neg_cg_cell $neg_cg_cells {
#*     set neg_cg_cell_name [get_attr [get_lib_cell $neg_cg_cell] full_name]
#*     set_attribute [get_lib_cell $neg_cg_cell_name] clock_gating_integrated_cell latch_negedge
#* }
#*     
#* 
#* if {$DO_CLOCK_GATING == "true"} {
#*     set_clock_gating_style -minimum_bitwidth 4 -max_fanout 99999 \
#*         -positive_edge_logic integrated -negative_edge_logic integrated
#* }
#* set_verification_priority -all -high
#* set_fix_multiple_port_nets -buffer_constants -feedthroughs -outputs -constants
#* #set_size_only [get_cells "u_wishbone_arbiter/m0_wb_cyc_r_reg u_eth_top/ethreg1/MODER*/*_reg*"]
#* set dont_touch_cells [get_cells "u_wishbone_arbiter/m0_wb_cyc_r_reg u_eth_top/ethreg1/MODER_1/*_reg*"]
#* foreach_in_coll cell $dont_touch_cells {
#* 	set cell_name [get_object_name $cell]
#* 	#set_dont_touch [get_cells $cell_name]
#* 	set_size_only [get_cells $cell_name]
#* #	echo "Setting dont_touch on $cell_name"
#* 	set nets [get_nets -of [get_pins $cell_name/*]]
#* 	foreach_in_collection net $nets {
#* 		set net_name [get_object_name $net]
#* 		set_dont_touch [get_net $net_name]
#* #		echo "Setting dont_touch on $net_name"
#* 	}
#* }
#-------------------------------------------------------------------------------------------------------#
#                                         COMPILE                                                       #
#-------------------------------------------------------------------------------------------------------#
# if {$DO_TOPO == "true"} {
#   compile_ultra -exact_map -no_autoungroup
#   extract_physical_constraints  ${TOP}/icc/results/system.def
# } else {
#   compile_ultra -exact_map
# }
# 
# if {$DO_RETIMING == "true"} {
#     compile_ultra -gate_clock -exact_map -no_autoungroup -no_seq_output_inversion -no_boundary_optimization -retime
# } else {
#     compile_ultra -gate_clock -exact_map -no_autoungroup -no_seq_output_inversion -no_boundary_optimization
# }

# timing-driven
compile_ultra -no_autoungroup
#* compile_ultra -timing_high_effort_script -retime -no_autoungroup
#* compile_ultra -incremental -no_autoungroup

# if {$DO_LEAKAGE_OPT == "true"} {
#     report_threshold_voltage_group
#     set_leakage_optimization true
#     compile_ultra -incremental -no_seq_output_inversion
#     report_threshold_voltage_group
# }

#if {$DO_AREA_RECOVERY == "true"} {
#    optimize_netlist -area
#}

#-------------------------------------------------------------------------------------------------------#
#                                      REPORTS AND RESULTS                                              #
#-------------------------------------------------------------------------------------------------------#
change_names -hierarchy -rules verilog -log_changes ${REPORTS_DIR}/${DESIGN_NAME}.change_names.log

write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.ddc
write -f verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.v

report_qor > ${REPORTS_DIR}/${DCRM_FINAL_QOR_REPORT}
report_threshold_voltage_group > ${REPORTS_DIR}/${DESIGN_NAME}.threshold_volt_group.rpt
report_timing -input_pins -capacitance -transition_time -nets -significant_digits 4 -nosplit -nworst 10 -max_paths 500 > ${REPORTS_DIR}/${DESIGN_NAME}.timing.rpt

report_area -hierarchy -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_AREA_REPORT}

report_power -nosplit -hier > ${REPORTS_DIR}/${DCRM_FINAL_POWER_REPORT}

report_reference -nosplit -hierarchy > ${REPORTS_DIR}/${DESIGN_NAME}.reference.rpt
report_resources -nosplit -hierarchy > ${REPORTS_DIR}/${DESIGN_NAME}.resources.rpt

check_timing > ${REPORTS_DIR}/${DESIGN_NAME}.check_timing.rpt
report_constraint -nos -all_violators > ${REPORTS_DIR}/${DESIGN_NAME}.allvio.rpt
report_timing -cap -trans -input_pins -nos > ${REPORTS_DIR}/${DESIGN_NAME}.worst_setup_path.rpt
report_clock_gating > ${REPORTS_DIR}/${DESIGN_NAME}.clock_gating.rpt
write_sdc ${RESULTS_DIR}/${DESIGN_NAME}.sdc

