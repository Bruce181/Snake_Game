
w
Command: %s
53*	vivadotcl2I
5synth_design -top Snake_Wrapper -part xc7a35tcpg236-12default:defaultZ4-113h px
7
Starting synth_design
149*	vivadotclZ4-321h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 264.715 ; gain = 87.059
2default:defaulth px
�
synthesizing module '%s'638*oasys2!
Snake_Wrapper2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snake_Wrapper.v2default:default2
12default:default8@Z8-638h px
�
synthesizing module '%s'638*oasys2,
Navigation_State_Machine2default:default2�
D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Navigtaion_State_Machine.v2default:default2
12default:default8@Z8-638h px
H
%s*synth23
	Parameter UP bound to: 2'b00 
2default:defaulth px
J
%s*synth25
!	Parameter DOWN bound to: 2'b01 
2default:defaulth px
J
%s*synth25
!	Parameter LEFT bound to: 2'b10 
2default:defaulth px
K
%s*synth26
"	Parameter RIGHT bound to: 2'b11 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
Navigation_State_Machine2default:default2
12default:default2
12default:default2�
D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Navigtaion_State_Machine.v2default:default2
12default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2(
Master_State_Machine2default:default2�
{D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Master_State_Machine.v2default:default2
12default:default8@Z8-638h px
K
%s*synth26
"	Parameter START bound to: 2'b00 
2default:defaulth px
J
%s*synth25
!	Parameter PLAY bound to: 2'b01 
2default:defaulth px
L
%s*synth27
#	Parameter WINNER bound to: 2'b10 
2default:defaulth px
K
%s*synth26
"	Parameter LOSER bound to: 2'b11 
2default:defaulth px
�
default block is never used226*oasys2�
{D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Master_State_Machine.v2default:default2
372default:default8@Z8-226h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
Master_State_Machine2default:default2
22default:default2
12default:default2�
{D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Master_State_Machine.v2default:default2
12default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2

Random_Num2default:default2�
qD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Random_Num.v2default:default2
12default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2

Random_Num2default:default2
32default:default2
12default:default2�
qD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Random_Num.v2default:default2
12default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
Score_Counter2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Score_Counter.v2default:default2
12default:default8@Z8-638h px
�
default block is never used226*oasys2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Score_Counter.v2default:default2
822default:default8@Z8-226h px
�
default block is never used226*oasys2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Score_Counter.v2default:default2
1172default:default8@Z8-226h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Score_Counter2default:default2
42default:default2
12default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Score_Counter.v2default:default2
12default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
VGA_Interface2default:default2�
rD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/VGA_Display.v2default:default2
232default:default8@Z8-638h px
f
%s*synth2Q
=	Parameter VertTimeToPulseWidthEnd bound to: 10'b0000000010 
2default:defaulth px
e
%s*synth2P
<	Parameter VertTimeToBackPorchEnd bound to: 10'b0000011111 
2default:defaulth px
g
%s*synth2R
>	Parameter VertTimeToDisplayTimeEnd bound to: 10'b0111111111 
2default:defaulth px
f
%s*synth2Q
=	Parameter VertTimeToFrontPorchEnd bound to: 10'b1000001001 
2default:defaulth px
f
%s*synth2Q
=	Parameter HorzTimeToPulseWidthEnd bound to: 10'b0001100000 
2default:defaulth px
e
%s*synth2P
<	Parameter HorzTimeToBackPorchEnd bound to: 10'b0010010000 
2default:defaulth px
g
%s*synth2R
>	Parameter HorzTimeToDisplayTimeEnd bound to: 10'b1100010000 
2default:defaulth px
f
%s*synth2Q
=	Parameter HorzTimeToFrontPorchEnd bound to: 10'b1100100000 
2default:defaulth px
�
synthesizing module '%s'638*oasys2#
Generic_counter2default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-638h px
_
%s*synth2J
6	Parameter COUNTER_WIDTH bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter COUNTER_MAX bound to: 3 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
Generic_counter2default:default2
52default:default2
12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-256h px
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
Counte02default:default2#
Generic_counter2default:default2
52default:default2
42default:default2�
rD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/VGA_Display.v2default:default2
492default:default8@Z8-350h px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized02default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 10 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter COUNTER_MAX bound to: 799 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized02default:default2
52default:default2
12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-638h px
_
%s*synth2J
6	Parameter COUNTER_WIDTH bound to: 9 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter COUNTER_MAX bound to: 520 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized12default:default2
52default:default2
12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
VGA_Interface2default:default2
62default:default2
12default:default2�
rD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/VGA_Display.v2default:default2
232default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
Random_Colour2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Random_Colour.v2default:default2
12default:default8@Z8-638h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Random_Colour2default:default2
72default:default2
12default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Random_Colour.v2default:default2
12default:default8@Z8-256h px
�
synthesizing module '%s'638*oasys2!
Snake_Control2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
12default:default8@Z8-638h px
d
%s*synth2O
;	Parameter BOUNDARY_THICKNESS bound to: 1 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter SnakeLength bound to: 100 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter Ini_Length bound to: 8 - type: integer 
2default:defaulth px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized22default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 23 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter COUNTER_MAX bound to: 3500000 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized22default:default2
72default:default2
12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-256h px
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2!
Cycle_Counter2default:default2#
Generic_counter2default:default2
52default:default2
42default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
952default:default8@Z8-350h px
�
synthesizing module '%s'638*oasys23
Generic_counter__parameterized32default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-638h px
`
%s*synth2K
7	Parameter COUNTER_WIDTH bound to: 12 - type: integer 
2default:defaulth px
`
%s*synth2K
7	Parameter COUNTER_MAX bound to: 4094 - type: integer 
2default:defaulth px
�
%done synthesizing module '%s' (%s#%s)256*oasys23
Generic_counter__parameterized32default:default2
72default:default2
12default:default2�
vD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Generic_Counter.v2default:default2
212default:default8@Z8-256h px
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2"
Colour_Counter2default:default2#
Generic_counter2default:default2
52default:default2
42default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
1052default:default8@Z8-350h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Snake_Control2default:default2
82default:default2
12default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
12default:default8@Z8-256h px
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Snake_Wrapper2default:default2
92default:default2
12default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snake_Wrapper.v2default:default2
12default:default8@Z8-256h px
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 302.738 ; gain = 125.082
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 302.738 ; gain = 125.082
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
;

Processing XDC Constraints
244*projectZ1-262h px
:
Initializing timing engine
348*projectZ1-569h px
�
Parsing XDC File [%s]
179*designutils2�
rD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/constrs_1/new/Snake_XDC.xdc2default:defaultZ20-179h px
�
Finished Parsing XDC File [%s]
178*designutils2�
rD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/constrs_1/new/Snake_XDC.xdc2default:defaultZ20-178h px
E
&Completed Processing XDC Constraints

245*projectZ1-263h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
596.5982default:default2
0.0002default:defaultZ17-268h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
G
%s*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
W
%s*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
p
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
WIN2default:defaultZ8-5546h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2092default:default8@Z8-41h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2102default:default8@Z8-41h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2092default:default8@Z8-41h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2102default:default8@Z8-41h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2092default:default8@Z8-41h px
�
L'%s' operator could not be merged with '%s' operator due to loss of accuracy41*oasys2
_-2default:default2
+2default:default2�
tD:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/New_Projects/Advanced_Snake/Advanced_Snake.srcs/sources_1/new/Snkae_Control.v2default:default2
2102default:default8@Z8-41h px
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
TARGET_SIZE2default:default2
42default:default2
52default:defaultZ8-5544h px
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

FrameCount2default:defaultZ8-5546h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     28 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     23 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     12 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 5     
2default:defaulth px
W
%s*synth2B
.	   3 Input      9 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit         XORs := 5     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit         XORs := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               28 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 5     
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 34    
2default:defaulth px
W
%s*synth2B
.	                7 Bit    Registers := 33    
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 22    
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     23 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 6     
2default:defaulth px
W
%s*synth2B
.	   4 Input     12 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 11    
2default:defaulth px
W
%s*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 10    
2default:defaulth px
W
%s*synth2B
.	  11 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	   6 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 205   
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 12    
2default:defaulth px
W
%s*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
V
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px
J
%s*synth25
!Module Navigation_State_Machine 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth px
F
%s*synth21
Module Master_State_Machine 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth px
<
%s*synth2'
Module Random_Num 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit         XORs := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth px
?
%s*synth2*
Module Score_Counter 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     28 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               28 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  11 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth px
A
%s*synth2,
Module Generic_counter 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized0 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized1 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
?
%s*synth2*
Module VGA_Interface 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth px
?
%s*synth2*
Module Random_Colour 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized2 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     23 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
Q
%s*synth2<
(Module Generic_counter__parameterized3 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
?
%s*synth2*
Module Snake_Control 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   4 Input     12 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   3 Input      9 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      9 Bit       Adders := 3     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 32    
2default:defaulth px
W
%s*synth2B
.	                7 Bit    Registers := 31    
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     23 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     12 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   4 Input     12 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 12    
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 204   
2default:defaulth px
W
%s*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
X
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2k
WPart Resources:
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
K
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
p
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
WIN2default:defaultZ8-5546h px
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Finished Parallel Reinference  : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[22] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[21] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[20] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[19] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[18] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[17] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[16] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[15] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[14] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[13] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[12] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[11] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[10] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[9] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[8] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[7] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[6] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[5] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[4] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[3] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[2] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[1] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[0] 2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
Trigger_out_reg2default:default23
Generic_counter__parameterized22default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[11] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\count_value_reg[10] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[9] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[8] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[7] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[6] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[5] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[4] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[3] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[2] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[1] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\count_value_reg[0] 2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
Trigger_out_reg2default:default23
Generic_counter__parameterized32default:defaultZ8-3332h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,
Start Area Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
zFinished Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Parallel Area Optimization  : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
�
%s*synth2�
�Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 596.598 ; gain = 418.941
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
C
%s*synth2.
Start Timing Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
O
%s*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 600.426 ; gain = 422.770
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 601.480 ; gain = 423.824
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-
Start Technology Mapping
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\Snake_C/Curr_Snake_reg[0] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][6] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][5] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][4] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][3] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][2] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][1] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_Y_reg[30][0] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][7] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][6] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][5] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][4] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][3] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][2] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][1] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\Snake_C/PixShift[29].SnakeState_X_reg[30][0] 2default:default2!
Snake_Wrapper2default:defaultZ8-3332h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
<
%s*synth2'
Start IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
~Start Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Writing Synthesis Report
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
>
%s*synth2)

