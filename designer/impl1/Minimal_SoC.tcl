# Created by Microsemi Libero Software 11.9.0.4
# Sat Jul 09 21:13:37 2022

# (OPEN DESIGN)

open_design "Minimal_SoC.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "Minimal_SoC_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\micha\SynologyDrive\Engineering\Projects\CHESS OBC\SoC\LiberoProjects\Bunny Murax\Bunny_Minimal_SoC\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/Minimal_SoC.edn} -merge_physical "no" -merge_timing "yes"
compile
report -type "status" {Minimal_SoC_compile_report.txt}
report -type "pin" -listby "name" {Minimal_SoC_report_pin_byname.txt}
report -type "pin" -listby "number" {Minimal_SoC_report_pin_bynumber.txt}

save_design
