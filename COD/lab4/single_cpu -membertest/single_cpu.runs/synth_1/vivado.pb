
t
Command: %s
53*	vivadotcl2C
/synth_design -top single -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 700.438 ; gain = 177.828
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
single2default:default2
 2default:default2[
EE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/single.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

pdu_1cycle2default:default2
 2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/pdu.v2default:default2
22default:default8@Z8-6157h px? 
?
default block is never used226*oasys2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/pdu.v2default:default2
1522default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

pdu_1cycle2default:default2
 2default:default2
12default:default2
12default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/pdu.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cpu2default:default2
 2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cpu.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'638*oasys2#
single_text_mem2default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
662default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_DEPTH bound to: 256 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_D bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_DPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_DPRA bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_I_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QDPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QDPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QDPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QSPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QSPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QSPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QSPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_SPO bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_HAS_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
u
%s
*synth2]
I	Parameter C_MEM_INIT_FILE bound to: single_text_mem.mif - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QCE_JOINED bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QUALIFY_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_READ_MIF bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_A_D_INPUTS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_DPRA_INPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SYNC_ENABLE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_PARSER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
dist_mem_gen_v8_0_132default:default2?
oe:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_data_mem/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
1322default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
single_text_mem2default:default2
52default:default2
12default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
662default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2
cu2default:default2
 2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cu2default:default2
 2default:default2
62default:default2
12default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Imm2default:default2
 2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/Imm.v2default:default2
22default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/Imm.v2default:default2
72default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Imm2default:default2
 2default:default2
72default:default2
12default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/Imm.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2\
FE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
82default:default2
12default:default2\
FE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6155h px? 
?
&Input port '%s' has an internal driver4442*oasys2
clk_cpu2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cpu.v2default:default2
472default:default8@Z8-6104h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
ra32default:default2
52default:default2
regfile2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cpu.v2default:default2
472default:default8@Z8-689h px? 
?
&Input port '%s' has an internal driver4442*oasys2
	m_rf_addr2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cpu.v2default:default2
472default:default8@Z8-6104h px? 
?
synthesizing module '%s'%s4497*oasys2

alucontrol2default:default2
 2default:default2_
IE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
22default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2_
IE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
112default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

alucontrol2default:default2
 2default:default2