Report BlackBoxes: 
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
| |BlackBox name |Instances |
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
>
%s*synth2)

Report Cell Usage: 
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
A
%s*synth2,
|      |Cell   |Count |
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
A
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px
A
%s*synth2,
|2     |CARRY4 |    70|
2default:defaulth px
A
%s*synth2,
|3     |LUT1   |   126|
2default:defaulth px
A
%s*synth2,
|4     |LUT2   |   160|
2default:defaulth px
A
%s*synth2,
|5     |LUT3   |   119|
2default:defaulth px
A
%s*synth2,
|6     |LUT4   |    93|
2default:defaulth px
A
%s*synth2,
|7     |LUT5   |   146|
2default:defaulth px
A
%s*synth2,
|8     |LUT6   |   761|
2default:defaulth px
A
%s*synth2,
|9     |MUXF7  |     3|
2default:defaulth px
A
%s*synth2,
|10    |FDCE   |    84|
2default:defaulth px
A
%s*synth2,
|11    |FDPE   |    24|
2default:defaulth px
A
%s*synth2,
|12    |FDRE   |   498|
2default:defaulth px
A
%s*synth2,
|13    |FDSE   |   156|
2default:defaulth px
A
%s*synth2,
|14    |IBUF   |    11|
2default:defaulth px
A
%s*synth2,
|15    |OBUF   |    34|
2default:defaulth px
A
%s*synth2,
+------+-------+------+
2default:defaulth px
B
%s*synth2-

