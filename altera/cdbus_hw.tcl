# TCL File Generated by Component Editor 18.0
# Tue Oct 30 18:33:46 HKT 2018
# DO NOT MODIFY


# 
# cdbus "CDBUS Controller" v8
# DUKELEC 2018.10.30.18:33:46
# CDBUS Controller
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module cdbus
# 
set_module_property DESCRIPTION "CDBUS Controller"
set_module_property NAME cdbus
set_module_property VERSION 8
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Interface Protocols"
set_module_property AUTHOR DUKELEC
set_module_property DISPLAY_NAME "CDBUS Controller"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL cdbus
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file cdbus.v VERILOG PATH ../hdl/cdbus.v TOP_LEVEL_FILE
add_fileset_file pp_ram.v VERILOG PATH ../hdl/pp_ram.v
add_fileset_file rx_bytes.v VERILOG PATH ../hdl/rx_bytes.v
add_fileset_file rx_des.v VERILOG PATH ../hdl/rx_des.v
add_fileset_file serial_crc.v VERILOG PATH ../hdl/serial_crc.v
add_fileset_file tx_bytes_ser.v VERILOG PATH ../hdl/tx_bytes_ser.v


# 
# documentation links
# 
add_documentation_link Website https://d-l.io


# 
# parameters
# 
add_parameter DIV_LS INTEGER 346
set_parameter_property DIV_LS DEFAULT_VALUE 346
set_parameter_property DIV_LS DISPLAY_NAME DIV_LS
set_parameter_property DIV_LS TYPE INTEGER
set_parameter_property DIV_LS UNITS None
set_parameter_property DIV_LS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DIV_LS HDL_PARAMETER true
add_parameter DIV_HS INTEGER 346
set_parameter_property DIV_HS DEFAULT_VALUE 346
set_parameter_property DIV_HS DISPLAY_NAME DIV_HS
set_parameter_property DIV_HS TYPE INTEGER
set_parameter_property DIV_HS UNITS None
set_parameter_property DIV_HS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DIV_HS HDL_PARAMETER true


# 
# display items
# 


# 
# connection point csr
# 
add_interface csr avalon end
set_interface_property csr addressUnits WORDS
set_interface_property csr associatedClock clk
set_interface_property csr associatedReset reset_n
set_interface_property csr bitsPerSymbol 8
set_interface_property csr burstOnBurstBoundariesOnly false
set_interface_property csr burstcountUnits WORDS
set_interface_property csr explicitAddressSpan 0
set_interface_property csr holdTime 0
set_interface_property csr linewrapBursts false
set_interface_property csr maximumPendingReadTransactions 0
set_interface_property csr maximumPendingWriteTransactions 0
set_interface_property csr readLatency 1
set_interface_property csr readWaitStates 0
set_interface_property csr readWaitTime 0
set_interface_property csr setupTime 0
set_interface_property csr timingUnits Cycles
set_interface_property csr writeWaitTime 0
set_interface_property csr ENABLED true
set_interface_property csr EXPORT_OF ""
set_interface_property csr PORT_NAME_MAP ""
set_interface_property csr CMSIS_SVD_VARIABLES ""
set_interface_property csr SVD_ADDRESS_GROUP ""

add_interface_port csr csr_address address Input 4
add_interface_port csr csr_byteenable byteenable Input 4
add_interface_port csr csr_read read Input 1
add_interface_port csr csr_readdata readdata Output 32
add_interface_port csr csr_write write Input 1
add_interface_port csr csr_writedata writedata Input 32
set_interface_assignment csr embeddedsw.configuration.isFlash 0
set_interface_assignment csr embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment csr embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment csr embeddedsw.configuration.isPrintableDevice 0


# 
# connection point rx_mm
# 
add_interface rx_mm avalon end
set_interface_property rx_mm addressUnits WORDS
set_interface_property rx_mm associatedClock clk
set_interface_property rx_mm associatedReset reset_n
set_interface_property rx_mm bitsPerSymbol 8
set_interface_property rx_mm burstOnBurstBoundariesOnly false
set_interface_property rx_mm burstcountUnits WORDS
set_interface_property rx_mm explicitAddressSpan 0
set_interface_property rx_mm holdTime 0
set_interface_property rx_mm isMemoryDevice true
set_interface_property rx_mm linewrapBursts false
set_interface_property rx_mm maximumPendingReadTransactions 0
set_interface_property rx_mm maximumPendingWriteTransactions 0
set_interface_property rx_mm readLatency 1
set_interface_property rx_mm readWaitStates 0
set_interface_property rx_mm readWaitTime 0
set_interface_property rx_mm setupTime 0
set_interface_property rx_mm timingUnits Cycles
set_interface_property rx_mm writeWaitTime 0
set_interface_property rx_mm ENABLED true
set_interface_property rx_mm EXPORT_OF ""
set_interface_property rx_mm PORT_NAME_MAP ""
set_interface_property rx_mm CMSIS_SVD_VARIABLES ""
set_interface_property rx_mm SVD_ADDRESS_GROUP ""

