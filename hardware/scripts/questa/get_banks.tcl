# This script produces a list of the tag and data nets in the L0, L1 and RO cache.
# Optionally, these can be saved in a file.

# Search for all instances of tag banks for ROC
set pattern_match "*/i_snitch_read_only_cache/i_lookup/gen_sram/i_tag*" ;
# Get the list of instance paths
set inst_list [find instances -r $pattern_match] ;
# Initialize an empty list to strip off the architecture names
set ROC_tag_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/sram"
 lappend ROC_tag_list $ipath
 }
}

# At this point, ROC_tag_list contains the list of instances only--
# no architecture names
#
# Begin sorting list
#set ROC_tag_list [lsort -dictionary $ROC_tag_list]
## Open a file to write out the list
#
#set fhandle [open "ROC_tag.txt" w]
#foreach inst $ROC_tag_list {
# # Print instance path, one per line
# puts $fhandle $inst
#}
## Close the file, done.
#close $fhandle ; 



# Search for all instances of tag banks for L1 IC
set pattern_match "*]/i_tag*"
set inst_list [find instances -r $pattern_match] ;
set L1_tag_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/MemContentxDP"
 lappend L1_tag_list $ipath
 }
}
#set L1_tag_list [lsort -dictionary $L1_tag_list]
#set fhandle [open "L1I_tag.txt" w]
#foreach inst $L1_tag_list {
# puts $fhandle $inst
#}
#close $fhandle ; 



# Search for all instances of data banks for ROC
set pattern_match "*i_snitch_read_only_cache/i_lookup/i_data*"
set inst_list [find instances -r $pattern_match] ;
set ROC_data_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/sram"
 lappend ROC_data_list $ipath
 }
}
#set ROC_data_list [lsort -dictionary $ROC_data_list]
#set fhandle [open "ROC_data.txt" w]
#foreach inst $ROC_data_list {
# puts $fhandle $inst
#}
#close $fhandle ; 



# Search for all instances of data banks for L1 IC
set pattern_match "*/i_snitch_icache/i_lookup/i_data*"
set inst_list [find instances -r $pattern_match] ;
set L1_data_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/sram"
 lappend L1_data_list $ipath
 }
}
#set L1_data_list [lsort -dictionary $L1_data_list]
#set fhandle [open "L1I_data.txt" w]
#foreach inst $L1_data_list {
# puts $fhandle $inst
#}
#close $fhandle ; 


# Search for all instances of tag banks for L0 IC
set pattern_match "*i_snitch_icache_l0"
set inst_list [find instances -r $pattern_match] ;
set L0_tag_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/tag"
 lappend L0_tag_list $ipath
 }
}

# Search for all instances of data banks for L0 IC
set pattern_match "*i_snitch_icache_l0"
set inst_list [find instances -r $pattern_match] ;
set L0_data_list [list] ;
foreach inst $inst_list {
 set ipath [lindex $inst 0]
 if {[string match $pattern_match $ipath]} {
 append ipath "/data"
 lappend L0_data_list $ipath
 }
}