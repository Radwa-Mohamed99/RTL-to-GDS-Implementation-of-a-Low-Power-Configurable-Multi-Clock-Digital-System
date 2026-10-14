#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Oct  9 04:31:20 2026                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP_DFT
setUIVar rda_Input ui_netlist /home/ahesham/Labs/PnR/DFT/netlists/SYS_TOP_DFT.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Labs/PnR/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Labs/PnR/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Labs/PnR/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Labs/PnR/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Labs/PnR/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Labs/PnR/PnR/import/SYS_TOP_4.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Labs/PnR/DFT/sdc/SYS_TOP_DFT.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_DFT_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_DFT_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_DFT_capture.sdc}
create_rc_corner -name RCcorner -cap_table "/home/ahesham/Labs/PnR/std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
commitConfig
floorPlan -d 240.47 160.47 6.0 6.0 6.0 6.0
zoomBox -5.830 161.975 64.046 129.644
zoomBox -2.006 153.666 13.372 138.240
zoomBox -0.891 151.274 8.701 145.144
zoomBox -10.784 27.958 55.964 0.581
windowSelect 263.508 114.522 203.800 81.930
deselectAll
zoomBox 257.250 127.819 220.487 54.553
zoomBox 261.108 106.932 231.888 74.249
zoomBox 244.350 102.732 235.998 94.911
selectPhyPin 240.4700 100.0000 240.6700 100.2000 3 {SO[2]}
deselectAll
uiSetTool ruler
uiSetTool ruler
panCenter 234.633 101.097
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
panCenter 124.863 36.236
panCenter 194.935 18.572
uiSetTool ruler
panCenter 242.780 -19.104
uiSetTool ruler
uiSetTool ruler
uiSetTool ruler
uiSetTool ruler
uiSetTool ruler
uiSetTool ruler
fit
panCenter 218.662 76.454
uiSetTool move
uiSetTool select
zoomBox -6.612 163.800 13.725 135.381
zoomBox -2.216 162.583 12.309 150.283
selectWire 1.8250 1.8250 2.8250 157.7450 6 VDD
windowSelect 1.567 158.549 2.875 156.297
zoomBox 1.312 158.059 2.912 156.042
deselectAll
selectVia 1.8250 156.7450 2.8250 157.7450 6 VDD
deselectAll
selectVia 1.8250 156.7450 2.8250 157.7450 6 VDD
deselectAll
selectVia 1.8250 156.7450 2.8250 157.7450 6 VDD
deselectAll
selectVia 1.8250 156.7450 2.8250 157.7450 6 VDD
deselectAll
selectVia 1.8250 156.7450 2.8250 157.7450 6 VDD
deselectAll
uiSetTool move
selectWire 1.8250 1.8250 2.8250 157.7450 6 VDD
editMove -0.7595 -0.176
zoomBox -6.612 167.451 27.544 126.776
zoomBox -3.503 163.305 15.663 145.522
undo
editMove 33.0305 10.879
uiSetTool select
undo
deselectAll
zoomBox 1.549 158.314 5.147 154.269
selectWire 3.3250 3.3250 4.3250 156.2450 6 VSS
zoomBox 2.903 156.510 5.287 154.891
deselectAll
selectWire 3.3250 3.3250 4.3250 156.2450 6 VSS
deselectAll
zoomBox -12.870 17.007 39.798 -19.496
panCenter -3.224 6.601
zoomBox -19.912 14.446 7.425 -5.019
zoomBox -1.399 6.511 14.098 -1.799
selectWire 1.8250 1.8250 2.8250 157.7450 6 VDD
zoomBox 1.163 4.854 1.740 3.823
deselectAll
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
zoomBox -17.303 30.044 83.602 -18.192
panCenter 244.214 165.886
zoomBox 368.194 251.537 366.108 249.452
zoomBox -2.962 166.668 248.907 133.034
zoomBox 247.603 162.236 226.223 -6.459
zoomBox -7.394 162.757 24.154 -7.763
zoomBox -6.607 160.742 37.472 55.709
panCenter 35.834 92.944
zoomBox -10.322 110.088 14.657 69.130
zoomBox -4.034 97.988 12.180 77.358
zoomBox 248.646 8.402 -20.171 -4.112
zoomBox -5.314 9.574 164.248 -30.098
windowSelect 250.732 13.357 -32.947 -4.112
deselectAll
windowSelect -9.742 12.835 266.115 -8.284
deselectAll
windowSelect 250.471 15.182 -21.996 -3.852
deselectAll
windowSelect -10.524 16.225 252.818 -6.459
deselectAll
