
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
618.9692	
191.910Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/utils_1/imports/synth_1/OTTER_MCU.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2i
gC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/utils_1/imports/synth_1/OTTER_MCU.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2Q
Osynth_design -top OTTER_Wrapper -part xc7a35ticpg236-1L -incremental_mode quickZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a35tiZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a35tiZ17-349h px� 
F
Loading part %s157*device2
xc7a35ticpg236-1LZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
3712Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1277.207 ; gain = 468.223
h px� 
�
synthesizing module '%s'%s4497*oasys2
OTTER_Wrapper2
 2j
fC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_Wrapper_v1_02.sv2
178@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	OTTER_MCU2
 2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
158@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
Mux_2x42
 2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Mux_2x4.sv2
138@Z8-6157h px� 
�
default block is never used226*oasys2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Mux_2x4.sv2
208@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Mux_2x42
 2
02
12^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Mux_2x4.sv2
138@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
MUX_22	
Mux_2x42
Mux_PC2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
608@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
MUX_32	
Mux_2x42
Mux_PC2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
608@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
Mux_PC2	
Mux_2x42
62
42`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
608@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2
 2Y
UC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/PC.sv2
158@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2
 2
02
12Y
UC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/PC.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MemoryBase2
 2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
498@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
otter_memory.mem2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
788@Z8-3876h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
828@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
838@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
848@Z8-311h px� 
�
1ignoring non-constant assignment in initial block311*oasys2]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
858@Z8-311h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-3112
100Z17-14h px� 
�
synthesizing module '%s'%s4497*oasys2	
CacheDM2
 2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheDM.sv2
158@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
CacheDM2
 2
02
12^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheDM.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

CacheFSM2
 2_
[C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheFSM.sv2
168@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

CacheFSM2
 2
02
12_
[C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheFSM.sv2
168@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
CacheSA2
 2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
168@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1278@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
CacheSA2
 2
02
12^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
168@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MemoryBase2
 2
02
12]
YC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Memory.sv2
498@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
DECODER2
 2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/DECODER.sv2
158@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/DECODER.sv2
558@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
DECODER2
 2
02
12^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/DECODER.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
RegFile2
 2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/RegFile.sv2
158@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
RegFile2
 2
02
12^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/RegFile.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	IMMED_GEN2
 2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/IMMED_GEN.sv2
148@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/IMMED_GEN.sv2
298@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	IMMED_GEN2
 2
02
12`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/IMMED_GEN.sv2
148@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Branch_DCDR2
 2b
^C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Branch_DCDR.sv2
158@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2b
^C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Branch_DCDR.sv2
428@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Branch_DCDR2
 2
02
12b
^C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Branch_DCDR.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Hazard_Gen2
 2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
158@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Hazard_Gen2
 2
02
12a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
158@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
MUX_32	
Mux_2x42
	Mux_ALU_A2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1708@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	Mux_ALU_A2	
Mux_2x42
62
52`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1708@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
MUX_32	
Mux_2x42
	Mux_ALU_B2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1718@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	Mux_ALU_B2	
Mux_2x42
62
52`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1718@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2Z
VC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/ALU.sv2
158@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12Z
VC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/ALU.sv2
158@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
MUX_12	
Mux_2x42
Mux_RF2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1898@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
Mux_RF2	
Mux_2x42
62
52`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1898@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	OTTER_MCU2
 2
02
12`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

SevSegDisp2
 2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/SevSegDisp.sv2
218@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BCD2
 2Z
VC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/BCD.sv2
188@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCD2
 2
02
12Z
VC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/BCD.sv2
188@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CathodeDriver2
 2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
228@Z8-6157h px� 
�
default block is never used226*oasys2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
468@Z8-226h px� 
�
default block is never used226*oasys2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
498@Z8-226h px� 
�
default block is never used226*oasys2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
718@Z8-226h px� 
�
default block is never used226*oasys2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
938@Z8-226h px� 
�
default block is never used226*oasys2d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
1158@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CathodeDriver2
 2
02
12d
`C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CathodeDriver.sv2
228@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

SevSegDisp2
 2
02
12a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/SevSegDisp.sv2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	Debouncer2
 2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Debouncer.sv2
278@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Debouncer2
 2
02
12`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Debouncer.sv2
278@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2j
fC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_Wrapper_v1_02.sv2
818@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OTTER_Wrapper2
 2
