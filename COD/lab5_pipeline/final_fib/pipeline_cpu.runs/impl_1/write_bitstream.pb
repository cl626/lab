
l
Command: %s
1870*	planAhead27
#open_checkpoint pipeline_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.051 . Memory (MB): peak = 290.879 ; gain = 0.0002default:defaulth px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
6662default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.12default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.7142default:default2
1222.8282default:default2
3.9692default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.7152default:default2
1222.8282default:default2
3.9692default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1222.8282default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 65 instances were transformed.
  LDCP => LDCP (GND, LUT3, LUT3, LDCE, VCC): 1 instances
  RAM128X1D => RAM128X1D (RAMD64E, RAMD64E, MUXF7, MUXF7, RAMD64E, RAMD64E): 64 instances
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.1 (64-bit)2default:default2
25520522default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:252default:default2
00:00:272default:default2
1222.8282default:default2
931.9492default:defaultZ17-268h px? 
h
Command: %s
53*	vivadotcl27
#write_bitstream -force pipeline.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen2I
5D:/software/vivado/vivado2019.1/Vivado/2019.1/data/ip2default:defaultZ19-2313h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2r
 "\
"cpuex/hazard_branch1/dflush_reg/G0"cpuex/hazard_branch1/dflush_reg/G02default:default2default:default2z
 "d
&cpuex/hazard_branch1/dflush_reg/L3_2/O&cpuex/hazard_branch1/dflush_reg/L3_2/O2default:default2default:default2v
 "`
$cpuex/hazard_branch1/dflush_reg/L3_2	$cpuex/hazard_branch1/dflush_reg/L3_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
cpuex/id_ex1/ctrl_reg[0]_0cpuex/id_ex1/ctrl_reg[0]_02default:default2default:default2d
 "N
cpuex/id_ex1/zero_reg_i_1/Ocpuex/id_ex1/zero_reg_i_1/O2default:default2default:default2`
 "J
cpuex/id_ex1/zero_reg_i_1	cpuex/id_ex1/zero_reg_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2^
 "H
cpuex/if_id1/ir_reg[2]_0cpuex/if_id1/ir_reg[2]_02default:default2default:default2h
 "R
cpuex/if_id1/fstall_reg_i_2/Ocpuex/if_id1/fstall_reg_i_2/O2default:default2default:default2d
 "N
cpuex/if_id1/fstall_reg_i_2	cpuex/if_id1/fstall_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2O
 "9
cpuex/mem_wb1/E[0]cpuex/mem_wb1/E2default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[22][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[22][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[22][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[22][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_10[0]cpuex/mem_wb1/ctrlw_reg[18]_102default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[13][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[13][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[13][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[13][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_11[0]cpuex/mem_wb1/ctrlw_reg[18]_112default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[12][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[12][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[12][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[12][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_12[0]cpuex/mem_wb1/ctrlw_reg[18]_122default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[11][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[11][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[11][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[11][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_13[0]cpuex/mem_wb1/ctrlw_reg[18]_132default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[10][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[10][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[10][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[10][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_14[0]cpuex/mem_wb1/ctrlw_reg[18]_142default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[9][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[9][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[9][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[9][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_15[0]cpuex/mem_wb1/ctrlw_reg[18]_152default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[8][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[8][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[8][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[8][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_16[0]cpuex/mem_wb1/ctrlw_reg[18]_162default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[7][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[7][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[7][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[7][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_17[0]cpuex/mem_wb1/ctrlw_reg[18]_172default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[6][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[6][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[6][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[6][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_18[0]cpuex/mem_wb1/ctrlw_reg[18]_182default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[5][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[5][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[5][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[5][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_19[0]cpuex/mem_wb1/ctrlw_reg[18]_192default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[4][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[4][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[4][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[4][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_20[0]cpuex/mem_wb1/ctrlw_reg[18]_202default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[3][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[3][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[3][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[3][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_21[0]cpuex/mem_wb1/ctrlw_reg[18]_212default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[2][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[2][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[2][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[2][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_22[0]cpuex/mem_wb1/ctrlw_reg[18]_222default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[1][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[1][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[1][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[1][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2m
 "W
!cpuex/mem_wb1/ctrlw_reg[18]_23[0]cpuex/mem_wb1/ctrlw_reg[18]_232default:default2default:default2|
 "f
'cpuex/mem_wb1/REG_FILE_reg[0][31]_i_1/O'cpuex/mem_wb1/REG_FILE_reg[0][31]_i_1/O2default:default2default:default2x
 "b
%cpuex/mem_wb1/REG_FILE_reg[0][31]_i_1	%cpuex/mem_wb1/REG_FILE_reg[0][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_2[0]cpuex/mem_wb1/ctrlw_reg[18]_22default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[21][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[21][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[21][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[21][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_3[0]cpuex/mem_wb1/ctrlw_reg[18]_32default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[20][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[20][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[20][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[20][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_4[0]cpuex/mem_wb1/ctrlw_reg[18]_42default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[19][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[19][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[19][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[19][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_5[0]cpuex/mem_wb1/ctrlw_reg[18]_52default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[18][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[18][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[18][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[18][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_6[0]cpuex/mem_wb1/ctrlw_reg[18]_62default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[17][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[17][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[17][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[17][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_7[0]cpuex/mem_wb1/ctrlw_reg[18]_72default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[16][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[16][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[16][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[16][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_8[0]cpuex/mem_wb1/ctrlw_reg[18]_82default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[15][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[15][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[15][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[15][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 cpuex/mem_wb1/ctrlw_reg[18]_9[0]cpuex/mem_wb1/ctrlw_reg[18]_92default:default2default:default2~
 "h
(cpuex/mem_wb1/REG_FILE_reg[14][31]_i_1/O(cpuex/mem_wb1/REG_FILE_reg[14][31]_i_1/O2default:default2default:default2z
 "d
&cpuex/mem_wb1/REG_FILE_reg[14][31]_i_1	&cpuex/mem_wb1/REG_FILE_reg[14][31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 27 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
_
Writing bitstream %s...
11*	bitstream2"
./pipeline.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2d
PE:/lab5_pipeline/final_fib/pipeline_cpu.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Wed May 11 18:51:56 20222default:default2_
KD:/software/vivado/vivado2019.1/Vivado/2019.1/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
272default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:272default:default2
00:00:272default:default2
1712.4222default:default2
489.5942default:defaultZ17-268h px? 


End Record