add_interface_port rx_mm rx_mm_address address Input 6
add_interface_port rx_mm rx_mm_byteenable byteenable Input 4
add_interface_port rx_mm rx_mm_read read Input 1
add_interface_port rx_mm rx_mm_readdata readdata Output 32
add_interface_port rx_mm rx_mm_write write Input 1
add_interface_port rx_mm rx_mm_writedata writedata Input 32
set_interface_assignment rx_mm embeddedsw.configuration.isFlash 0
set_interface_assignment rx_mm embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment rx_mm embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment rx_mm embeddedsw.configuration.isPrintableDevice 0


# 
# connection point tx_mm
# 
add_interface tx_mm avalon end
set_interface_property tx_mm addressUnits WORDS
set_interface_property tx_mm associatedClock clk
set_interface_property tx_mm associatedReset reset_n
set_interface_property tx_mm bitsPerSymbol 8
set_interface_property tx_mm burstOnBurstBoundariesOnly false
set_interface_property tx_mm burstcountUnits WORDS
set_interface_property tx_mm explicitAddressSpan 0
set_interface_property tx_mm holdTime 0
set_interface_property tx_mm isMemoryDevice true
set_interface_property tx_mm linewrapBursts false
set_interface_property tx_mm maximumPendingReadTransactions 0
set_interface_property tx_mm maximumPendingWriteTransactions 0
set_interface_property tx_mm readLatency 1
set_interface_property tx_mm readWaitStates 0
set_interface_property tx_mm readWaitTime 0
set_interface_property tx_mm setupTime 0
set_interface_property tx_mm timingUnits Cycles
set_interface_property tx_mm writeWaitTime 0
set_interface_property tx_mm ENABLED true
set_interface_property tx_mm EXPORT_OF ""
set_interface_property tx_mm PORT_NAME_MAP ""
set_interface_property tx_mm CMSIS_SVD_VARIABLES ""
set_interface_property tx_mm SVD_ADDRESS_GROUP ""

add_interface_port tx_mm tx_mm_address address Input 6
add_interface_port tx_mm tx_mm_byteenable byteenable Input 4
add_interface_port tx_mm tx_mm_read read Input 1
add_interface_port tx_mm tx_mm_readdata readdata Output 32
add_interface_port tx_mm tx_mm_write write Input 1
add_interface_port tx_mm tx_mm_writedata writedata Input 32
set_interface_assignment tx_mm embeddedsw.configuration.isFlash 0
set_interface_assignment tx_mm embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment tx_mm embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment tx_mm embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_n
# 
add_interface reset_n reset end
set_interface_property reset_n associatedClock clk
set_interface_property reset_n synchronousEdges DEASSERT
set_interface_property reset_n ENABLED true
set_interface_property reset_n EXPORT_OF ""
set_interface_property reset_n PORT_NAME_MAP ""
set_interface_property reset_n CMSIS_SVD_VARIABLES ""
set_interface_property reset_n SVD_ADDRESS_GROUP ""

add_interface_port reset_n reset_n reset_n Input 1


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk clk Input 1


# 
# connection point irq
# 
add_interface irq interrupt end
set_interface_property irq associatedAddressablePoint csr
set_interface_property irq associatedClock clk
set_interface_property irq associatedReset reset_n
set_interface_property irq bridgedReceiverOffset ""
set_interface_property irq bridgesToReceiver ""
set_interface_property irq ENABLED true
set_interface_property irq EXPORT_OF ""
set_interface_property irq PORT_NAME_MAP ""
set_interface_property irq CMSIS_SVD_VARIABLES ""
set_interface_property irq SVD_ADDRESS_GROUP ""

add_interface_port irq irq irq Output 1


# 
# connection point rx
# 
add_interface rx conduit end
set_interface_property rx associatedClock ""
set_interface_property rx associatedReset ""
set_interface_property rx ENABLED true
set_interface_property rx EXPORT_OF ""
set_interface_property rx PORT_NAME_MAP ""
set_interface_property rx CMSIS_SVD_VARIABLES ""
set_interface_property rx SVD_ADDRESS_GROUP ""

add_interface_port rx rx rx Input 1


# 
# connection point tx
# 
add_interface tx conduit end
set_interface_property tx associatedClock clk
set_interface_property tx associatedReset reset_n
set_interface_property tx ENABLED true
set_interface_property tx EXPORT_OF ""
set_interface_property tx PORT_NAME_MAP ""
set_interface_property tx CMSIS_SVD_VARIABLES ""
set_interface_property tx SVD_ADDRESS_GROUP ""

add_interface_port tx tx tx Output 1


# 
# connection point tx_en
# 
add_interface tx_en conduit end
set_interface_property tx_en associatedClock clk
set_interface_property tx_en associatedReset reset_n
set_interface_property tx_en ENABLED true
set_interface_property tx_en EXPORT_OF ""
set_interface_property tx_en PORT_NAME_MAP ""
set_interface_property tx_en CMSIS_SVD_VARIABLES ""
set_interface_property tx_en SVD_ADDRESS_GROUP ""

add_interface_port tx_en tx_en tx_en Output 1