92default:default2
12default:default2_
IE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alu.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
102default:default2
12default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alu.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2#
single_data_mem2default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
712default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_DEPTH bound to: 256 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CLK bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_D bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_DPO bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_DPRA bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_I_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QDPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QDPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QDPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QSPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QSPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QSPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QSPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_SPO bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_HAS_WE bound to: 1 - type: integer 
2default:defaulth p
x
? 
u
%s
*synth2]
I	Parameter C_MEM_INIT_FILE bound to: single_data_mem.mif - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QCE_JOINED bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QUALIFY_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_READ_MIF bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_A_D_INPUTS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_DPRA_INPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SYNC_ENABLE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_PARSER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
dist_mem_gen_v8_0_132default:default2?
oe:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_data_mem/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
1372default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
single_data_mem2default:default2
122default:default2
12default:default2{
ee:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
712default:default8@Z8-256h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2default:default2
 2default:default2
132default:default2
12default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cpu.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
single2default:default2
 2default:default2
142default:default2
12default:default2[
EE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/single.v2default:default2
22default:default8@Z8-6155h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[31]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[30]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[29]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[28]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[27]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[26]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[25]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[24]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[23]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[22]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[21]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[20]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[19]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[18]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[17]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[16]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[15]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[14]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[13]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[12]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[11]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[10]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[9]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[8]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[7]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[6]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[5]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[4]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[3]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[2]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[1]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo[0]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[31]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[30]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[29]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[28]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[27]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[26]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[25]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[24]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[23]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[22]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[21]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[20]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[19]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[18]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[17]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[16]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[15]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[14]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[13]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[12]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[11]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[10]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[9]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[8]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[7]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[6]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[5]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[4]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[3]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[2]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[1]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo[0]2default:defaultZ8-3331h px? 
x
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
i_ce2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo_ce2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qspo_rst2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
	qspo_srst2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo_clk2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo_ce2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
qdpo_rst2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
dpram2default:default2
	qdpo_srst2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
i_ce2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
qspo_ce2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
qdpo_ce2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
qdpo_clk2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
qspo_rst2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
qdpo_rst2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
	qspo_srst2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys28
$dist_mem_gen_v8_0_13__parameterized12default:default2
	qdpo_srst2default:defaultZ8-3331h px? 
u
!design %s has unconnected port %s3331*oasys2
alu2default:default2
jal2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func3[2]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func3[1]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func3[0]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[6]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[5]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[4]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[3]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[2]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[1]2default:defaultZ8-3331h px? 
y
!design %s has unconnected port %s3331*oasys2
cu2default:default2
func7[0]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[31]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[30]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[29]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[28]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[27]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[26]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[25]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[24]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
cu2default:default2
command[23]2default:defaultZ8-3331h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 872.266 ; gain = 349.656
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 872.266 ; gain = 349.656
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 872.266 ; gain = 349.656
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2]
GE:/lab4/single_cpu -membertest/single_cpu.srcs/constrs_1/new/single.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2]
GE:/lab4/single_cpu -membertest/single_cpu.srcs/constrs_1/new/single.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
GE:/lab4/single_cpu -membertest/single_cpu.srcs/constrs_1/new/single.xdc2default:default2,
.Xil/single_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2[
EE:/lab4/single_cpu -membertest/single_cpu.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2[
EE:/lab4/single_cpu -membertest/single_cpu.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
961.4532default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
961.4532default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2
jal_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
212default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

Branch_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
222default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

RegSrc_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
MemWrite_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
242default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

Alusrc_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
252default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
Regwrite_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
262default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	ALUOp_reg2default:default2W
AE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/cu.v2default:default2
272default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
imm_reg2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/Imm.v2default:default2
82default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
alucontrol_reg2default:default2_
IE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
92default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
aluresult_reg2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alu.v2default:default2
132default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
zero_reg2default:default2X
BE:/lab4/single_cpu -membertest/single_cpu.srcs/sources_1/new/alu.v2default:default2
162default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
?
%s
*synth2'
Module pdu_1cycle 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
7
%s
*synth2
Module cu 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
8
%s
*synth2 
Module Imm 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module regfile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module alucontrol 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module alu 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
:
%s
*synth2"
Module dpram 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
Module cpu 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\cpuex/alucontrolex/alucontrol_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2:
&\cpuex/alucontrolex/alucontrol_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\cpuex/alucontrolex/alucontrol_reg[3] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$cpuex/alucontrolex/alucontrol_reg[3]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$cpuex/alucontrolex/alucontrol_reg[1]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$cpuex/alucontrolex/alucontrol_reg[0]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[31]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[30]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[29]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[28]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[27]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[26]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[25]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[24]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[23]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[22]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[21]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[20]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[19]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[18]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[17]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[16]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[15]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[14]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[13]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[12]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[11]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
cpuex/aluex/aluresult_reg[10]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[9]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[8]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[7]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[6]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[5]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[4]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[3]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[2]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[1]2default:default2
single2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
cpuex/aluex/aluresult_reg[0]2default:default2
single2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
?
%s*synth2?
q+---------------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2?
r|Module Name          | RTL Object                                            | Depth x Width | Implemented As | 
2default:defaulth px? 
?
%s*synth2?
q+---------------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2?
r|rom                  | rom[255]                                              | 256x17        | LUT            | 
2default:defaulth px? 
?
%s*synth2?
r|dist_mem_gen_v8_0_13 | synth_options.dist_mem_inst/gen_rom.rom_inst/rom[255] | 256x17        | LUT            | 
2default:defaulth px? 
?
%s*synth2?
r+---------------------+-------------------------------------------------------+---------------+----------------+

2default:defaulth px? 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name   | RTL Object                                                | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth px? 
?
%s*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+
2default:defaulth px? 
?
%s*synth2?
?|\cpuex/dm /U0 | synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram_reg | Implied   | 256 x 32             | RAM128X1D x 64   | 
2default:defaulth px? 
?
%s*synth2?
?|single        | cpuex/regfile1/REG_FILE_reg                               | Implied   | 32 x 32              | RAM32M x 18      | 
2default:defaulth px? 
?
%s*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:41 ; elapsed = 00:00:43 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name   | RTL Object                                                | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|\cpuex/dm /U0 | synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram_reg | Implied   | 256 x 32             | RAM128X1D x 64   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|single        | cpuex/regfile1/REG_FILE_reg                               | Implied   | 32 x 32              | RAM32M x 18      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------+-----------------------------------------------------------+-----------+----------------------+------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:42 ; elapsed = 00:00:43 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |BUFG      |     3|
2default:defaulth px? 
G
%s*synth2/
|2     |CARRY4    |    48|
2default:defaulth px? 
G
%s*synth2/
|3     |LUT1      |     2|
2default:defaulth px? 
G
%s*synth2/
|4     |LUT2      |    43|
2default:defaulth px? 
G
%s*synth2/
|5     |LUT3      |    86|
2default:defaulth px? 
G
%s*synth2/
|6     |LUT4      |    94|
2default:defaulth px? 
G
%s*synth2/
|7     |LUT5      |   133|
2default:defaulth px? 
G
%s*synth2/
|8     |LUT6      |   104|
2default:defaulth px? 
G
%s*synth2/
|9     |RAM128X1D |    64|
2default:defaulth px? 
G
%s*synth2/
|10    |RAM32M    |    18|
2default:defaulth px? 
G
%s*synth2/
|11    |FDCE      |    72|
2default:defaulth px? 
G
%s*synth2/
|12    |FDPE      |    21|
2default:defaulth px? 
G
%s*synth2/
|13    |FDRE      |    79|
2default:defaulth px? 
G
%s*synth2/
|14    |LD        |    43|
2default:defaulth px? 
G
%s*synth2/
|15    |IBUF      |    10|
2default:defaulth px? 
G
%s*synth2/
|16    |OBUF      |    15|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
?
%s
*synth2w
c+------+--------------------------------------+-------------------------------------------+------+
2default:defaulth p
x
? 
?
%s
*synth2w
c|      |Instance                              |Module                                     |Cells |
2default:defaulth p
x
? 
?
%s
*synth2w
c+------+--------------------------------------+-------------------------------------------+------+
2default:defaulth p
x
? 
?
%s
*synth2w
c|1     |top                                   |                                           |   835|
2default:defaulth p
x
? 
?
%s
*synth2w
c|2     |  cpuex                               |cpu                                        |   688|
2default:defaulth p
x
? 
?
%s
*synth2w
c|3     |    im                                |single_text_mem                            |    19|
2default:defaulth p
x
? 
?
%s
*synth2w
c|4     |      U0                              |dist_mem_gen_v8_0_13                       |    19|
2default:defaulth p
x
? 
?
%s
*synth2w
c|5     |        \synth_options.dist_mem_inst  |dist_mem_gen_v8_0_13_synth                 |    19|
2default:defaulth p
x
? 
?
%s
*synth2w
c|6     |          \gen_rom.rom_inst           |rom                                        |    19|
2default:defaulth p
x
? 
?
%s
*synth2w
c|7     |    dm                                |single_data_mem                            |   194|
2default:defaulth p
x
? 
?
%s
*synth2w
c|8     |      U0                              |dist_mem_gen_v8_0_13__parameterized1       |   194|
2default:defaulth p
x
? 
?
%s
*synth2w
c|9     |        \synth_options.dist_mem_inst  |dist_mem_gen_v8_0_13_synth__parameterized0 |   194|
2default:defaulth p
x
? 
?
%s
*synth2w
c|10    |          \gen_dp_ram.dpram_inst      |dpram                                      |   194|
2default:defaulth p
x
? 
?
%s
*synth2w
c|11    |    Immex                             |Imm                                        |   100|
2default:defaulth p
x
? 
?
%s
*synth2w
c|12    |    alucontrolex                      |alucontrol                                 |     2|
2default:defaulth p
x
? 
?
%s
*synth2w
c|13    |    aluex                             |alu                                        |    53|
2default:defaulth p
x
? 
?
%s
*synth2w
c|14    |    cuex                              |cu                                         |   128|
2default:defaulth p
x
? 
?
%s
*synth2w
c|15    |    regfile1                          |regfile                                    |   143|
2default:defaulth p
x
? 
?
%s
*synth2w
c|16    |  pduex                               |pdu_1cycle                                 |   119|
2default:defaulth p
x
? 
?
%s
*synth2w
c+------+--------------------------------------+-------------------------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 264 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:43 . Memory (MB): peak = 961.453 ; gain = 349.656
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 961.453 ; gain = 438.844
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1732default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
961.4532default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 125 instances were transformed.
  LD => LDCE: 43 instances
  RAM128X1D => RAM128X1D (RAMD64E, RAMD64E, MUXF7, MUXF7, RAMD64E, RAMD64E): 64 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 18 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
1492default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:522default:default2
00:00:542default:default2
961.4532default:default2
670.3282default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
961.4532default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2U
AE:/lab4/single_cpu -membertest/single_cpu.runs/synth_1/single.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file single_utilization_synth.rpt -pb single_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr 26 19:31:19 20222default:defaultZ17-206h px? 


End Record