
v
Command: %s
53*	vivadotcl2E
1synth_design -top pipeline -part xc7a100tcsg324-12default:defaultZ4-113h px? 
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
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 699.078 ; gain = 177.676
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
pipeline2default:default2
 2default:default2?
|C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/single.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
pdu2default:default2
 2default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v2default:default2
12default:default8@Z8-6157h px? 
?
default block is never used226*oasys2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v2default:default2
2562default:default8@Z8-226h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
	in_2r_reg2default:default2
52default:default2
22default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v2default:default2
752default:default8@Z8-3936h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pdu2default:default2
 2default:default2
12default:default2
12default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/pdu.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cpu2default:default2
 2default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cpu.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'638*oasys2#
single_text_mem2default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
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
tc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
1322default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
single_text_mem2default:default2
52default:default2
12default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_text_mem/synth/single_text_mem.vhd2default:default2
662default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2
cu2default:default2
 2default:default2?
xC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cu.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cu2default:default2
 2default:default2
62default:default2
12default:default2?
xC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cu.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Imm2default:default2
 2default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/Imm.v2default:default2
22default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/Imm.v2default:default2
82default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Imm2default:default2
 2default:default2
72default:default2
12default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/Imm.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2?
}C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
82default:default2
12default:default2?
}C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6155h px? 
?
&Input port '%s' has an internal driver4442*oasys2
	m_rf_addr2default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cpu.v2default:default2
532default:default8@Z8-6104h px? 
?
synthesizing module '%s'%s4497*oasys2

alucontrol2default:default2
 2default:default2?
?C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
22default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
?C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
112default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

alucontrol2default:default2
 2default:default2
92default:default2
12default:default2?
?C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alucontrol.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alu.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
102default:default2
12default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/alu.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2#
single_data_mem2default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
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
tc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
1372default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
single_data_mem2default:default2
122default:default2
12default:default2?
jc:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/ip/single_data_mem/synth/single_data_mem.vhd2default:default2
712default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2
if_id2default:default2
 2default:default2_
IC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/if_id.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
if_id2default:default2
 2default:default2
132default:default2
12default:default2_
IC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/if_id.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
id_ex2default:default2
 2default:default2_
IC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/id_ex.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
id_ex2default:default2
 2default:default2
142default:default2
12default:default2_
IC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/id_ex.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ex_mem2default:default2
 2default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/ex_mem.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ex_mem2default:default2
 2default:default2
152default:default2
12default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/ex_mem.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mem_wb2default:default2
 2default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/mem_wb.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem_wb2default:default2
 2default:default2
162default:default2
12default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/mem_wb.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
forward2default:default2
 2default:default2a
KC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/forward.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
forward2default:default2
 2default:default2
172default:default2
12default:default2a
KC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/forward.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
hazard_branch2default:default2
 2default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/hazard.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
hazard_branch2default:default2
 2default:default2
182default:default2
12default:default2`
JC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/new/hazard.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2default:default2
 2default:default2
192default:default2
12default:default2?
yC:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/cpu.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pipeline2default:default2
 2default:default2
202default:default2
12default:default2?
|C:/Users/????/OneDrive/????/final/pipeline_cpu.srcs/sources_1/imports/lab4/single_cpu/single_cpu.srcs/sources_1/new/single.v2default:default2
22default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[31]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[30]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[29]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[28]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[27]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[26]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[25]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2!
hazard_branch2default:default2
ir[7]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[31]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[30]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[29]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[28]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[27]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[26]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[25]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[14]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[13]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[12]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[11]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[10]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[9]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[8]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
forward2default:default2
ir[7]2default:defaultZ8-3331h px? 
{
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
eflush2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
io_we[4]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
io_we[3]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
io_we[2]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
io_we[1]2default:defaultZ8-3331h px? 
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
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14h px? 