Report Instance Areas: 
2default:defaulth px
i
%s*synth2T
@+------+--------------+--------------------------------+------+
2default:defaulth px
i
%s*synth2T
@|      |Instance      |Module                          |Cells |
2default:defaulth px
i
%s*synth2T
@+------+--------------+--------------------------------+------+
2default:defaulth px
i
%s*synth2T
@|1     |top           |                                |  2286|
2default:defaulth px
i
%s*synth2T
@|2     |  APPLE       |Random_Num                      |   180|
2default:defaulth px
i
%s*synth2T
@|3     |  Appearance  |Random_Colour                   |    41|
2default:defaulth px
i
%s*synth2T
@|4     |  MARK        |Score_Counter                   |   384|
2default:defaulth px
i
%s*synth2T
@|5     |  Master      |Master_State_Machine            |    15|
2default:defaulth px
i
%s*synth2T
@|6     |  NAV         |Navigation_State_Machine        |     5|
2default:defaulth px
i
%s*synth2T
@|7     |  Snake_C     |Snake_Control                   |  1041|
2default:defaulth px
i
%s*synth2T
@|8     |  VGA         |VGA_Interface                   |   572|
2default:defaulth px
i
%s*synth2T
@|9     |    Counte0   |Generic_counter                 |     6|
2default:defaulth px
i
%s*synth2T
@|10    |    Counter_H |Generic_counter__parameterized0 |    39|
2default:defaulth px
i
%s*synth2T
@|11    |    Counter_V |Generic_counter__parameterized1 |    27|
2default:defaulth px
i
%s*synth2T
@+------+--------------+--------------------------------+------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
p
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 53 warnings.
2default:defaulth px
�
%s*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:25 . Memory (MB): peak = 671.121 ; gain = 166.555
2default:defaulth px
�
%s*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 671.121 ; gain = 493.465
2default:defaulth px
?
 Translating synthesized netlist
350*projectZ1-571h px
c
-Analyzing %s Unisim elements for replacement
17*netlist2
812default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
R
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
512default:default2
562default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:282default:default2
671.1212default:default2
461.5632default:defaultZ17-268h px
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.078 . Memory (MB): peak = 671.121 ; gain = 0.000
*commonh px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Nov 22 19:40:39 20242default:defaultZ17-206h px