02
12j
fC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_Wrapper_v1_02.sv2
178@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
valid_bits_reg[3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
valid_bits_reg[2][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
valid_bits_reg[1][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
valid_bits_reg[0][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[3][3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[3][3][2]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[3][3][1]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[3][3][0]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[2][3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[2][3][2]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[2][3][1]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[2][3][0]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[1][3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[1][3][2]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[1][3][1]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[1][3][0]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[0][3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[0][3][2]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[0][3][1]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
data_reg[0][3][0]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dirty_bits_reg[3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1218@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dirty_bits_reg[2][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1218@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dirty_bits_reg[1][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1218@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dirty_bits_reg[0][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1218@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
tags_reg[3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1168@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
tags_reg[2][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1168@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
tags_reg[1][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1168@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
tags_reg[0][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1168@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
LRU_reg[3][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
LRU_reg[2][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
LRU_reg[1][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
LRU_reg[0][3]2^
ZC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/CacheSA.sv2
1558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DEC_DM_WE_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_RF_WE_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
568@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_DM_WE_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
578@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_op_code_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

DM_RE1_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
848@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DEC_ALU_WE_reg2a
]C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/Hazard_Gen.sv2
818@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_packed_reg[RDEN1]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1158@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_packed_reg[RDEN2]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1158@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_packed_reg[result]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1158@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ALU_packed_reg[DM_Data]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1158@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[PC]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[srcA_SEL]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[srcB_SEL]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[ALU_FUN]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[RS1_Addr]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[RS2_Addr]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[func3]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[RDEN1]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[RDEN2]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[RS1]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[IMMED]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
DM_packed_reg[DM_Data]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[PC]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[srcA_SEL]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[srcB_SEL]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[ALU_FUN]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[DM_WE]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[DM_RE]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[DM_Size]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[DM_Sign]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RS1_Addr]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RS2_Addr]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[func3]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RDEN1]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RDEN2]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RS1]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[RS2]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[IMMED]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
WB_packed_reg[DM_Data]2`
\C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.srcs/sources_1/new/OTTER_MCU.sv2
1038@Z8-6014h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[31]2	
DECODERZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[29]2	
DECODERZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[28]2	
DECODERZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[27]2	
DECODERZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[26]2	
DECODERZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ir[25]2	
DECODERZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[1]2	
CacheSAZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[0]2	
CacheSAZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
INTR2
	OTTER_MCUZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1527.098 ; gain = 718.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1527.098 ; gain = 718.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1527.098 ; gain = 718.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1862

1527.0982
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2M
IC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/Basys3_constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2M
IC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/Basys3_constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2K
IC:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/Basys3_constraints.xdc2!
.Xil/OTTER_Wrapper_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1563.7192
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0372

1563.7192
0.000Z17-268h px� 
S
!Incremental synthesis strategy %s2274*designutils2
quickZ20-5008h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1563.719 ; gain = 754.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Loading part: xc7a35ticpg236-1L
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1563.719 ; gain = 754.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1563.719 ; gain = 754.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
i
3inferred FSM for state register '%s' in module '%s'802*oasys2
PS_reg2

CacheFSMZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_             ST_READ_MEM |                                0 | 00000000000000000000000000000001
h p
x
� 
y
%s
*synth2a
_           ST_READ_CACHE |                                1 | 00000000000000000000000000000000
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
PS_reg2

sequential2

CacheFSMZ8-3354h px� 
}
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2
"MemoryBase:/memory_reg"Z8-3971h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1563.719 ; gain = 754.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 34    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 4     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 3     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              128 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 193   
h p
x
� 
H
%s
*synth20
.	               26 Bit    Registers := 12    
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 22    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 41    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
Z
%s
*synth2B
@	             512K Bit	(4096 X 128 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 364   
h p
x
� 
F
%s
*synth2.
,	   9 Input   32 Bit        Muxes := 48    
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 21    
h p
x
� 
F
%s
*synth2.
,	   3 Input   26 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   26 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 65    
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 64    
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 32    
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 40    
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 135   
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 

?The signal %s was recognized as a true dual port RAM template.
3473*oasys2
"OTTER_Wrapper/memory_reg"Z8-3971h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1622.797 ; gain = 813.812
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
-
%s*synth2
-------NONE-------
h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
t
%s*synth2\
Z+------------------+-----------------+-----------+----------------------+---------------+
h px� 
u
%s*synth2]
[|Module Name       | RTL Object      | Inference | Size (Depth x Width) | Primitives    | 
h px� 
t
%s*synth2\
Z+------------------+-----------------+-----------+----------------------+---------------+
h px� 
u
%s*synth2]
[|Memoryi_3/IMCache | tags_reg        | Implied   | 16 x 7               | RAM16X1S x 7  | 
h px� 
u
%s*synth2]
[|Memoryi_3/IMCache | valid_bits_reg  | Implied   | 16 x 1               | RAM16X1S x 1  | 
h px� 
u
%s*synth2]
[|OTTER_Wrapper     | RegFile/RAM_reg | Implied   | 32 x 32              | RAM32M x 12   | 
h px� 
u
%s*synth2]
[+------------------+-----------------+-----------+----------------------+---------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:54 ; elapsed = 00:00:56 . Memory (MB): peak = 1646.766 ; gain = 837.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1663.473 ; gain = 854.488
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!
Block RAM: Final Mapping Report
h p
x
� 
-
%s
*synth2
-------NONE-------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
t
%s
*synth2\
Z+------------------+-----------------+-----------+----------------------+---------------+
h p
x
� 
u
%s
*synth2]
[|Module Name       | RTL Object      | Inference | Size (Depth x Width) | Primitives    | 
h p
x
� 
t
%s
*synth2\
Z+------------------+-----------------+-----------+----------------------+---------------+
h p
x
� 
u
%s
*synth2]
[|Memoryi_3/IMCache | tags_reg        | Implied   | 16 x 7               | RAM16X1S x 7  | 
h p
x
� 
u
%s
*synth2]
[|Memoryi_3/IMCache | valid_bits_reg  | Implied   | 16 x 1               | RAM16X1S x 1  | 
h p
x
� 
u
%s
*synth2]
[|OTTER_Wrapper     | RegFile/RAM_reg | Implied   | 32 x 32              | RAM32M x 12   | 
h p
x
� 
u
%s
*synth2]
[+------------------+-----------------+-----------+----------------------+---------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_02
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_12
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_22
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_32
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_42
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_52
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_62
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_72
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_82
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_1_bram_92
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_1_bram_102
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_1_bram_112
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_1_bram_122
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_1_bram_132
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_1_bram_142
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_02
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_12
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_22
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_32
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_42
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_52
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_62
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_72
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_82
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_2_bram_92
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_2_bram_102
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_2_bram_112
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_2_bram_122
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_2_bram_132
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_2_bram_142
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_02
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_12
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_22
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_32
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_42
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_52
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_62
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_72
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_82
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
$OTTER_MCU/Memory/memory_reg_3_bram_92
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_3_bram_102
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_3_bram_112
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_3_bram_122
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_3_bram_132
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%OTTER_MCU/Memory/memory_reg_3_bram_142
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:59 ; elapsed = 00:01:01 . Memory (MB): peak = 1702.496 ; gain = 893.512
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:01:04 ; elapsed = 00:01:06 . Memory (MB): peak = 1867.109 ; gain = 1058.125
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:04 ; elapsed = 00:01:06 . Memory (MB): peak = 1867.109 ; gain = 1058.125
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:05 ; elapsed = 00:01:07 . Memory (MB): peak = 1867.109 ; gain = 1058.125
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:05 ; elapsed = 00:01:07 . Memory (MB): peak = 1867.109 ; gain = 1058.125
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1877.352 ; gain = 1068.367
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1877.352 ; gain = 1068.367
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     6|
h px� 
4
%s*synth2
|2     |CARRY4   |    62|
h px� 
4
%s*synth2
|3     |LUT1     |    12|
h px� 
4
%s*synth2
|4     |LUT2     |   185|
h px� 
4
%s*synth2
|5     |LUT3     |   238|
h px� 
4
%s*synth2
|6     |LUT4     |  1820|
h px� 
4
%s*synth2
|7     |LUT5     |   850|
h px� 
4
%s*synth2
|8     |LUT6     |  3319|
h px� 
4
%s*synth2
|9     |MUXF7    |   579|
h px� 
4
%s*synth2
|10    |MUXF8    |   256|
h px� 
4
%s*synth2
|11    |RAM16X1S |     8|
h px� 
4
%s*synth2
|12    |RAM32M   |    10|
h px� 
4
%s*synth2
|13    |RAM32X1D |     4|
h px� 
4
%s*synth2
|14    |RAMB18E1 |     3|
h px� 
4
%s*synth2
|15    |RAMB36E1 |    42|
h px� 
4
%s*synth2
|17    |FDRE     |  6680|
h px� 
4
%s*synth2
|18    |FDSE     |     4|
h px� 
4
%s*synth2
|19    |IBUF     |    18|
h px� 
4
%s*synth2
|20    |OBUF     |    28|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1877.352 ; gain = 1068.367
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:51 ; elapsed = 00:01:04 . Memory (MB): peak = 1877.352 ; gain = 1031.746
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1877.352 ; gain = 1068.367
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1152

1886.5432
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
964Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12
45Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1890.2232
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 22 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

dfb43300Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1202
1902
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:112

00:01:172

1890.2232

1266.086Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0252

1890.2232
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2]
[C:/Users/Wyatt/Documents/Vivado/OTTER_MCU_Pipeline/OTTER_MCU.runs/synth_1/OTTER_Wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2e
creport_utilization -file OTTER_Wrapper_utilization_synth.rpt -pb OTTER_Wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu May 29 01:44:35 2025Z17-206h px� 


End Record