#######################################################################################Main_PATH
set DESIGN_REF_PATH "/usr/local/packages/synopsys_2015/SAED32_EDK"
#################################################################################REF_PATH
set DESIGN_REF_LIB_PATH  "${DESIGN_REF_PATH}/lib"
set DESIGN_REF_TECH_PATH "${DESIGN_REF_PATH}/tech"
set VERILOG_DIR          "${TOP}/verilog"
#################################################################################LIB_PATH
set DESIGN_REF_MW_PATH   "${DESIGN_REF_TECH_PATH}/milkyway"
set RAM_REF_MW_PATH      "${DESIGN_REF_LIB_PATH}/sram/milkyway"
set STDCELL_HVT_MW_PATH  "${DESIGN_REF_LIB_PATH}/stdcell_hvt/milkyway"
set STDCELL_RVT_MW_PATH  "${DESIGN_REF_LIB_PATH}/stdcell_rvt/milkyway"
set STDCELL_LVT_MW_PATH  "${DESIGN_REF_LIB_PATH}/stdcell_lvt/milkyway"
set DESIGN_REF_RC_PATH   "${DESIGN_REF_TECH_PATH}/star_rcxt"
#################################################################################TECH_PATH
set DESIGN_REF_NLDM_PATH "${DESIGN_REF_LIB_PATH}/stdcell_hvt/db_nldm \
                          ${DESIGN_REF_LIB_PATH}/stdcell_rvt/db_nldm \
                          ${DESIGN_REF_LIB_PATH}/stdcell_lvt/db_nldm "
set DESIGN_REF_RAM_PATH  "${DESIGN_REF_LIB_PATH}/sram/db_nldm"
#######################################################################################Liberty
set Std_cell_lib         "saed32hvt_tt1p05v25c.db \
                          saed32rvt_tt1p05v25c.db \
                          saed32lvt_tt1p05v25c.db"
set Ram_lib              "saed32sram_tt1p05v25c.db"
#################################################################################Verilog
set Core_compile          "${TOP}/syn/results/system.v"
#######################################################################################

###########################################################
set Constraints_file      "${TOP}/constraints/constraints.sdc"
#set Warning_file          "${TOP}/common/warnings_to_ignore.tcl"
#set Svf_file              "${TOP}/lab3/work/default.svf"
#set ARC_TOP               "${TOP}/common/system.mw"
set ARC_TOP              "system.mw"
###########################################################

set Milkyway_REFERENCE_LIB "${STDCELL_HVT_MW_PATH}/saed32nm_hvt_1p9m \
                            ${STDCELL_RVT_MW_PATH}/saed32nm_rvt_1p9m \
                            ${STDCELL_LVT_MW_PATH}/saed32nm_lvt_1p9m \
                            ${RAM_REF_MW_PATH}/SRAM32NM"

# ${DESIGN_REF_LIB_PATH}/sram/milkyway/saed32sram_mw" 

set Tech_file             "${DESIGN_REF_MW_PATH}/saed32nm_1p9m_mw.tf"
set Map_file              "${DESIGN_REF_MW_PATH}/saed32nm_tf_itf_tluplus.map"
set Antenna_file          "${DESIGN_REF_MW_PATH}/saed32nm_ant_1p9m.tcl"
set Alf_file              "${DESIGN_REF_MW_PATH}/saed32nm_em_1p9m.alf"
set Gds_map_file          "${DESIGN_REF_MW_PATH}/saed32nm_1p9m_gdsout_mw.map"
set Tlup_max_file         "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_Cmax.tluplus"
set Tlup_min_file         "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_Cmin.tluplus"
set Tlup_typ_file         "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_nominal.tluplus"
set Nxtgrd_max_file       "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_Cmax.nxtgrd"
set Nxtgrd_min_file       "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_Cmin.nxtgrd"
set Nxtgrd_typ_file       "${DESIGN_REF_RC_PATH}/saed32nm_1p9m_nominal.nxtgrd"
###########################################################
