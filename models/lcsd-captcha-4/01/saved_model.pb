ў▒(
░>Х>
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
+
Ceil
x"T
y"T"
Ttype:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ъ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Y
	DecodePng
contents
image"dtype"
channelsint "
dtypetype0:
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
─
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
TvaluestypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
TouttypeИ
b
LookupTableInsertV2
table_handle
keys"Tin
values"Tout"
Tintype"
TouttypeИ
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
и
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
П
ResizeBicubic
images"T
size
resized_images"
Ttype:
2		"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
▐
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.15.02unknown╚л%
X
Variable/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
l
Variable
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
в
Variable/AssignAssignVariableVariable/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
a
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
: 
G
ConstConst*
value	B : *
dtype0*
_output_shapes
: 
P
Const_1Const*
valueB 2      @@*
dtype0*
_output_shapes
: 
Y
input_image_as_bytesPlaceholder*
shape:*
dtype0*
_output_shapes
:
C
RankRankinput_image_as_bytes*
T0*
_output_shapes
: 
H
Less/yConst*
value	B :*
dtype0*
_output_shapes
: 
;
LessLessRankLess/y*
T0*
_output_shapes
: 
D
cond/SwitchSwitchLessLess*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
?
cond/pred_idIdentityLess*
T0
*
_output_shapes
: 
e
cond/ExpandDims/dimConst^cond/switch_t*
value	B : *
dtype0*
_output_shapes
: 
{
cond/ExpandDims
ExpandDimscond/ExpandDims/Switch:1cond/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Ф
cond/ExpandDims/SwitchSwitchinput_image_as_bytescond/pred_id*
T0*'
_class
loc:@input_image_as_bytes*
_output_shapes

::
Л
cond/Switch_1Switchinput_image_as_bytescond/pred_id*
T0*'
_class
loc:@input_image_as_bytes*
_output_shapes

::
a

cond/MergeMergecond/Switch_1cond/ExpandDims*
T0*
N*
_output_shapes
:: 
\
	map/ShapeShape
cond/Merge*
T0*
out_type0*#
_output_shapes
:         
a
map/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
map/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
map/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
┌
map/TensorArrayTensorArrayV3map/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
o
map/TensorArrayUnstack/ShapeShape
cond/Merge*
T0*
out_type0*#
_output_shapes
:         
t
*map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ь
$map/TensorArrayUnstack/strided_sliceStridedSlicemap/TensorArrayUnstack/Shape*map/TensorArrayUnstack/strided_slice/stack,map/TensorArrayUnstack/strided_slice/stack_1,map/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
"map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
─
map/TensorArrayUnstack/rangeRange"map/TensorArrayUnstack/range/start$map/TensorArrayUnstack/strided_slice"map/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ф
>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map/TensorArraymap/TensorArrayUnstack/range
cond/Mergemap/TensorArray:1*
T0*
_class
loc:@cond/Merge*
_output_shapes
: 
K
	map/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
▄
map/TensorArray_1TensorArrayV3map/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
]
map/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
н
map/while/EnterEntermap/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
Э
map/while/Enter_1Enter	map/Const*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
з
map/while/Enter_2Entermap/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
n
map/while/MergeMergemap/while/Entermap/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
map/while/Merge_1Mergemap/while/Enter_1map/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
t
map/while/Merge_2Mergemap/while/Enter_2map/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
^
map/while/LessLessmap/while/Mergemap/while/Less/Enter*
T0*
_output_shapes
: 
и
map/while/Less/EnterEntermap/strided_slice*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
b
map/while/Less_1Lessmap/while/Merge_1map/while/Less/Enter*
T0*
_output_shapes
: 
\
map/while/LogicalAnd
LogicalAndmap/while/Lessmap/while/Less_1*
_output_shapes
: 
L
map/while/LoopCondLoopCondmap/while/LogicalAnd*
_output_shapes
: 
Ж
map/while/SwitchSwitchmap/while/Mergemap/while/LoopCond*
T0*"
_class
loc:@map/while/Merge*
_output_shapes
: : 
М
map/while/Switch_1Switchmap/while/Merge_1map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_1*
_output_shapes
: : 
М
map/while/Switch_2Switchmap/while/Merge_2map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_2*
_output_shapes
: : 
S
map/while/IdentityIdentitymap/while/Switch:1*
T0*
_output_shapes
: 
W
map/while/Identity_1Identitymap/while/Switch_1:1*
T0*
_output_shapes
: 
W
map/while/Identity_2Identitymap/while/Switch_2:1*
T0*
_output_shapes
: 
f
map/while/add/yConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
\
map/while/addAddV2map/while/Identitymap/while/add/y*
T0*
_output_shapes
: 
╡
map/while/TensorArrayReadV3TensorArrayReadV3!map/while/TensorArrayReadV3/Entermap/while/Identity_1#map/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:
╖
!map/while/TensorArrayReadV3/EnterEntermap/TensorArray*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
:
ф
#map/while/TensorArrayReadV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
Р
map/while/DecodePng	DecodePngmap/while/TensorArrayReadV3*
channels*
dtype0*4
_output_shapes"
 :                  
b
map/while/ShapeShapemap/while/DecodePng*
T0*
out_type0*
_output_shapes
:
|
map/while/strided_slice/stackConst^map/while/Identity*
valueB:*
dtype0*
_output_shapes
:
~
map/while/strided_slice/stack_1Const^map/while/Identity*
valueB:*
dtype0*
_output_shapes
:
~
map/while/strided_slice/stack_2Const^map/while/Identity*
valueB:*
dtype0*
_output_shapes
:
л
map/while/strided_sliceStridedSlicemap/while/Shapemap/while/strided_slice/stackmap/while/strided_slice/stack_1map/while/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
~
map/while/strided_slice_1/stackConst^map/while/Identity*
valueB: *
dtype0*
_output_shapes
:
А
!map/while/strided_slice_1/stack_1Const^map/while/Identity*
valueB:*
dtype0*
_output_shapes
:
А
!map/while/strided_slice_1/stack_2Const^map/while/Identity*
valueB:*
dtype0*
_output_shapes
:
│
map/while/strided_slice_1StridedSlicemap/while/Shapemap/while/strided_slice_1/stack!map/while/strided_slice_1/stack_1!map/while/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
w
map/while/truediv/CastCastmap/while/strided_slice*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
{
map/while/truediv/Cast_1Castmap/while/strided_slice_1*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
o
map/while/truedivRealDivmap/while/truediv/Castmap/while/truediv/Cast_1*
T0*
_output_shapes
: 
]
map/while/mulMulmap/while/truedivmap/while/mul/Enter*
T0*
_output_shapes
: 
Э
map/while/mul/EnterEnterConst_1*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
F
map/while/CeilCeilmap/while/mul*
T0*
_output_shapes
: 
i
map/while/ToInt32Castmap/while/Ceil*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
l
map/while/truediv_1/xConst^map/while/Identity*
value	B :O*
dtype0*
_output_shapes
: 
w
map/while/truediv_1/CastCastmap/while/truediv_1/x*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
u
map/while/truediv_1/Cast_1Castmap/while/ToInt32*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
u
map/while/truediv_1RealDivmap/while/truediv_1/Castmap/while/truediv_1/Cast_1*
T0*
_output_shapes
: 
a
map/while/mul_1Mulmap/while/truediv_1map/while/mul/Enter*
T0*
_output_shapes
: 
J
map/while/Ceil_1Ceilmap/while/mul_1*
T0*
_output_shapes
: 
m
map/while/ToInt32_1Castmap/while/Ceil_1*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
o
map/while/GreaterEqual/xConst^map/while/Identity*
value	B :O*
dtype0*
_output_shapes
: 
t
map/while/GreaterEqualGreaterEqualmap/while/GreaterEqual/xmap/while/ToInt32*
T0*
_output_shapes
: 
r
map/while/cond/SwitchSwitchmap/while/GreaterEqualmap/while/GreaterEqual*
T0
*
_output_shapes
: : 
]
map/while/cond/switch_tIdentitymap/while/cond/Switch:1*
T0
*
_output_shapes
: 
[
map/while/cond/switch_fIdentitymap/while/cond/Switch*
T0
*
_output_shapes
: 
[
map/while/cond/pred_idIdentitymap/while/GreaterEqual*
T0
*
_output_shapes
: 
Ж
"map/while/cond/strided_slice/stackConst^map/while/cond/switch_t*
valueB: *
dtype0*
_output_shapes
:
И
$map/while/cond/strided_slice/stack_1Const^map/while/cond/switch_t*
valueB:*
dtype0*
_output_shapes
:
И
$map/while/cond/strided_slice/stack_2Const^map/while/cond/switch_t*
valueB:*
dtype0*
_output_shapes
:
╒
map/while/cond/strided_sliceStridedSlice%map/while/cond/strided_slice/Switch:1"map/while/cond/strided_slice/stack$map/while/cond/strided_slice/stack_1$map/while/cond/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
е
#map/while/cond/strided_slice/SwitchSwitchmap/while/Shapemap/while/cond/pred_id*
T0*"
_class
loc:@map/while/Shape* 
_output_shapes
::
З
map/while/cond/LessEqual	LessEqualmap/while/cond/strided_slice!map/while/cond/LessEqual/Switch:1*
T0*
_output_shapes
: 
ж
map/while/cond/LessEqual/EnterEnterConst*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
╖
map/while/cond/LessEqual/SwitchSwitchmap/while/cond/LessEqual/Entermap/while/cond/pred_id*
T0*1
_class'
%#loc:@map/while/cond/LessEqual/Enter*
_output_shapes
: : 
{
map/while/cond/cond/SwitchSwitchmap/while/cond/LessEqualmap/while/cond/LessEqual*
T0
*
_output_shapes
: : 
g
map/while/cond/cond/switch_tIdentitymap/while/cond/cond/Switch:1*
T0
*
_output_shapes
: 
e
map/while/cond/cond/switch_fIdentitymap/while/cond/cond/Switch*
T0
*
_output_shapes
: 
b
map/while/cond/cond/pred_idIdentitymap/while/cond/LessEqual*
T0
*
_output_shapes
: 
й
map/while/cond/cond/ToFloatCast&map/while/cond/cond/ToFloat/Switch_1:1*

SrcT0*
Truncate( *

DstT0*4
_output_shapes"
 :                  
р
"map/while/cond/cond/ToFloat/SwitchSwitchmap/while/DecodePngmap/while/cond/pred_id*
T0*&
_class
loc:@map/while/DecodePng*T
_output_shapesB
@:                  :                  
°
$map/while/cond/cond/ToFloat/Switch_1Switch$map/while/cond/cond/ToFloat/Switch:1map/while/cond/cond/pred_id*
T0*&
_class
loc:@map/while/DecodePng*T
_output_shapesB
@:                  :                  
К
)map/while/cond/cond/resize/ExpandDims/dimConst^map/while/cond/cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
█
%map/while/cond/cond/resize/ExpandDims
ExpandDims,map/while/cond/cond/resize/ExpandDims/Switch)map/while/cond/cond/resize/ExpandDims/dim*

Tdim0*
T0*8
_output_shapes&
$:"                  
А
,map/while/cond/cond/resize/ExpandDims/SwitchSwitch$map/while/cond/cond/ToFloat/Switch:1map/while/cond/cond/pred_id*
T0*&
_class
loc:@map/while/DecodePng*T
_output_shapesB
@:                  :                  
│
map/while/cond/cond/resize/sizePack&map/while/cond/cond/resize/size/Switch(map/while/cond/cond/resize/size/Switch_2*
T0*

axis *
N*
_output_shapes
:
╞
&map/while/cond/cond/resize/size/SwitchSwitch!map/while/cond/LessEqual/Switch:1map/while/cond/cond/pred_id*
T0*1
_class'
%#loc:@map/while/cond/LessEqual/Enter*
_output_shapes
: : 
ж
(map/while/cond/cond/resize/size/Switch_1Switchmap/while/ToInt32map/while/cond/pred_id*
T0*$
_class
loc:@map/while/ToInt32*
_output_shapes
: : 
─
(map/while/cond/cond/resize/size/Switch_2Switch*map/while/cond/cond/resize/size/Switch_1:1map/while/cond/cond/pred_id*
T0*$
_class
loc:@map/while/ToInt32*
_output_shapes
: : 
є
(map/while/cond/cond/resize/ResizeBicubicResizeBicubic%map/while/cond/cond/resize/ExpandDimsmap/while/cond/cond/resize/size*
align_corners( *
half_pixel_centers( *
T0*8
_output_shapes&
$:"                  
н
"map/while/cond/cond/resize/SqueezeSqueeze(map/while/cond/cond/resize/ResizeBicubic*
squeeze_dims
 *
T0*4
_output_shapes"
 :                  
н
map/while/cond/cond/MergeMerge"map/while/cond/cond/resize/Squeezemap/while/cond/cond/ToFloat*
T0*
N*6
_output_shapes$
":                  : 
А
$map/while/cond/resize/ExpandDims/dimConst^map/while/cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
╠
 map/while/cond/resize/ExpandDims
ExpandDims'map/while/cond/resize/ExpandDims/Switch$map/while/cond/resize/ExpandDims/dim*

Tdim0*
T0*8
_output_shapes&
$:"                  
х
'map/while/cond/resize/ExpandDims/SwitchSwitchmap/while/DecodePngmap/while/cond/pred_id*
T0*&
_class
loc:@map/while/DecodePng*T
_output_shapesB
@:                  :                  
x
map/while/cond/resize/size/1Const^map/while/cond/switch_f*
value	B :O*
dtype0*
_output_shapes
: 
Э
map/while/cond/resize/sizePack!map/while/cond/resize/size/Switchmap/while/cond/resize/size/1*
T0*

axis *
N*
_output_shapes
:
г
!map/while/cond/resize/size/SwitchSwitchmap/while/ToInt32_1map/while/cond/pred_id*
T0*&
_class
loc:@map/while/ToInt32_1*
_output_shapes
: : 
█
#map/while/cond/resize/ResizeBicubicResizeBicubic map/while/cond/resize/ExpandDimsmap/while/cond/resize/size*
align_corners( *
half_pixel_centers( *
T0*/
_output_shapes
:         O
Ъ
map/while/cond/resize/SqueezeSqueeze#map/while/cond/resize/ResizeBicubic*
squeeze_dims
 *
T0*+
_output_shapes
:         O
б
map/while/cond/MergeMergemap/while/cond/resize/Squeezemap/while/cond/cond/Merge*
T0*
N*6
_output_shapes$
":                  : 
Г
,map/while/pad_to_bounding_box/ExpandDims/dimConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
╔
(map/while/pad_to_bounding_box/ExpandDims
ExpandDimsmap/while/cond/Merge,map/while/pad_to_bounding_box/ExpandDims/dim*

Tdim0*
T0*8
_output_shapes&
$:"                  
Л
#map/while/pad_to_bounding_box/ShapeShape(map/while/pad_to_bounding_box/ExpandDims*
T0*
out_type0*
_output_shapes
:
К
3map/while/pad_to_bounding_box/assert_positive/ConstConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
┼
>map/while/pad_to_bounding_box/assert_positive/assert_less/LessLess3map/while/pad_to_bounding_box/assert_positive/Const#map/while/pad_to_bounding_box/Shape*
T0*
_output_shapes
:
Ю
?map/while/pad_to_bounding_box/assert_positive/assert_less/ConstConst^map/while/Identity*
valueB: *
dtype0*
_output_shapes
:
·
=map/while/pad_to_bounding_box/assert_positive/assert_less/AllAll>map/while/pad_to_bounding_box/assert_positive/assert_less/Less?map/while/pad_to_bounding_box/assert_positive/assert_less/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
┬
Fmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/ConstConst^map/while/Identity*7
value.B, B&all dims of 'image.shape' must be > 0.*
dtype0*
_output_shapes
: 
╩
Nmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/Assert/data_0Const^map/while/Identity*7
value.B, B&all dims of 'image.shape' must be > 0.*
dtype0*
_output_shapes
: 
¤
Gmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/AssertAssert=map/while/pad_to_bounding_box/assert_positive/assert_less/AllNmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/Assert/data_0*

T
2*
	summarize
y
"map/while/pad_to_bounding_box/RankConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Л
4map/while/pad_to_bounding_box/assert_greater_equal/yConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
╩
?map/while/pad_to_bounding_box/assert_greater_equal/GreaterEqualGreaterEqual"map/while/pad_to_bounding_box/Rank4map/while/pad_to_bounding_box/assert_greater_equal/y*
T0*
_output_shapes
: 
Р
8map/while/pad_to_bounding_box/assert_greater_equal/ConstConst^map/while/Identity*
valueB *
dtype0*
_output_shapes
: 
э
6map/while/pad_to_bounding_box/assert_greater_equal/AllAll?map/while/pad_to_bounding_box/assert_greater_equal/GreaterEqual8map/while/pad_to_bounding_box/assert_greater_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
└
?map/while/pad_to_bounding_box/assert_greater_equal/Assert/ConstConst^map/while/Identity*<
value3B1 B+'image' must be at least three-dimensional.*
dtype0*
_output_shapes
: 
┬
Amap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_1Const^map/while/Identity*<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0*
_output_shapes
: 
┬
Amap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_2Const^map/while/Identity*<
value3B1 B+x (map/while/pad_to_bounding_box/Rank:0) = *
dtype0*
_output_shapes
: 
╘
Amap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_3Const^map/while/Identity*N
valueEBC B=y (map/while/pad_to_bounding_box/assert_greater_equal/y:0) = *
dtype0*
_output_shapes
: 
╚
Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_0Const^map/while/Identity*<
value3B1 B+'image' must be at least three-dimensional.*
dtype0*
_output_shapes
: 
╚
Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_1Const^map/while/Identity*<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0*
_output_shapes
: 
╚
Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_2Const^map/while/Identity*<
value3B1 B+x (map/while/pad_to_bounding_box/Rank:0) = *
dtype0*
_output_shapes
: 
┌
Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_4Const^map/while/Identity*N
valueEBC B=y (map/while/pad_to_bounding_box/assert_greater_equal/y:0) = *
dtype0*
_output_shapes
: 
в
@map/while/pad_to_bounding_box/assert_greater_equal/Assert/AssertAssert6map/while/pad_to_bounding_box/assert_greater_equal/AllGmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_0Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_1Gmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_2"map/while/pad_to_bounding_box/RankGmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_44map/while/pad_to_bounding_box/assert_greater_equal/y*
T

2*
	summarize
Н
%map/while/pad_to_bounding_box/Shape_1Shape(map/while/pad_to_bounding_box/ExpandDims*
T0*
out_type0*
_output_shapes
:
Ф
%map/while/pad_to_bounding_box/unstackUnpack%map/while/pad_to_bounding_box/Shape_1*
T0*	
num*

axis *
_output_shapes

: : : : 
z
#map/while/pad_to_bounding_box/sub/xConst^map/while/Identity*
value	B :O*
dtype0*
_output_shapes
: 
Ч
!map/while/pad_to_bounding_box/subSub#map/while/pad_to_bounding_box/sub/x'map/while/pad_to_bounding_box/unstack:2*
T0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/sub_1/yConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
Т
#map/while/pad_to_bounding_box/sub_1Submap/while/cond/LessEqual/Enter%map/while/pad_to_bounding_box/sub_1/y*
T0*
_output_shapes
: 
Щ
#map/while/pad_to_bounding_box/sub_2Sub#map/while/pad_to_bounding_box/sub_1'map/while/pad_to_bounding_box/unstack:1*
T0*
_output_shapes
: 
Г
,map/while/pad_to_bounding_box/GreaterEqual/yConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
м
*map/while/pad_to_bounding_box/GreaterEqualGreaterEqual!map/while/pad_to_bounding_box/sub,map/while/pad_to_bounding_box/GreaterEqual/y*
T0*
_output_shapes
: 
а
*map/while/pad_to_bounding_box/Assert/ConstConst^map/while/Identity*1
value(B& B width must be <= target - offset*
dtype0*
_output_shapes
: 
и
2map/while/pad_to_bounding_box/Assert/Assert/data_0Const^map/while/Identity*1
value(B& B width must be <= target - offset*
dtype0*
_output_shapes
: 
▓
+map/while/pad_to_bounding_box/Assert/AssertAssert*map/while/pad_to_bounding_box/GreaterEqual2map/while/pad_to_bounding_box/Assert/Assert/data_0*

T
2*
	summarize
Е
.map/while/pad_to_bounding_box/GreaterEqual_1/yConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
▓
,map/while/pad_to_bounding_box/GreaterEqual_1GreaterEqual#map/while/pad_to_bounding_box/sub_2.map/while/pad_to_bounding_box/GreaterEqual_1/y*
T0*
_output_shapes
: 
г
,map/while/pad_to_bounding_box/Assert_1/ConstConst^map/while/Identity*2
value)B' B!height must be <= target - offset*
dtype0*
_output_shapes
: 
л
4map/while/pad_to_bounding_box/Assert_1/Assert/data_0Const^map/while/Identity*2
value)B' B!height must be <= target - offset*
dtype0*
_output_shapes
: 
╕
-map/while/pad_to_bounding_box/Assert_1/AssertAssert,map/while/pad_to_bounding_box/GreaterEqual_14map/while/pad_to_bounding_box/Assert_1/Assert/data_0*

T
2*
	summarize
╤
0map/while/pad_to_bounding_box/control_dependencyIdentity(map/while/pad_to_bounding_box/ExpandDims,^map/while/pad_to_bounding_box/Assert/Assert.^map/while/pad_to_bounding_box/Assert_1/AssertA^map/while/pad_to_bounding_box/assert_greater_equal/Assert/AssertH^map/while/pad_to_bounding_box/assert_positive/assert_less/Assert/Assert*
T0*;
_class1
/-loc:@map/while/pad_to_bounding_box/ExpandDims*8
_output_shapes&
$:"                  
|
%map/while/pad_to_bounding_box/stack/0Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/stack/1Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/stack/2Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/stack/4Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/stack/6Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
|
%map/while/pad_to_bounding_box/stack/7Const^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
Ч
#map/while/pad_to_bounding_box/stackPack%map/while/pad_to_bounding_box/stack/0%map/while/pad_to_bounding_box/stack/1%map/while/pad_to_bounding_box/stack/2#map/while/pad_to_bounding_box/sub_2%map/while/pad_to_bounding_box/stack/4!map/while/pad_to_bounding_box/sub%map/while/pad_to_bounding_box/stack/6%map/while/pad_to_bounding_box/stack/7*
T0*

axis *
N*
_output_shapes
:
С
+map/while/pad_to_bounding_box/Reshape/shapeConst^map/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
╣
%map/while/pad_to_bounding_box/ReshapeReshape#map/while/pad_to_bounding_box/stack+map/while/pad_to_bounding_box/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
╠
!map/while/pad_to_bounding_box/PadPad0map/while/pad_to_bounding_box/control_dependency%map/while/pad_to_bounding_box/Reshape*
T0*
	Tpaddings0*/
_output_shapes
:         O
а
%map/while/pad_to_bounding_box/SqueezeSqueeze!map/while/pad_to_bounding_box/Pad*
squeeze_dims
 *
T0*+
_output_shapes
:         O
ж
-map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33map/while/TensorArrayWrite/TensorArrayWriteV3/Entermap/while/Identity_1%map/while/pad_to_bounding_box/Squeezemap/while/Identity_2*
T0*8
_class.
,*loc:@map/while/pad_to_bounding_box/Squeeze*
_output_shapes
: 
Е
3map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap/TensorArray_1*
T0*8
_class.
,*loc:@map/while/pad_to_bounding_box/Squeeze*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
:
h
map/while/add_1/yConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
b
map/while/add_1AddV2map/while/Identity_1map/while/add_1/y*
T0*
_output_shapes
: 
X
map/while/NextIterationNextIterationmap/while/add*
T0*
_output_shapes
: 
\
map/while/NextIteration_1NextIterationmap/while/add_1*
T0*
_output_shapes
: 
z
map/while/NextIteration_2NextIteration-map/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
I
map/while/ExitExitmap/while/Switch*
T0*
_output_shapes
: 
M
map/while/Exit_1Exitmap/while/Switch_1*
T0*
_output_shapes
: 
M
map/while/Exit_2Exitmap/while/Switch_2*
T0*
_output_shapes
: 
Ю
&map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map/TensorArray_1map/while/Exit_2*$
_class
loc:@map/TensorArray_1*
_output_shapes
: 
И
 map/TensorArrayStack/range/startConst*$
_class
loc:@map/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
И
 map/TensorArrayStack/range/deltaConst*$
_class
loc:@map/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
ц
map/TensorArrayStack/rangeRange map/TensorArrayStack/range/start&map/TensorArrayStack/TensorArraySizeV3 map/TensorArrayStack/range/delta*

Tidx0*$
_class
loc:@map/TensorArray_1*#
_output_shapes
:         
Ч
(map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_1map/TensorArrayStack/rangemap/while/Exit_2*(
element_shape:         O*$
_class
loc:@map/TensorArray_1*
dtype0*8
_output_shapes&
$:"                  O
m
ShapeShape(map/TensorArrayStack/TensorArrayGatherV3*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∙
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_

Tile/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
R
Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
q
Tile/multiplesPackstrided_sliceTile/multiples/1*
T0*

axis *
N*
_output_shapes
:
l
TileTile
Tile/inputTile/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_1/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_1/multiplesPackstrided_sliceTile_1/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_1TileTile_1/inputTile_1/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_2/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_2/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_2/multiplesPackstrided_sliceTile_2/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_2TileTile_2/inputTile_2/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_3/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_3/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_3/multiplesPackstrided_sliceTile_3/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_3TileTile_3/inputTile_3/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_4/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_4/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_4/multiplesPackstrided_sliceTile_4/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_4TileTile_4/inputTile_4/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_5/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_5/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_5/multiplesPackstrided_sliceTile_5/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_5TileTile_5/inputTile_5/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_6/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_6/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_6/multiplesPackstrided_sliceTile_6/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_6TileTile_6/inputTile_6/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_7/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_7/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_7/multiplesPackstrided_sliceTile_7/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_7TileTile_7/inputTile_7/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_8/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_8/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_8/multiplesPackstrided_sliceTile_8/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_8TileTile_8/inputTile_8/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
a
Tile_9/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
T
Tile_9/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
u
Tile_9/multiplesPackstrided_sliceTile_9/multiples/1*
T0*

axis *
N*
_output_shapes
:
r
Tile_9TileTile_9/inputTile_9/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_10/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_10/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_10/multiplesPackstrided_sliceTile_10/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_10TileTile_10/inputTile_10/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_11/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_11/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_11/multiplesPackstrided_sliceTile_11/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_11TileTile_11/inputTile_11/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_12/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_12/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_12/multiplesPackstrided_sliceTile_12/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_12TileTile_12/inputTile_12/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_13/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_13/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_13/multiplesPackstrided_sliceTile_13/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_13TileTile_13/inputTile_13/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_14/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_14/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_14/multiplesPackstrided_sliceTile_14/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_14TileTile_14/inputTile_14/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_15/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_15/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_15/multiplesPackstrided_sliceTile_15/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_15TileTile_15/inputTile_15/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_16/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_16/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_16/multiplesPackstrided_sliceTile_16/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_16TileTile_16/inputTile_16/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_17/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_17/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_17/multiplesPackstrided_sliceTile_17/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_17TileTile_17/inputTile_17/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_18/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_18/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_18/multiplesPackstrided_sliceTile_18/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_18TileTile_18/inputTile_18/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_19/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_19/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_19/multiplesPackstrided_sliceTile_19/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_19TileTile_19/inputTile_19/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
b
Tile_20/inputConst*
valueB*  А?*
dtype0*
_output_shapes

:
U
Tile_20/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
w
Tile_20/multiplesPackstrided_sliceTile_20/multiples/1*
T0*

axis *
N*
_output_shapes
:
u
Tile_20TileTile_20/inputTile_20/multiples*

Tmultiples0*
T0*'
_output_shapes
:         
W
Tile_21/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_21/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_21TileTile_21/inputTile_21/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_22/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_22/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_22TileTile_22/inputTile_22/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_23/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_23/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_23TileTile_23/inputTile_23/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_24/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_24/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_24TileTile_24/inputTile_24/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_25/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_25/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_25TileTile_25/inputTile_25/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_26/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_26/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_26TileTile_26/inputTile_26/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_27/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_27/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_27TileTile_27/inputTile_27/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_28/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_28/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_28TileTile_28/inputTile_28/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_29/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_29/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_29TileTile_29/inputTile_29/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_30/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_30/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_30TileTile_30/inputTile_30/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_31/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_31/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_31TileTile_31/inputTile_31/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_32/inputConst*
valueB*  А?*
dtype0*
_output_shapes
:
b
Tile_32/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_32TileTile_32/inputTile_32/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
W
Tile_33/inputConst*
valueB:*
dtype0*
_output_shapes
:
b
Tile_33/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_33TileTile_33/inputTile_33/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
Z
Tile_34/inputConst*
valueB*    *
dtype0*
_output_shapes
:
b
Tile_34/multiplesPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
q
Tile_34TileTile_34/inputTile_34/multiples*

Tmultiples0*
T0*#
_output_shapes
:         
J
Add/yConst*
valueB
 *   ├*
dtype0*
_output_shapes
: 
~
AddAdd(map/TensorArrayStack/TensorArrayGatherV3Add/y*
T0*8
_output_shapes&
$:"                  O
J
Mul/yConst*
valueB
 *   <*
dtype0*
_output_shapes
: 
Y
MulMulAddMul/y*
T0*8
_output_shapes&
$:"                  O
з
-conv_conv1/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv1/W*%
valueB"         @   *
dtype0*
_output_shapes
:
С
+conv_conv1/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv1/W*
valueB
 *╢h╧╜*
dtype0*
_output_shapes
: 
С
+conv_conv1/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv1/W*
valueB
 *╢h╧=*
dtype0*
_output_shapes
: 
э
5conv_conv1/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv1/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv1/W*
dtype0*
seed2 *&
_output_shapes
:@
╬
+conv_conv1/W/Initializer/random_uniform/subSub+conv_conv1/W/Initializer/random_uniform/max+conv_conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv1/W*
_output_shapes
: 
ш
+conv_conv1/W/Initializer/random_uniform/mulMul5conv_conv1/W/Initializer/random_uniform/RandomUniform+conv_conv1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv1/W*&
_output_shapes
:@
┌
'conv_conv1/W/Initializer/random_uniformAdd+conv_conv1/W/Initializer/random_uniform/mul+conv_conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv1/W*&
_output_shapes
:@
▒
conv_conv1/W
VariableV2*
shape:@*
shared_name *
_class
loc:@conv_conv1/W*
dtype0*
	container *&
_output_shapes
:@
╧
conv_conv1/W/AssignAssignconv_conv1/W'conv_conv1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv1/W*
validate_shape(*&
_output_shapes
:@
}
conv_conv1/W/readIdentityconv_conv1/W*
T0*
_class
loc:@conv_conv1/W*&
_output_shapes
:@
R
W/Regularizer/L2LossL2Lossconv_conv1/W/read*
T0*
_output_shapes
: 
¤
conv_conv1/Conv2DConv2DMulconv_conv1/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*8
_output_shapes&
$:"                  O@
m
conv_conv1/ReluReluconv_conv1/Conv2D*
T0*8
_output_shapes&
$:"                  O@
├
conv_pool1/MaxPoolMaxPoolconv_conv1/Relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*8
_output_shapes&
$:"                  (@
з
-conv_conv2/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv2/W*%
valueB"      @   А   *
dtype0*
_output_shapes
:
С
+conv_conv2/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv2/W*
valueB
 *я[q╜*
dtype0*
_output_shapes
: 
С
+conv_conv2/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv2/W*
valueB
 *я[q=*
dtype0*
_output_shapes
: 
ю
5conv_conv2/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv2/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv2/W*
dtype0*
seed2 *'
_output_shapes
:@А
╬
+conv_conv2/W/Initializer/random_uniform/subSub+conv_conv2/W/Initializer/random_uniform/max+conv_conv2/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv2/W*
_output_shapes
: 
щ
+conv_conv2/W/Initializer/random_uniform/mulMul5conv_conv2/W/Initializer/random_uniform/RandomUniform+conv_conv2/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv2/W*'
_output_shapes
:@А
█
'conv_conv2/W/Initializer/random_uniformAdd+conv_conv2/W/Initializer/random_uniform/mul+conv_conv2/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv2/W*'
_output_shapes
:@А
│
conv_conv2/W
VariableV2*
shape:@А*
shared_name *
_class
loc:@conv_conv2/W*
dtype0*
	container *'
_output_shapes
:@А
╨
conv_conv2/W/AssignAssignconv_conv2/W'conv_conv2/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv2/W*
validate_shape(*'
_output_shapes
:@А
~
conv_conv2/W/readIdentityconv_conv2/W*
T0*
_class
loc:@conv_conv2/W*'
_output_shapes
:@А
T
W/Regularizer/L2Loss_1L2Lossconv_conv2/W/read*
T0*
_output_shapes
: 
Н
conv_conv2/Conv2DConv2Dconv_pool1/MaxPoolconv_conv2/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  (А
n
conv_conv2/ReluReluconv_conv2/Conv2D*
T0*9
_output_shapes'
%:#                  (А
─
conv_pool2/MaxPoolMaxPoolconv_conv2/Relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*9
_output_shapes'
%:#                  А
з
-conv_conv3/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv3/W*%
valueB"      А      *
dtype0*
_output_shapes
:
С
+conv_conv3/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv3/W*
valueB
 *лк*╜*
dtype0*
_output_shapes
: 
С
+conv_conv3/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv3/W*
valueB
 *лк*=*
dtype0*
_output_shapes
: 
я
5conv_conv3/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv3/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv3/W*
dtype0*
seed2 *(
_output_shapes
:АА
╬
+conv_conv3/W/Initializer/random_uniform/subSub+conv_conv3/W/Initializer/random_uniform/max+conv_conv3/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv3/W*
_output_shapes
: 
ъ
+conv_conv3/W/Initializer/random_uniform/mulMul5conv_conv3/W/Initializer/random_uniform/RandomUniform+conv_conv3/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv3/W*(
_output_shapes
:АА
▄
'conv_conv3/W/Initializer/random_uniformAdd+conv_conv3/W/Initializer/random_uniform/mul+conv_conv3/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv3/W*(
_output_shapes
:АА
╡
conv_conv3/W
VariableV2*
shape:АА*
shared_name *
_class
loc:@conv_conv3/W*
dtype0*
	container *(
_output_shapes
:АА
╤
conv_conv3/W/AssignAssignconv_conv3/W'conv_conv3/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv3/W*
validate_shape(*(
_output_shapes
:АА

conv_conv3/W/readIdentityconv_conv3/W*
T0*
_class
loc:@conv_conv3/W*(
_output_shapes
:АА
T
W/Regularizer/L2Loss_2L2Lossconv_conv3/W/read*
T0*
_output_shapes
: 
Н
conv_conv3/Conv2DConv2Dconv_pool2/MaxPoolconv_conv3/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А
й
+conv_conv3/BatchNorm/gamma/Initializer/onesConst*-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╖
conv_conv3/BatchNorm/gamma
VariableV2*
shape:А*
shared_name *-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
dtype0*
	container *
_output_shapes	
:А
Є
!conv_conv3/BatchNorm/gamma/AssignAssignconv_conv3/BatchNorm/gamma+conv_conv3/BatchNorm/gamma/Initializer/ones*
use_locking(*
T0*-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
Ь
conv_conv3/BatchNorm/gamma/readIdentityconv_conv3/BatchNorm/gamma*
T0*-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
_output_shapes	
:А
и
+conv_conv3/BatchNorm/beta/Initializer/zerosConst*,
_class"
 loc:@conv_conv3/BatchNorm/beta*
valueBА*    *
dtype0*
_output_shapes	
:А
╡
conv_conv3/BatchNorm/beta
VariableV2*
shape:А*
shared_name *,
_class"
 loc:@conv_conv3/BatchNorm/beta*
dtype0*
	container *
_output_shapes	
:А
я
 conv_conv3/BatchNorm/beta/AssignAssignconv_conv3/BatchNorm/beta+conv_conv3/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@conv_conv3/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
Щ
conv_conv3/BatchNorm/beta/readIdentityconv_conv3/BatchNorm/beta*
T0*,
_class"
 loc:@conv_conv3/BatchNorm/beta*
_output_shapes	
:А
╢
2conv_conv3/BatchNorm/moving_mean/Initializer/zerosConst*3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
valueBА*    *
dtype0*
_output_shapes	
:А
├
 conv_conv3/BatchNorm/moving_mean
VariableV2*
shape:А*
shared_name *3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
dtype0*
	container *
_output_shapes	
:А
Л
'conv_conv3/BatchNorm/moving_mean/AssignAssign conv_conv3/BatchNorm/moving_mean2conv_conv3/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
о
%conv_conv3/BatchNorm/moving_mean/readIdentity conv_conv3/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
_output_shapes	
:А
╜
5conv_conv3/BatchNorm/moving_variance/Initializer/onesConst*7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╦
$conv_conv3/BatchNorm/moving_variance
VariableV2*
shape:А*
shared_name *7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
dtype0*
	container *
_output_shapes	
:А
Ъ
+conv_conv3/BatchNorm/moving_variance/AssignAssign$conv_conv3/BatchNorm/moving_variance5conv_conv3/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
║
)conv_conv3/BatchNorm/moving_variance/readIdentity$conv_conv3/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
_output_shapes	
:А
И
%conv_conv3/BatchNorm/FusedBatchNormV3FusedBatchNormV3conv_conv3/Conv2Dconv_conv3/BatchNorm/gamma/readconv_conv3/BatchNorm/beta/read%conv_conv3/BatchNorm/moving_mean/read)conv_conv3/BatchNorm/moving_variance/read*
epsilon%oГ:*
T0*
U0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:#                  А:А:А:А:А:
_
conv_conv3/BatchNorm/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
В
conv_conv3/ReluRelu%conv_conv3/BatchNorm/FusedBatchNormV3*
T0*9
_output_shapes'
%:#                  А
з
-conv_conv4/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv4/W*%
valueB"            *
dtype0*
_output_shapes
:
С
+conv_conv4/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv4/W*
valueB
 *:═╜*
dtype0*
_output_shapes
: 
С
+conv_conv4/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv4/W*
valueB
 *:═=*
dtype0*
_output_shapes
: 
я
5conv_conv4/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv4/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv4/W*
dtype0*
seed2 *(
_output_shapes
:АА
╬
+conv_conv4/W/Initializer/random_uniform/subSub+conv_conv4/W/Initializer/random_uniform/max+conv_conv4/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv4/W*
_output_shapes
: 
ъ
+conv_conv4/W/Initializer/random_uniform/mulMul5conv_conv4/W/Initializer/random_uniform/RandomUniform+conv_conv4/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv4/W*(
_output_shapes
:АА
▄
'conv_conv4/W/Initializer/random_uniformAdd+conv_conv4/W/Initializer/random_uniform/mul+conv_conv4/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv4/W*(
_output_shapes
:АА
╡
conv_conv4/W
VariableV2*
shape:АА*
shared_name *
_class
loc:@conv_conv4/W*
dtype0*
	container *(
_output_shapes
:АА
╤
conv_conv4/W/AssignAssignconv_conv4/W'conv_conv4/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv4/W*
validate_shape(*(
_output_shapes
:АА

conv_conv4/W/readIdentityconv_conv4/W*
T0*
_class
loc:@conv_conv4/W*(
_output_shapes
:АА
T
W/Regularizer/L2Loss_3L2Lossconv_conv4/W/read*
T0*
_output_shapes
: 
К
conv_conv4/Conv2DConv2Dconv_conv3/Reluconv_conv4/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А
n
conv_conv4/ReluReluconv_conv4/Conv2D*
T0*9
_output_shapes'
%:#                  А
─
conv_pool3/MaxPoolMaxPoolconv_conv4/Relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*9
_output_shapes'
%:#                  А
з
-conv_conv5/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv5/W*%
valueB"            *
dtype0*
_output_shapes
:
С
+conv_conv5/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv5/W*
valueB
 *я[ё╝*
dtype0*
_output_shapes
: 
С
+conv_conv5/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv5/W*
valueB
 *я[ё<*
dtype0*
_output_shapes
: 
я
5conv_conv5/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv5/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv5/W*
dtype0*
seed2 *(
_output_shapes
:АА
╬
+conv_conv5/W/Initializer/random_uniform/subSub+conv_conv5/W/Initializer/random_uniform/max+conv_conv5/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv5/W*
_output_shapes
: 
ъ
+conv_conv5/W/Initializer/random_uniform/mulMul5conv_conv5/W/Initializer/random_uniform/RandomUniform+conv_conv5/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv5/W*(
_output_shapes
:АА
▄
'conv_conv5/W/Initializer/random_uniformAdd+conv_conv5/W/Initializer/random_uniform/mul+conv_conv5/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv5/W*(
_output_shapes
:АА
╡
conv_conv5/W
VariableV2*
shape:АА*
shared_name *
_class
loc:@conv_conv5/W*
dtype0*
	container *(
_output_shapes
:АА
╤
conv_conv5/W/AssignAssignconv_conv5/W'conv_conv5/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv5/W*
validate_shape(*(
_output_shapes
:АА

conv_conv5/W/readIdentityconv_conv5/W*
T0*
_class
loc:@conv_conv5/W*(
_output_shapes
:АА
T
W/Regularizer/L2Loss_4L2Lossconv_conv5/W/read*
T0*
_output_shapes
: 
Н
conv_conv5/Conv2DConv2Dconv_pool3/MaxPoolconv_conv5/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А
й
+conv_conv5/BatchNorm/gamma/Initializer/onesConst*-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╖
conv_conv5/BatchNorm/gamma
VariableV2*
shape:А*
shared_name *-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
dtype0*
	container *
_output_shapes	
:А
Є
!conv_conv5/BatchNorm/gamma/AssignAssignconv_conv5/BatchNorm/gamma+conv_conv5/BatchNorm/gamma/Initializer/ones*
use_locking(*
T0*-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
Ь
conv_conv5/BatchNorm/gamma/readIdentityconv_conv5/BatchNorm/gamma*
T0*-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
_output_shapes	
:А
и
+conv_conv5/BatchNorm/beta/Initializer/zerosConst*,
_class"
 loc:@conv_conv5/BatchNorm/beta*
valueBА*    *
dtype0*
_output_shapes	
:А
╡
conv_conv5/BatchNorm/beta
VariableV2*
shape:А*
shared_name *,
_class"
 loc:@conv_conv5/BatchNorm/beta*
dtype0*
	container *
_output_shapes	
:А
я
 conv_conv5/BatchNorm/beta/AssignAssignconv_conv5/BatchNorm/beta+conv_conv5/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@conv_conv5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
Щ
conv_conv5/BatchNorm/beta/readIdentityconv_conv5/BatchNorm/beta*
T0*,
_class"
 loc:@conv_conv5/BatchNorm/beta*
_output_shapes	
:А
╢
2conv_conv5/BatchNorm/moving_mean/Initializer/zerosConst*3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
valueBА*    *
dtype0*
_output_shapes	
:А
├
 conv_conv5/BatchNorm/moving_mean
VariableV2*
shape:А*
shared_name *3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
dtype0*
	container *
_output_shapes	
:А
Л
'conv_conv5/BatchNorm/moving_mean/AssignAssign conv_conv5/BatchNorm/moving_mean2conv_conv5/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
о
%conv_conv5/BatchNorm/moving_mean/readIdentity conv_conv5/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
_output_shapes	
:А
╜
5conv_conv5/BatchNorm/moving_variance/Initializer/onesConst*7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╦
$conv_conv5/BatchNorm/moving_variance
VariableV2*
shape:А*
shared_name *7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
dtype0*
	container *
_output_shapes	
:А
Ъ
+conv_conv5/BatchNorm/moving_variance/AssignAssign$conv_conv5/BatchNorm/moving_variance5conv_conv5/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
║
)conv_conv5/BatchNorm/moving_variance/readIdentity$conv_conv5/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
_output_shapes	
:А
И
%conv_conv5/BatchNorm/FusedBatchNormV3FusedBatchNormV3conv_conv5/Conv2Dconv_conv5/BatchNorm/gamma/readconv_conv5/BatchNorm/beta/read%conv_conv5/BatchNorm/moving_mean/read)conv_conv5/BatchNorm/moving_variance/read*
epsilon%oГ:*
T0*
U0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:#                  А:А:А:А:А:
_
conv_conv5/BatchNorm/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
В
conv_conv5/ReluRelu%conv_conv5/BatchNorm/FusedBatchNormV3*
T0*9
_output_shapes'
%:#                  А
з
-conv_conv6/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv6/W*%
valueB"            *
dtype0*
_output_shapes
:
С
+conv_conv6/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv6/W*
valueB
 *ь╤╝*
dtype0*
_output_shapes
: 
С
+conv_conv6/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv6/W*
valueB
 *ь╤<*
dtype0*
_output_shapes
: 
я
5conv_conv6/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv6/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv6/W*
dtype0*
seed2 *(
_output_shapes
:АА
╬
+conv_conv6/W/Initializer/random_uniform/subSub+conv_conv6/W/Initializer/random_uniform/max+conv_conv6/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv6/W*
_output_shapes
: 
ъ
+conv_conv6/W/Initializer/random_uniform/mulMul5conv_conv6/W/Initializer/random_uniform/RandomUniform+conv_conv6/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv6/W*(
_output_shapes
:АА
▄
'conv_conv6/W/Initializer/random_uniformAdd+conv_conv6/W/Initializer/random_uniform/mul+conv_conv6/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv6/W*(
_output_shapes
:АА
╡
conv_conv6/W
VariableV2*
shape:АА*
shared_name *
_class
loc:@conv_conv6/W*
dtype0*
	container *(
_output_shapes
:АА
╤
conv_conv6/W/AssignAssignconv_conv6/W'conv_conv6/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv6/W*
validate_shape(*(
_output_shapes
:АА

conv_conv6/W/readIdentityconv_conv6/W*
T0*
_class
loc:@conv_conv6/W*(
_output_shapes
:АА
T
W/Regularizer/L2Loss_5L2Lossconv_conv6/W/read*
T0*
_output_shapes
: 
К
conv_conv6/Conv2DConv2Dconv_conv5/Reluconv_conv6/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А
n
conv_conv6/ReluReluconv_conv6/Conv2D*
T0*9
_output_shapes'
%:#                  А
─
conv_pool4/MaxPoolMaxPoolconv_conv6/Relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*9
_output_shapes'
%:#                  А
з
-conv_conv7/W/Initializer/random_uniform/shapeConst*
_class
loc:@conv_conv7/W*%
valueB"            *
dtype0*
_output_shapes
:
С
+conv_conv7/W/Initializer/random_uniform/minConst*
_class
loc:@conv_conv7/W*
valueB
 *q─╜*
dtype0*
_output_shapes
: 
С
+conv_conv7/W/Initializer/random_uniform/maxConst*
_class
loc:@conv_conv7/W*
valueB
 *q─=*
dtype0*
_output_shapes
: 
я
5conv_conv7/W/Initializer/random_uniform/RandomUniformRandomUniform-conv_conv7/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv_conv7/W*
dtype0*
seed2 *(
_output_shapes
:АА
╬
+conv_conv7/W/Initializer/random_uniform/subSub+conv_conv7/W/Initializer/random_uniform/max+conv_conv7/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv7/W*
_output_shapes
: 
ъ
+conv_conv7/W/Initializer/random_uniform/mulMul5conv_conv7/W/Initializer/random_uniform/RandomUniform+conv_conv7/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv_conv7/W*(
_output_shapes
:АА
▄
'conv_conv7/W/Initializer/random_uniformAdd+conv_conv7/W/Initializer/random_uniform/mul+conv_conv7/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv_conv7/W*(
_output_shapes
:АА
╡
conv_conv7/W
VariableV2*
shape:АА*
shared_name *
_class
loc:@conv_conv7/W*
dtype0*
	container *(
_output_shapes
:АА
╤
conv_conv7/W/AssignAssignconv_conv7/W'conv_conv7/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv_conv7/W*
validate_shape(*(
_output_shapes
:АА

conv_conv7/W/readIdentityconv_conv7/W*
T0*
_class
loc:@conv_conv7/W*(
_output_shapes
:АА
T
W/Regularizer/L2Loss_6L2Lossconv_conv7/W/read*
T0*
_output_shapes
: 
Н
conv_conv7/Conv2DConv2Dconv_pool4/MaxPoolconv_conv7/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А
й
+conv_conv7/BatchNorm/gamma/Initializer/onesConst*-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╖
conv_conv7/BatchNorm/gamma
VariableV2*
shape:А*
shared_name *-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
dtype0*
	container *
_output_shapes	
:А
Є
!conv_conv7/BatchNorm/gamma/AssignAssignconv_conv7/BatchNorm/gamma+conv_conv7/BatchNorm/gamma/Initializer/ones*
use_locking(*
T0*-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
Ь
conv_conv7/BatchNorm/gamma/readIdentityconv_conv7/BatchNorm/gamma*
T0*-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
_output_shapes	
:А
и
+conv_conv7/BatchNorm/beta/Initializer/zerosConst*,
_class"
 loc:@conv_conv7/BatchNorm/beta*
valueBА*    *
dtype0*
_output_shapes	
:А
╡
conv_conv7/BatchNorm/beta
VariableV2*
shape:А*
shared_name *,
_class"
 loc:@conv_conv7/BatchNorm/beta*
dtype0*
	container *
_output_shapes	
:А
я
 conv_conv7/BatchNorm/beta/AssignAssignconv_conv7/BatchNorm/beta+conv_conv7/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@conv_conv7/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
Щ
conv_conv7/BatchNorm/beta/readIdentityconv_conv7/BatchNorm/beta*
T0*,
_class"
 loc:@conv_conv7/BatchNorm/beta*
_output_shapes	
:А
╢
2conv_conv7/BatchNorm/moving_mean/Initializer/zerosConst*3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
valueBА*    *
dtype0*
_output_shapes	
:А
├
 conv_conv7/BatchNorm/moving_mean
VariableV2*
shape:А*
shared_name *3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
dtype0*
	container *
_output_shapes	
:А
Л
'conv_conv7/BatchNorm/moving_mean/AssignAssign conv_conv7/BatchNorm/moving_mean2conv_conv7/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
о
%conv_conv7/BatchNorm/moving_mean/readIdentity conv_conv7/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
_output_shapes	
:А
╜
5conv_conv7/BatchNorm/moving_variance/Initializer/onesConst*7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
valueBА*  А?*
dtype0*
_output_shapes	
:А
╦
$conv_conv7/BatchNorm/moving_variance
VariableV2*
shape:А*
shared_name *7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
dtype0*
	container *
_output_shapes	
:А
Ъ
+conv_conv7/BatchNorm/moving_variance/AssignAssign$conv_conv7/BatchNorm/moving_variance5conv_conv7/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
║
)conv_conv7/BatchNorm/moving_variance/readIdentity$conv_conv7/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
_output_shapes	
:А
И
%conv_conv7/BatchNorm/FusedBatchNormV3FusedBatchNormV3conv_conv7/Conv2Dconv_conv7/BatchNorm/gamma/readconv_conv7/BatchNorm/beta/read%conv_conv7/BatchNorm/moving_mean/read)conv_conv7/BatchNorm/moving_variance/read*
epsilon%oГ:*
T0*
U0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:#                  А:А:А:А:А:
_
conv_conv7/BatchNorm/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
В
conv_conv7/ReluRelu%conv_conv7/BatchNorm/FusedBatchNormV3*
T0*9
_output_shapes'
%:#                  А
─
conv_pool5/MaxPoolMaxPoolconv_conv7/Relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC*9
_output_shapes'
%:#                  А
t
Dropout/IdentityIdentityconv_pool5/MaxPool*
T0*9
_output_shapes'
%:#                  А
r
SqueezeSqueezeDropout/Identity*
squeeze_dims
*
T0*,
_output_shapes
:         А
c
transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
s
	transpose	TransposeSqueezetranspose/perm*
Tperm0*
T0*,
_output_shapes
:         А
Z
model_with_buckets/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
d
"model_with_buckets/split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
у
model_with_buckets/splitSplit"model_with_buckets/split/split_dim	transpose*
T0*
	num_split*Ў
_output_shapesу
р:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А:         А
Й
model_with_buckets/SqueezeSqueezemodel_with_buckets/split*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_1Squeezemodel_with_buckets/split:1*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_2Squeezemodel_with_buckets/split:2*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_3Squeezemodel_with_buckets/split:3*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_4Squeezemodel_with_buckets/split:4*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_5Squeezemodel_with_buckets/split:5*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_6Squeezemodel_with_buckets/split:6*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_7Squeezemodel_with_buckets/split:7*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_8Squeezemodel_with_buckets/split:8*
squeeze_dims
 *
T0*(
_output_shapes
:         А
Н
model_with_buckets/Squeeze_9Squeezemodel_with_buckets/split:9*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_10Squeezemodel_with_buckets/split:10*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_11Squeezemodel_with_buckets/split:11*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_12Squeezemodel_with_buckets/split:12*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_13Squeezemodel_with_buckets/split:13*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_14Squeezemodel_with_buckets/split:14*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_15Squeezemodel_with_buckets/split:15*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_16Squeezemodel_with_buckets/split:16*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_17Squeezemodel_with_buckets/split:17*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_18Squeezemodel_with_buckets/split:18*
squeeze_dims
 *
T0*(
_output_shapes
:         А
П
model_with_buckets/Squeeze_19Squeezemodel_with_buckets/split:19*
squeeze_dims
 *
T0*(
_output_shapes
:         А
К
0model_with_buckets/bidirectional_rnn/fw/fw/ShapeShapemodel_with_buckets/Squeeze*
T0*
out_type0*
_output_shapes
:
И
>model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
8model_with_buckets/bidirectional_rnn/fw/fw/strided_sliceStridedSlice0model_with_buckets/bidirectional_rnn/fw/fw/Shape>model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stack@model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stack_1@model_with_buckets/bidirectional_rnn/fw/fw/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Т
Pmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
Lmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims
ExpandDims8model_with_buckets/bidirectional_rnn/fw/fw/strided_slicePmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Т
Gmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
П
Mmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
Hmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/concatConcatV2Lmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDimsGmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ConstMmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Т
Mmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
н
Gmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/zerosFillHmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/concatMmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
Ф
Rmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ы
Nmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims_1
ExpandDims8model_with_buckets/bidirectional_rnn/fw/fw/strided_sliceRmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Imodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
▌
Lbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
╧
Jbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
valueB
 *Мm╜*
dtype0*
_output_shapes
: 
╧
Jbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
valueB
 *Мm=*
dtype0*
_output_shapes
: 
─
Tbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformLbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
dtype0*
seed2 * 
_output_shapes
:
АА
╩
Jbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/subSubJbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/maxJbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
_output_shapes
: 
▐
Jbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulTbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformJbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel* 
_output_shapes
:
АА
╨
Fbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniformAddJbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/mulJbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel* 
_output_shapes
:
АА
у
+bidirectional_rnn/fw/basic_lstm_cell/kernel
VariableV2*
shape:
АА*
shared_name *>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
dtype0*
	container * 
_output_shapes
:
АА
┼
2bidirectional_rnn/fw/basic_lstm_cell/kernel/AssignAssign+bidirectional_rnn/fw/basic_lstm_cell/kernelFbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ф
0bidirectional_rnn/fw/basic_lstm_cell/kernel/readIdentity+bidirectional_rnn/fw/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
╘
Kbidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
─
Abidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros/ConstConst*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
╔
;bidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zerosFillKbidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorAbidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros/Const*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*

index_type0*
_output_shapes	
:А
╒
)bidirectional_rnn/fw/basic_lstm_cell/bias
VariableV2*
shape:А*
shared_name *<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
dtype0*
	container *
_output_shapes	
:А
п
0bidirectional_rnn/fw/basic_lstm_cell/bias/AssignAssign)bidirectional_rnn/fw/basic_lstm_cell/bias;bidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Л
.bidirectional_rnn/fw/basic_lstm_cell/bias/readIdentity)bidirectional_rnn/fw/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
В
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
м
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/splitSplit@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/ConstGmodel_with_buckets/bidirectional_rnn/fw/fw/BasicLSTMCellZeroState/zeros*
T0*
	num_split*<
_output_shapes*
(:         А:         А
И
Fmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╜
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concatConcatV2model_with_buckets/SqueezeBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split:1Fmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Щ
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMulMatMulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat0bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
К
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAddBiasAddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
╤
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_1Split@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/ConstBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
З
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
В
>model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/AddAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_1:2Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_3*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/SigmoidSigmoid>model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add*
T0*(
_output_shapes
:         А
■
>model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MulMul@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/splitBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_1SigmoidBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_1*
T0*(
_output_shapes
:         А
└
?model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/TanhTanhDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_1:1*
T0*(
_output_shapes
:         А
Б
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_1MulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_1?model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh*
T0*(
_output_shapes
:         А
№
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_1Add>model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_1*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_1Tanh@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_2SigmoidDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_1:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_2MulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_1Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_1ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_1@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_2Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_4Const*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_5Const*
value	B :*
dtype0*
_output_shapes
: 
м
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_2SplitBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_4Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_1*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┼
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_2ConcatV2model_with_buckets/Squeeze_1Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_2:1Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_2/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_1MatMulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_20bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_1BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_1.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_6Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_3SplitBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_4Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_1*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
З
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_2AddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_3:2Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_7*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_3Sigmoid@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_2*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_3MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_2Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_3*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_4SigmoidBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_3*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_2TanhDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_3:1*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_4MulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_4Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_2*
T0*(
_output_shapes
:         А
■
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_3Add@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_3@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_4*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_3Tanh@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_3*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_5SigmoidDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_3:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_5MulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_3Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_5*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_3ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_3@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_5Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_3/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_8Const*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
м
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_4SplitBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_8Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_3*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┼
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_4ConcatV2model_with_buckets/Squeeze_2Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_4:1Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_2MatMulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_40bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_2BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_2.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_10Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_5SplitBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_8Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_2*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_4AddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_5:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_11*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_6Sigmoid@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_4*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_6MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_4Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_6*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_7SigmoidBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_5*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_4TanhDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_5:1*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_7MulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_7Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_4*
T0*(
_output_shapes
:         А
■
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_5Add@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_6@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_7*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_5Tanh@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_5*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_8SigmoidDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_5:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_8MulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_5Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_8*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_5ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_5@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_8Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_5/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_12Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_13Const*
value	B :*
dtype0*
_output_shapes
: 
н
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_6SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_12Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_5*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┼
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_6ConcatV2model_with_buckets/Squeeze_3Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_6:1Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_6/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_3MatMulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_60bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_3BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_3.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_14Const*
value	B :*
dtype0*
_output_shapes
: 
╓
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_7SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_12Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_3*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_6AddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_7:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_15*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_9Sigmoid@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_6*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_9MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_6Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_9*
T0*(
_output_shapes
:         А
╟
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_10SigmoidBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_7*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_6TanhDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_7:1*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_10MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_10Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_6*
T0*(
_output_shapes
:         А
 
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_7Add@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_9Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_10*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_7Tanh@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_7*
T0*(
_output_shapes
:         А
╔
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_11SigmoidDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_7:3*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_11MulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_7Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_11*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ц
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_7ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_7Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_11Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_7/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_16Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_17Const*
value	B :*
dtype0*
_output_shapes
: 
н
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_8SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_16Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_7*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_8/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┼
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_8ConcatV2model_with_buckets/Squeeze_4Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_8:1Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_8/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_4MatMulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_80bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_4BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_4.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_18Const*
value	B :*
dtype0*
_output_shapes
: 
╓
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_9SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_16Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_4*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_8AddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_9:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_19*
T0*(
_output_shapes
:         А
┼
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_12Sigmoid@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_8*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_12MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_8Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_12*
T0*(
_output_shapes
:         А
╟
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_13SigmoidBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_9*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_8TanhDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_9:1*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_13MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_13Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_8*
T0*(
_output_shapes
:         А
А
@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_9AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_12Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_13*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_9Tanh@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_9*
T0*(
_output_shapes
:         А
╔
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_14SigmoidDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_9:3*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_14MulAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_9Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_14*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ц
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_9ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_9Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_14Hmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_9/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_20Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_21Const*
value	B :*
dtype0*
_output_shapes
: 
о
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_10SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_20Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_9*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_10ConcatV2model_with_buckets/Squeeze_5Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_10:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_10/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_5MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_100bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_5BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_5.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_22Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_11SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_20Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_5*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_23Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_10AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_11:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_23*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_15SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_10*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_15MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_10Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_15*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_16SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_11*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_10TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_11:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_16MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_16Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_10*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_11AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_15Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_16*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_11TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_11*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_17SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_11:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_17MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_11Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_17*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_11ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_11Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_17Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_11/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_24Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_25Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_12SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_24Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_11*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_12ConcatV2model_with_buckets/Squeeze_6Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_12:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_12/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_6MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_120bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_6BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_6.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_26Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_13SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_24Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_6*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_12AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_13:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_27*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_18SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_12*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_18MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_12Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_18*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_19SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_13*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_12TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_13:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_19MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_19Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_12*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_13AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_18Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_19*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_13TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_13*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_20SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_13:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_20MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_13Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_20*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_13ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_13Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_20Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_13/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_28Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_29Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_14SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_28Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_13*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_14ConcatV2model_with_buckets/Squeeze_7Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_14:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_14/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_7MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_140bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_7BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_7.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_30Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_15SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_28Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_7*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_31Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_14AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_15:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_31*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_21SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_14*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_21MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_14Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_21*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_22SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_15*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_14TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_15:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_22MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_22Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_14*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_15AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_21Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_22*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_15TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_15*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_23SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_15:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_23MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_15Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_23*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_15/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_15ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_15Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_23Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_15/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_32Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_33Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_16SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_32Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_15*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_16/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_16ConcatV2model_with_buckets/Squeeze_8Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_16:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_16/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_8MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_160bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_8BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_8.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_34Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_17SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_32Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_8*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_35Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_16AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_17:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_35*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_24SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_16*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_24MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_16Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_24*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_25SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_17*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_16TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_17:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_25MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_25Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_16*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_17AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_24Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_25*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_17TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_17*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_26SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_17:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_26MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_17Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_26*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_17/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_17ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_17Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_26Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_17/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_36Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_37Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_18SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_36Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_17*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_18/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_18ConcatV2model_with_buckets/Squeeze_9Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_18:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_18/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_9MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_180bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_9BiasAddCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_9.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_38Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_19SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_36Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_9*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_39Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_18AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_19:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_39*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_27SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_18*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_27MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_18Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_27*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_28SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_19*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_18TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_19:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_28MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_28Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_18*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_19AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_27Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_28*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_19TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_19*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_29SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_19:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_29MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_19Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_29*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_19/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_19ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_19Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_29Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_19/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_40Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_41Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_20SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_40Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_19*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_20/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_20ConcatV2model_with_buckets/Squeeze_10Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_20:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_20/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_10MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_200bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_10BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_10.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_42Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_21SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_40Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_10*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_43Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_20AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_21:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_43*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_30SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_20*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_30MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_20Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_30*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_31SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_21*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_20TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_21:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_31MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_31Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_20*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_21AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_30Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_31*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_21TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_21*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_32SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_21:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_32MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_21Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_32*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_21/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_21ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_21Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_32Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_21/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_44Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_45Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_22SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_44Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_21*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_22/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_22ConcatV2model_with_buckets/Squeeze_11Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_22:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_22/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_11MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_220bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_11BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_11.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_46Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_23SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_44Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_11*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_47Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_22AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_23:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_47*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_33SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_22*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_33MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_22Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_33*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_34SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_23*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_22TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_23:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_34MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_34Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_22*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_23AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_33Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_34*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_23TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_23*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_35SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_23:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_35MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_23Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_35*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_23/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_23ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_23Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_35Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_23/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_48Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_49Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_24SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_48Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_23*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_24/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_24ConcatV2model_with_buckets/Squeeze_12Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_24:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_24/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_12MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_240bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_12BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_12.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_50Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_25SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_48Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_12*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_51Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_24AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_25:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_51*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_36SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_24*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_36MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_24Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_36*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_37SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_25*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_24TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_25:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_37MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_37Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_24*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_25AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_36Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_37*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_25TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_25*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_38SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_25:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_38MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_25Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_38*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_25/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_25ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_25Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_38Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_25/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_52Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_53Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_26SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_52Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_25*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_26/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_26ConcatV2model_with_buckets/Squeeze_13Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_26:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_26/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_13MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_260bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_13BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_13.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_54Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_27SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_52Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_13*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_55Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_26AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_27:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_55*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_39SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_26*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_39MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_26Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_39*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_40SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_27*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_26TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_27:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_40MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_40Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_26*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_27AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_39Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_40*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_27TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_27*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_41SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_27:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_41MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_27Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_41*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_27/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_27ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_27Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_41Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_27/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_56Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_57Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_28SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_56Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_27*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_28/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_28ConcatV2model_with_buckets/Squeeze_14Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_28:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_28/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_14MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_280bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_14BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_14.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_58Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_29SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_56Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_14*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_59Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_28AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_29:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_59*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_42SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_28*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_42MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_28Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_42*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_43SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_29*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_28TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_29:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_43MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_43Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_28*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_29AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_42Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_43*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_29TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_29*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_44SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_29:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_44MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_29Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_44*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_29/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_29ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_29Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_44Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_29/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_60Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_61Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_30SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_60Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_29*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_30/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_30ConcatV2model_with_buckets/Squeeze_15Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_30:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_30/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_15MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_300bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_15BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_15.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_62Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_31SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_60Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_15*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_63Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_30AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_31:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_63*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_45SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_30*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_45MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_30Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_45*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_46SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_31*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_30TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_31:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_46MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_46Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_30*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_31AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_45Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_46*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_31TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_31*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_47SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_31:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_47MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_31Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_47*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_31/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_31ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_31Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_47Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_31/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_64Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_65Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_32SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_64Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_31*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_32/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_32ConcatV2model_with_buckets/Squeeze_16Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_32:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_32/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_16MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_320bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_16BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_16.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_66Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_33SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_64Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_16*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_67Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_32AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_33:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_67*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_48SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_32*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_48MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_32Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_48*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_49SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_33*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_32TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_33:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_49MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_49Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_32*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_33AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_48Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_49*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_33TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_33*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_50SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_33:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_50MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_33Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_50*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_33/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_33ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_33Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_50Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_33/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_68Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_69Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_34SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_68Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_33*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_34/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_34ConcatV2model_with_buckets/Squeeze_17Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_34:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_34/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_17MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_340bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_17BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_17.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_70Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_35SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_68Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_17*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_71Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_34AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_35:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_71*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_51SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_34*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_51MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_34Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_51*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_52SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_35*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_34TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_35:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_52MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_52Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_34*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_35AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_51Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_52*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_35TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_35*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_53SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_35:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_53MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_35Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_53*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_35/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_35ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_35Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_53Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_35/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_72Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_73Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_36SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_72Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_35*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_36/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_36ConcatV2model_with_buckets/Squeeze_18Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_36:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_36/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_18MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_360bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_18BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_18.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_74Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_37SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_72Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_18*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_75Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_36AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_37:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_75*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_54SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_36*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_54MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_36Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_54*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_55SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_37*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_36TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_37:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_55MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_55Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_36*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_37AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_54Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_55*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_37TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_37*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_56SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_37:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_56MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_37Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_56*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_37/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_37ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_37Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_56Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_37/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_76Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_77Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_38SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_76Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_37*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_38/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_38ConcatV2model_with_buckets/Squeeze_19Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_38:1Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_38/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_19MatMulDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_380bidirectional_rnn/fw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_19BiasAddDmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/MatMul_19.bidirectional_rnn/fw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_78Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_39SplitCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_76Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/BiasAdd_19*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_79Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_38AddEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_39:2Cmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Const_79*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_57SigmoidAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_38*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_57MulCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_38Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_57*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_58SigmoidCmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_39*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_38TanhEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_39:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_58MulEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_58Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_38*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_39AddAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_57Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_58*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_39TanhAmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_39*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_59SigmoidEmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/split_39:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_59MulBmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Tanh_39Emodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Sigmoid_59*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_39/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_39ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Add_39Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_59Imodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_39/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Н
0model_with_buckets/bidirectional_rnn/bw/bw/ShapeShapemodel_with_buckets/Squeeze_19*
T0*
out_type0*
_output_shapes
:
И
>model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
8model_with_buckets/bidirectional_rnn/bw/bw/strided_sliceStridedSlice0model_with_buckets/bidirectional_rnn/bw/bw/Shape>model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stack@model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stack_1@model_with_buckets/bidirectional_rnn/bw/bw/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Т
Pmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
Lmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims
ExpandDims8model_with_buckets/bidirectional_rnn/bw/bw/strided_slicePmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Т
Gmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
П
Mmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ї
Hmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/concatConcatV2Lmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDimsGmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ConstMmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Т
Mmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
н
Gmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/zerosFillHmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/concatMmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
Ф
Rmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ы
Nmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims_1
ExpandDims8model_with_buckets/bidirectional_rnn/bw/bw/strided_sliceRmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
Ф
Imodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
▌
Lbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
╧
Jbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
valueB
 *Мm╜*
dtype0*
_output_shapes
: 
╧
Jbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
valueB
 *Мm=*
dtype0*
_output_shapes
: 
─
Tbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformLbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
dtype0*
seed2 * 
_output_shapes
:
АА
╩
Jbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/subSubJbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/maxJbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
_output_shapes
: 
▐
Jbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulTbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformJbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel* 
_output_shapes
:
АА
╨
Fbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniformAddJbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/mulJbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel* 
_output_shapes
:
АА
у
+bidirectional_rnn/bw/basic_lstm_cell/kernel
VariableV2*
shape:
АА*
shared_name *>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
dtype0*
	container * 
_output_shapes
:
АА
┼
2bidirectional_rnn/bw/basic_lstm_cell/kernel/AssignAssign+bidirectional_rnn/bw/basic_lstm_cell/kernelFbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ф
0bidirectional_rnn/bw/basic_lstm_cell/kernel/readIdentity+bidirectional_rnn/bw/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
╘
Kbidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
─
Abidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros/ConstConst*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
╔
;bidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zerosFillKbidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorAbidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros/Const*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*

index_type0*
_output_shapes	
:А
╒
)bidirectional_rnn/bw/basic_lstm_cell/bias
VariableV2*
shape:А*
shared_name *<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
dtype0*
	container *
_output_shapes	
:А
п
0bidirectional_rnn/bw/basic_lstm_cell/bias/AssignAssign)bidirectional_rnn/bw/basic_lstm_cell/bias;bidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Л
.bidirectional_rnn/bw/basic_lstm_cell/bias/readIdentity)bidirectional_rnn/bw/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
В
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
м
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/splitSplit@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/ConstGmodel_with_buckets/bidirectional_rnn/bw/bw/BasicLSTMCellZeroState/zeros*
T0*
	num_split*<
_output_shapes*
(:         А:         А
И
Fmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
└
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concatConcatV2model_with_buckets/Squeeze_19Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split:1Fmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Щ
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMulMatMulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat0bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
К
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAddBiasAddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
╤
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_1Split@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/ConstBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
З
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
В
>model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/AddAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_1:2Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_3*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/SigmoidSigmoid>model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add*
T0*(
_output_shapes
:         А
■
>model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MulMul@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/splitBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_1SigmoidBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_1*
T0*(
_output_shapes
:         А
└
?model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/TanhTanhDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_1:1*
T0*(
_output_shapes
:         А
Б
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_1MulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_1?model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh*
T0*(
_output_shapes
:         А
№
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_1Add>model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_1*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_1Tanh@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_2SigmoidDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_1:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_2MulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_1Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_1ConcatV2@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_1@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_2Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_4Const*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_5Const*
value	B :*
dtype0*
_output_shapes
: 
м
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_2SplitBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_4Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_1*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╞
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_2ConcatV2model_with_buckets/Squeeze_18Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_2:1Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_2/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_1MatMulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_20bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_1BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_1.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_6Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_3SplitBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_4Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_1*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
З
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_2AddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_3:2Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_7*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_3Sigmoid@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_2*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_3MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_2Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_3*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_4SigmoidBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_3*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_2TanhDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_3:1*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_4MulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_4Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_2*
T0*(
_output_shapes
:         А
■
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_3Add@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_3@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_4*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_3Tanh@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_3*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_5SigmoidDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_3:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_5MulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_3Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_5*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_3ConcatV2@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_3@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_5Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_3/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_8Const*
value	B :*
dtype0*
_output_shapes
: 
Д
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
м
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_4SplitBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_8Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_3*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╞
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_4ConcatV2model_with_buckets/Squeeze_17Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_4:1Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_2MatMulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_40bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_2BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_2.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_10Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_5SplitBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_8Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_2*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_4AddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_5:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_11*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_6Sigmoid@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_4*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_6MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_4Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_6*
T0*(
_output_shapes
:         А
╞
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_7SigmoidBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_5*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_4TanhDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_5:1*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_7MulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_7Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_4*
T0*(
_output_shapes
:         А
■
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_5Add@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_6@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_7*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_5Tanh@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_5*
T0*(
_output_shapes
:         А
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_8SigmoidDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_5:3*
T0*(
_output_shapes
:         А
Г
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_8MulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_5Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_8*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
х
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_5ConcatV2@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_5@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_8Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_5/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_12Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_13Const*
value	B :*
dtype0*
_output_shapes
: 
н
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_6SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_12Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_5*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╞
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_6ConcatV2model_with_buckets/Squeeze_16Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_6:1Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_6/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_3MatMulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_60bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_3BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_3.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_14Const*
value	B :*
dtype0*
_output_shapes
: 
╓
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_7SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_12Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_3*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_6AddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_7:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_15*
T0*(
_output_shapes
:         А
─
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_9Sigmoid@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_6*
T0*(
_output_shapes
:         А
Д
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_9MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_6Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_9*
T0*(
_output_shapes
:         А
╟
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_10SigmoidBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_7*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_6TanhDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_7:1*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_10MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_10Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_6*
T0*(
_output_shapes
:         А
 
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_7Add@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_9Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_10*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_7Tanh@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_7*
T0*(
_output_shapes
:         А
╔
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_11SigmoidDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_7:3*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_11MulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_7Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_11*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ц
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_7ConcatV2@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_7Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_11Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_7/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_16Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_17Const*
value	B :*
dtype0*
_output_shapes
: 
н
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_8SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_16Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_7*
T0*
	num_split*<
_output_shapes*
(:         А:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_8/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╞
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_8ConcatV2model_with_buckets/Squeeze_15Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_8:1Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_8/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Э
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_4MatMulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_80bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_4BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_4.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_18Const*
value	B :*
dtype0*
_output_shapes
: 
╓
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_9SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_16Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_4*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_8AddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_9:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_19*
T0*(
_output_shapes
:         А
┼
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_12Sigmoid@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_8*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_12MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_8Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_12*
T0*(
_output_shapes
:         А
╟
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_13SigmoidBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_9*
T0*(
_output_shapes
:         А
┬
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_8TanhDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_9:1*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_13MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_13Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_8*
T0*(
_output_shapes
:         А
А
@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_9AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_12Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_13*
T0*(
_output_shapes
:         А
╛
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_9Tanh@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_9*
T0*(
_output_shapes
:         А
╔
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_14SigmoidDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_9:3*
T0*(
_output_shapes
:         А
Е
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_14MulAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_9Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_14*
T0*(
_output_shapes
:         А
К
Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ц
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_9ConcatV2@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_9Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_14Hmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_9/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_20Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_21Const*
value	B :*
dtype0*
_output_shapes
: 
о
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_10SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_20Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_9*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_10ConcatV2model_with_buckets/Squeeze_14Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_10:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_10/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_5MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_100bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_5BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_5.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_22Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_11SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_20Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_5*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_23Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_10AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_11:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_23*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_15SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_10*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_15MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_10Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_15*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_16SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_11*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_10TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_11:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_16MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_16Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_10*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_11AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_15Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_16*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_11TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_11*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_17SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_11:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_17MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_11Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_17*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_11ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_11Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_17Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_11/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_24Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_25Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_12SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_24Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_11*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_12ConcatV2model_with_buckets/Squeeze_13Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_12:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_12/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_6MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_120bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_6BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_6.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_26Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_13SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_24Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_6*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_12AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_13:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_27*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_18SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_12*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_18MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_12Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_18*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_19SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_13*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_12TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_13:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_19MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_19Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_12*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_13AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_18Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_19*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_13TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_13*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_20SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_13:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_20MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_13Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_20*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_13ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_13Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_20Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_13/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_28Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_29Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_14SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_28Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_13*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_14ConcatV2model_with_buckets/Squeeze_12Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_14:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_14/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_7MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_140bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_7BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_7.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_30Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_15SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_28Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_7*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_31Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_14AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_15:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_31*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_21SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_14*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_21MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_14Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_21*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_22SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_15*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_14TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_15:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_22MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_22Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_14*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_15AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_21Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_22*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_15TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_15*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_23SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_15:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_23MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_15Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_23*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_15/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_15ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_15Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_23Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_15/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_32Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_33Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_16SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_32Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_15*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_16/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_16ConcatV2model_with_buckets/Squeeze_11Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_16:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_16/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_8MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_160bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_8BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_8.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_34Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_17SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_32Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_8*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_35Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_16AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_17:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_35*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_24SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_16*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_24MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_16Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_24*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_25SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_17*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_16TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_17:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_25MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_25Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_16*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_17AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_24Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_25*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_17TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_17*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_26SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_17:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_26MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_17Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_26*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_17/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_17ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_17Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_26Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_17/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_36Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_37Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_18SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_36Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_17*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_18/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╔
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_18ConcatV2model_with_buckets/Squeeze_10Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_18:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_18/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ю
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_9MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_180bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
О
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_9BiasAddCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_9.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_38Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_19SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_36Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_9*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_39Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_18AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_19:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_39*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_27SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_18*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_27MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_18Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_27*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_28SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_19*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_18TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_19:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_28MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_28Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_18*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_19AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_27Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_28*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_19TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_19*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_29SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_19:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_29MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_19Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_29*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_19/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_19ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_19Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_29Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_19/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_40Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_41Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_20SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_40Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_19*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_20/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_20ConcatV2model_with_buckets/Squeeze_9Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_20:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_20/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_10MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_200bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_10BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_10.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_42Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_21SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_40Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_10*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_43Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_20AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_21:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_43*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_30SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_20*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_30MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_20Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_30*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_31SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_21*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_20TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_21:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_31MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_31Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_20*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_21AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_30Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_31*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_21TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_21*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_32SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_21:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_32MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_21Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_32*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_21/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_21ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_21Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_32Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_21/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_44Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_45Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_22SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_44Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_21*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_22/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_22ConcatV2model_with_buckets/Squeeze_8Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_22:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_22/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_11MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_220bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_11BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_11.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_46Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_23SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_44Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_11*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_47Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_22AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_23:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_47*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_33SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_22*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_33MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_22Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_33*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_34SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_23*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_22TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_23:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_34MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_34Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_22*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_23AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_33Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_34*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_23TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_23*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_35SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_23:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_35MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_23Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_35*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_23/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_23ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_23Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_35Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_23/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_48Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_49Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_24SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_48Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_23*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_24/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_24ConcatV2model_with_buckets/Squeeze_7Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_24:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_24/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_12MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_240bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_12BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_12.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_50Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_25SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_48Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_12*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_51Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_24AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_25:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_51*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_36SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_24*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_36MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_24Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_36*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_37SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_25*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_24TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_25:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_37MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_37Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_24*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_25AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_36Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_37*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_25TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_25*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_38SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_25:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_38MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_25Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_38*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_25/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_25ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_25Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_38Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_25/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_52Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_53Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_26SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_52Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_25*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_26/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_26ConcatV2model_with_buckets/Squeeze_6Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_26:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_26/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_13MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_260bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_13BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_13.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_54Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_27SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_52Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_13*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_55Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_26AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_27:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_55*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_39SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_26*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_39MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_26Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_39*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_40SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_27*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_26TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_27:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_40MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_40Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_26*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_27AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_39Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_40*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_27TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_27*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_41SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_27:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_41MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_27Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_41*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_27/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_27ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_27Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_41Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_27/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_56Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_57Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_28SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_56Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_27*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_28/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_28ConcatV2model_with_buckets/Squeeze_5Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_28:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_28/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_14MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_280bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_14BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_14.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_58Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_29SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_56Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_14*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_59Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_28AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_29:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_59*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_42SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_28*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_42MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_28Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_42*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_43SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_29*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_28TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_29:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_43MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_43Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_28*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_29AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_42Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_43*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_29TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_29*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_44SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_29:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_44MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_29Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_44*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_29/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_29ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_29Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_44Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_29/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_60Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_61Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_30SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_60Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_29*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_30/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_30ConcatV2model_with_buckets/Squeeze_4Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_30:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_30/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_15MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_300bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_15BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_15.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_62Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_31SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_60Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_15*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_63Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_30AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_31:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_63*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_45SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_30*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_45MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_30Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_45*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_46SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_31*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_30TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_31:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_46MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_46Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_30*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_31AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_45Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_46*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_31TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_31*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_47SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_31:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_47MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_31Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_47*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_31/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_31ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_31Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_47Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_31/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_64Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_65Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_32SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_64Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_31*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_32/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_32ConcatV2model_with_buckets/Squeeze_3Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_32:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_32/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_16MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_320bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_16BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_16.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_66Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_33SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_64Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_16*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_67Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_32AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_33:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_67*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_48SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_32*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_48MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_32Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_48*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_49SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_33*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_32TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_33:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_49MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_49Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_32*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_33AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_48Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_49*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_33TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_33*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_50SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_33:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_50MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_33Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_50*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_33/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_33ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_33Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_50Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_33/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_68Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_69Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_34SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_68Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_33*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_34/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_34ConcatV2model_with_buckets/Squeeze_2Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_34:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_34/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_17MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_340bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_17BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_17.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_70Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_35SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_68Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_17*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_71Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_34AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_35:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_71*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_51SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_34*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_51MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_34Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_51*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_52SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_35*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_34TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_35:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_52MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_52Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_34*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_35AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_51Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_52*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_35TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_35*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_53SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_35:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_53MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_35Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_53*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_35/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_35ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_35Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_53Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_35/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_72Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_73Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_36SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_72Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_35*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_36/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_36ConcatV2model_with_buckets/Squeeze_1Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_36:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_36/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_18MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_360bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_18BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_18.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_74Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_37SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_72Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_18*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_75Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_36AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_37:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_75*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_54SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_36*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_54MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_36Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_54*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_55SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_37*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_36TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_37:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_55MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_55Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_36*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_37AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_54Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_55*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_37TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_37*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_56SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_37:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_56MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_37Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_56*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_37/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_37ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_37Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_56Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_37/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_76Const*
value	B :*
dtype0*
_output_shapes
: 
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_77Const*
value	B :*
dtype0*
_output_shapes
: 
п
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_38SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_76Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_37*
T0*
	num_split*<
_output_shapes*
(:         А:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_38/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╞
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_38ConcatV2model_with_buckets/SqueezeEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_38:1Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_38/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Я
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_19MatMulDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_380bidirectional_rnn/bw/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Р
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_19BiasAddDmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/MatMul_19.bidirectional_rnn/bw/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
Е
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_78Const*
value	B :*
dtype0*
_output_shapes
: 
╪
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_39SplitCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_76Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/BiasAdd_19*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
И
Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_79Const*
valueB
 *    *
dtype0*
_output_shapes
: 
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_38AddEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_39:2Cmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Const_79*
T0*(
_output_shapes
:         А
╞
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_57SigmoidAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_38*
T0*(
_output_shapes
:         А
З
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_57MulCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_38Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_57*
T0*(
_output_shapes
:         А
╚
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_58SigmoidCmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_39*
T0*(
_output_shapes
:         А
─
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_38TanhEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_39:1*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_58MulEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_58Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_38*
T0*(
_output_shapes
:         А
Б
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_39AddAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_57Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_58*
T0*(
_output_shapes
:         А
└
Bmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_39TanhAmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_39*
T0*(
_output_shapes
:         А
╩
Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_59SigmoidEmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/split_39:3*
T0*(
_output_shapes
:         А
Ж
Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_59MulBmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Tanh_39Emodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Sigmoid_59*
T0*(
_output_shapes
:         А
Л
Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_39/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_39ConcatV2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Add_39Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_59Imodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_39/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
`
model_with_buckets/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Т
model_with_buckets/concatConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_2Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_59model_with_buckets/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
model_with_buckets/concat_1ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_5Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_56 model_with_buckets/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
model_with_buckets/concat_2ConcatV2@model_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_8Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_53 model_with_buckets/concat_2/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_3ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_11Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_50 model_with_buckets/concat_3/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_4ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_14Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_47 model_with_buckets/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_5ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_17Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_44 model_with_buckets/concat_5/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_6ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_20Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_41 model_with_buckets/concat_6/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_7ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_23Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_38 model_with_buckets/concat_7/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_8/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_8ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_26Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_35 model_with_buckets/concat_8/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
b
 model_with_buckets/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
model_with_buckets/concat_9ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_29Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_32 model_with_buckets/concat_9/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_10ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_32Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_29!model_with_buckets/concat_10/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_11ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_35Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_26!model_with_buckets/concat_11/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_12ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_38Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_23!model_with_buckets/concat_12/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_13ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_41Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_20!model_with_buckets/concat_13/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_14ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_44Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_17!model_with_buckets/concat_14/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_15/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_15ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_47Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_14!model_with_buckets/concat_15/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_16/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
model_with_buckets/concat_16ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_50Amodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_11!model_with_buckets/concat_16/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_17/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
model_with_buckets/concat_17ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_53@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_8!model_with_buckets/concat_17/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_18/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
model_with_buckets/concat_18ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_56@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_5!model_with_buckets/concat_18/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
c
!model_with_buckets/concat_19/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
model_with_buckets/concat_19ConcatV2Amodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/Mul_59@model_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/Mul_2!model_with_buckets/concat_19/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
q
model_with_buckets/mulMulmodel_with_buckets/concatTile*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_1Mulmodel_with_buckets/concat_1Tile_1*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_2Mulmodel_with_buckets/concat_2Tile_2*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_3Mulmodel_with_buckets/concat_3Tile_3*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_4Mulmodel_with_buckets/concat_4Tile_4*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_5Mulmodel_with_buckets/concat_5Tile_5*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_6Mulmodel_with_buckets/concat_6Tile_6*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_7Mulmodel_with_buckets/concat_7Tile_7*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_8Mulmodel_with_buckets/concat_8Tile_8*
T0*(
_output_shapes
:         А
w
model_with_buckets/mul_9Mulmodel_with_buckets/concat_9Tile_9*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_10Mulmodel_with_buckets/concat_10Tile_10*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_11Mulmodel_with_buckets/concat_11Tile_11*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_12Mulmodel_with_buckets/concat_12Tile_12*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_13Mulmodel_with_buckets/concat_13Tile_13*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_14Mulmodel_with_buckets/concat_14Tile_14*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_15Mulmodel_with_buckets/concat_15Tile_15*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_16Mulmodel_with_buckets/concat_16Tile_16*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_17Mulmodel_with_buckets/concat_17Tile_17*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_18Mulmodel_with_buckets/concat_18Tile_18*
T0*(
_output_shapes
:         А
z
model_with_buckets/mul_19Mulmodel_with_buckets/concat_19Tile_19*
T0*(
_output_shapes
:         А
u
 model_with_buckets/Reshape/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
д
model_with_buckets/ReshapeReshapemodel_with_buckets/mul model_with_buckets/Reshape/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_1/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_1Reshapemodel_with_buckets/mul_1"model_with_buckets/Reshape_1/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_2/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_2Reshapemodel_with_buckets/mul_2"model_with_buckets/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_3/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_3Reshapemodel_with_buckets/mul_3"model_with_buckets/Reshape_3/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_4/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_4Reshapemodel_with_buckets/mul_4"model_with_buckets/Reshape_4/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_5/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_5Reshapemodel_with_buckets/mul_5"model_with_buckets/Reshape_5/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_6/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_6Reshapemodel_with_buckets/mul_6"model_with_buckets/Reshape_6/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_7/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_7Reshapemodel_with_buckets/mul_7"model_with_buckets/Reshape_7/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_8/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_8Reshapemodel_with_buckets/mul_8"model_with_buckets/Reshape_8/shape*
T0*
Tshape0*,
_output_shapes
:         А
w
"model_with_buckets/Reshape_9/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
к
model_with_buckets/Reshape_9Reshapemodel_with_buckets/mul_9"model_with_buckets/Reshape_9/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_10/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_10Reshapemodel_with_buckets/mul_10#model_with_buckets/Reshape_10/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_11/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_11Reshapemodel_with_buckets/mul_11#model_with_buckets/Reshape_11/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_12/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_12Reshapemodel_with_buckets/mul_12#model_with_buckets/Reshape_12/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_13/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_13Reshapemodel_with_buckets/mul_13#model_with_buckets/Reshape_13/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_14/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_14Reshapemodel_with_buckets/mul_14#model_with_buckets/Reshape_14/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_15/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_15Reshapemodel_with_buckets/mul_15#model_with_buckets/Reshape_15/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_16/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_16Reshapemodel_with_buckets/mul_16#model_with_buckets/Reshape_16/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_17/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_17Reshapemodel_with_buckets/mul_17#model_with_buckets/Reshape_17/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_18/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_18Reshapemodel_with_buckets/mul_18#model_with_buckets/Reshape_18/shape*
T0*
Tshape0*,
_output_shapes
:         А
x
#model_with_buckets/Reshape_19/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
н
model_with_buckets/Reshape_19Reshapemodel_with_buckets/mul_19#model_with_buckets/Reshape_19/shape*
T0*
Tshape0*,
_output_shapes
:         А
c
!model_with_buckets/concat_20/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ў
model_with_buckets/concat_20ConcatV2model_with_buckets/Reshapemodel_with_buckets/Reshape_1model_with_buckets/Reshape_2model_with_buckets/Reshape_3model_with_buckets/Reshape_4model_with_buckets/Reshape_5model_with_buckets/Reshape_6model_with_buckets/Reshape_7model_with_buckets/Reshape_8model_with_buckets/Reshape_9model_with_buckets/Reshape_10model_with_buckets/Reshape_11model_with_buckets/Reshape_12model_with_buckets/Reshape_13model_with_buckets/Reshape_14model_with_buckets/Reshape_15model_with_buckets/Reshape_16model_with_buckets/Reshape_17model_with_buckets/Reshape_18model_with_buckets/Reshape_19!model_with_buckets/concat_20/axis*

Tidx0*
T0*
N*,
_output_shapes
:         А
c
!model_with_buckets/concat_21/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
model_with_buckets/concat_21ConcatV2Dmodel_with_buckets/bidirectional_rnn/fw/fw/basic_lstm_cell/concat_39Dmodel_with_buckets/bidirectional_rnn/bw/bw/basic_lstm_cell/concat_39!model_with_buckets/concat_21/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╤
Fembedding_attention_decoder/embedding/Initializer/random_uniform/shapeConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
valueB"b   
   *
dtype0*
_output_shapes
:
├
Dembedding_attention_decoder/embedding/Initializer/random_uniform/minConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
valueB
 *я[q╛*
dtype0*
_output_shapes
: 
├
Dembedding_attention_decoder/embedding/Initializer/random_uniform/maxConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
valueB
 *я[q>*
dtype0*
_output_shapes
: 
░
Nembedding_attention_decoder/embedding/Initializer/random_uniform/RandomUniformRandomUniformFembedding_attention_decoder/embedding/Initializer/random_uniform/shape*

seed *
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
dtype0*
seed2 *
_output_shapes

:b

▓
Dembedding_attention_decoder/embedding/Initializer/random_uniform/subSubDembedding_attention_decoder/embedding/Initializer/random_uniform/maxDembedding_attention_decoder/embedding/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
_output_shapes
: 
─
Dembedding_attention_decoder/embedding/Initializer/random_uniform/mulMulNembedding_attention_decoder/embedding/Initializer/random_uniform/RandomUniformDembedding_attention_decoder/embedding/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
_output_shapes

:b

╢
@embedding_attention_decoder/embedding/Initializer/random_uniformAddDembedding_attention_decoder/embedding/Initializer/random_uniform/mulDembedding_attention_decoder/embedding/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
_output_shapes

:b

╙
%embedding_attention_decoder/embedding
VariableV2*
shape
:b
*
shared_name *8
_class.
,*loc:@embedding_attention_decoder/embedding*
dtype0*
	container *
_output_shapes

:b

л
,embedding_attention_decoder/embedding/AssignAssign%embedding_attention_decoder/embedding@embedding_attention_decoder/embedding/Initializer/random_uniform*
use_locking(*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
validate_shape(*
_output_shapes

:b

└
*embedding_attention_decoder/embedding/readIdentity%embedding_attention_decoder/embedding*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
_output_shapes

:b

└
Dmodel_with_buckets/embedding_attention_decoder/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ч
?model_with_buckets/embedding_attention_decoder/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readTile_21Dmodel_with_buckets/embedding_attention_decoder/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╟
Hmodel_with_buckets/embedding_attention_decoder/embedding_lookup/IdentityIdentity?model_with_buckets/embedding_attention_decoder/embedding_lookup*
T0*'
_output_shapes
:         

┬
Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_1/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ы
Amodel_with_buckets/embedding_attention_decoder/embedding_lookup_1GatherV2*embedding_attention_decoder/embedding/readTile_23Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_1/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╦
Jmodel_with_buckets/embedding_attention_decoder/embedding_lookup_1/IdentityIdentityAmodel_with_buckets/embedding_attention_decoder/embedding_lookup_1*
T0*'
_output_shapes
:         

┬
Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_2/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ы
Amodel_with_buckets/embedding_attention_decoder/embedding_lookup_2GatherV2*embedding_attention_decoder/embedding/readTile_25Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_2/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╦
Jmodel_with_buckets/embedding_attention_decoder/embedding_lookup_2/IdentityIdentityAmodel_with_buckets/embedding_attention_decoder/embedding_lookup_2*
T0*'
_output_shapes
:         

┬
Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_3/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ы
Amodel_with_buckets/embedding_attention_decoder/embedding_lookup_3GatherV2*embedding_attention_decoder/embedding/readTile_27Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_3/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╦
Jmodel_with_buckets/embedding_attention_decoder/embedding_lookup_3/IdentityIdentityAmodel_with_buckets/embedding_attention_decoder/embedding_lookup_3*
T0*'
_output_shapes
:         

┬
Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_4/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ы
Amodel_with_buckets/embedding_attention_decoder/embedding_lookup_4GatherV2*embedding_attention_decoder/embedding/readTile_29Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_4/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╦
Jmodel_with_buckets/embedding_attention_decoder/embedding_lookup_4/IdentityIdentityAmodel_with_buckets/embedding_attention_decoder/embedding_lookup_4*
T0*'
_output_shapes
:         

┬
Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_5/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ы
Amodel_with_buckets/embedding_attention_decoder/embedding_lookup_5GatherV2*embedding_attention_decoder/embedding/readTile_31Fmodel_with_buckets/embedding_attention_decoder/embedding_lookup_5/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

╦
Jmodel_with_buckets/embedding_attention_decoder/embedding_lookup_5/IdentityIdentityAmodel_with_buckets/embedding_attention_decoder/embedding_lookup_5*
T0*'
_output_shapes
:         

╬
Fmodel_with_buckets/embedding_attention_decoder/attention_decoder/ShapeShapeHmodel_with_buckets/embedding_attention_decoder/embedding_lookup/Identity*
T0*
out_type0*
_output_shapes
:
Ю
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
а
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
а
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╛
Nmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_sliceStridedSliceFmodel_with_buckets/embedding_attention_decoder/attention_decoder/ShapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stackVmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stack_1Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
з
Nmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
К
Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/ReshapeReshapemodel_with_buckets/concat_20Nmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
∙
Vembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/shapeConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*%
valueB"            *
dtype0*
_output_shapes
:
у
Tembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/minConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
valueB
 *q─Ь╜*
dtype0*
_output_shapes
: 
у
Tembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/maxConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
valueB
 *q─Ь=*
dtype0*
_output_shapes
: 
ъ
^embedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/RandomUniformRandomUniformVembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/shape*

seed *
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
dtype0*
seed2 *(
_output_shapes
:АА
Є
Tembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/subSubTembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/maxTembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/min*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
_output_shapes
: 
О
Tembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/mulMul^embedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/RandomUniformTembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/sub*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*(
_output_shapes
:АА
А
Pembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniformAddTembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/mulTembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform/min*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*(
_output_shapes
:АА
З
5embedding_attention_decoder/attention_decoder/AttnW_0
VariableV2*
shape:АА*
shared_name *H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
dtype0*
	container *(
_output_shapes
:АА
ї
<embedding_attention_decoder/attention_decoder/AttnW_0/AssignAssign5embedding_attention_decoder/attention_decoder/AttnW_0Pembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
validate_shape(*(
_output_shapes
:АА
·
:embedding_attention_decoder/attention_decoder/AttnW_0/readIdentity5embedding_attention_decoder/attention_decoder/AttnW_0*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*(
_output_shapes
:АА
Щ
Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DConv2DHmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape:embedding_attention_decoder/attention_decoder/AttnW_0/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         А
ы
Vembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/shapeConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
valueB:А*
dtype0*
_output_shapes
:
у
Tembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/minConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
valueB
 *q─Ь╜*
dtype0*
_output_shapes
: 
у
Tembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/maxConst*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
valueB
 *q─Ь=*
dtype0*
_output_shapes
: 
▌
^embedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/RandomUniformRandomUniformVembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/shape*

seed *
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
dtype0*
seed2 *
_output_shapes	
:А
Є
Tembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/subSubTembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/maxTembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/min*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
_output_shapes
: 
Б
Tembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/mulMul^embedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/RandomUniformTembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/sub*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
_output_shapes	
:А
є
Pembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniformAddTembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/mulTembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform/min*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
_output_shapes	
:А
э
5embedding_attention_decoder/attention_decoder/AttnV_0
VariableV2*
shape:А*
shared_name *H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
dtype0*
	container *
_output_shapes	
:А
ш
<embedding_attention_decoder/attention_decoder/AttnV_0/AssignAssign5embedding_attention_decoder/attention_decoder/AttnV_0Pembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
validate_shape(*
_output_shapes	
:А
э
:embedding_attention_decoder/attention_decoder/AttnV_0/readIdentity5embedding_attention_decoder/attention_decoder/AttnV_0*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
_output_shapes	
:А
Л
Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/stack/1Const*
value
B :А*
dtype0*
_output_shapes
: 
в
Fmodel_with_buckets/embedding_attention_decoder/attention_decoder/stackPackNmodel_with_buckets/embedding_attention_decoder/attention_decoder/strided_sliceHmodel_with_buckets/embedding_attention_decoder/attention_decoder/stack/1*
T0*

axis *
N*
_output_shapes
:
С
Lmodel_with_buckets/embedding_attention_decoder/attention_decoder/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
й
Fmodel_with_buckets/embedding_attention_decoder/attention_decoder/zerosFillFmodel_with_buckets/embedding_attention_decoder/attention_decoder/stackLmodel_with_buckets/embedding_attention_decoder/attention_decoder/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
я
Uembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/shapeConst*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
valueB"
  А   *
dtype0*
_output_shapes
:
с
Sembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/minConst*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
valueB
 *Ў├─╜*
dtype0*
_output_shapes
: 
с
Sembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/maxConst*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
valueB
 *Ў├─=*
dtype0*
_output_shapes
: 
▀
]embedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/RandomUniformRandomUniformUembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/shape*

seed *
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
dtype0*
seed2 * 
_output_shapes
:
КА
ю
Sembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/subSubSembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/maxSembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/min*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
_output_shapes
: 
В
Sembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/mulMul]embedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/RandomUniformSembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/sub*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel* 
_output_shapes
:
КА
Ї
Oembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniformAddSembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/mulSembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform/min*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel* 
_output_shapes
:
КА
ї
4embedding_attention_decoder/attention_decoder/kernel
VariableV2*
shape:
КА*
shared_name *G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
dtype0*
	container * 
_output_shapes
:
КА
щ
;embedding_attention_decoder/attention_decoder/kernel/AssignAssign4embedding_attention_decoder/attention_decoder/kernelOembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform*
use_locking(*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
validate_shape(* 
_output_shapes
:
КА
я
9embedding_attention_decoder/attention_decoder/kernel/readIdentity4embedding_attention_decoder/attention_decoder/kernel*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel* 
_output_shapes
:
КА
а
^model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
Ymodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/concatConcatV2Hmodel_with_buckets/embedding_attention_decoder/embedding_lookup/IdentityFmodel_with_buckets/embedding_attention_decoder/attention_decoder/zeros^model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╥
Ymodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/MatMulMatMulYmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┌
Dembedding_attention_decoder/attention_decoder/bias/Initializer/ConstConst*E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
ч
2embedding_attention_decoder/attention_decoder/bias
VariableV2*
shape:А*
shared_name *E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
dtype0*
	container *
_output_shapes	
:А
╙
9embedding_attention_decoder/attention_decoder/bias/AssignAssign2embedding_attention_decoder/attention_decoder/biasDembedding_attention_decoder/attention_decoder/bias/Initializer/Const*
use_locking(*
T0*E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
validate_shape(*
_output_shapes	
:А
ф
7embedding_attention_decoder/attention_decoder/bias/readIdentity2embedding_attention_decoder/attention_decoder/bias*
T0*E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
_output_shapes	
:А
├
Zmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/BiasAddBiasAddYmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╟
vmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╞
umodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
╞
pmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/SliceSlicemodel_with_buckets/concat_21vmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/Slice/beginumodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╗
{embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
н
yembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *є╡╜*
dtype0*
_output_shapes
: 
н
yembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *є╡=*
dtype0*
_output_shapes
: 
╥
Гembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform{embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
seed2 * 
_output_shapes
:
АА
Ж
yembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubyembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxyembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
Ы
yembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulГembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformyembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
М
uembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddyembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulyembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
┴
Zembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*
shape:
АА*
shared_name *m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
	container * 
_output_shapes
:
АА
Б
aembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssignZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kerneluembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
с
_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentityZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ж
jembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosConst*k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
│
Xembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*
shape:А*
shared_name *k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
	container *
_output_shapes	
:А
ы
_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssignXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasjembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
╓
]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentityXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
├
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
╫
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplitАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Constpmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╔
Жmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV2Zmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder/BiasAddВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split:1Жmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╗
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Ф
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_1SplitАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/ConstВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╚
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
─
~model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/AddAddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:2Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3*
T0*(
_output_shapes
:         А
┴
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoid~model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add*
T0*(
_output_shapes
:         А
└
~model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MulMulАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/splitВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*(
_output_shapes
:         А
╚
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1SigmoidВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_1*
T0*(
_output_shapes
:         А
┴
model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanhДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:1*
T0*(
_output_shapes
:         А
├
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1MulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
T0*(
_output_shapes
:         А
╛
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1Add~model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MulАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
T0*(
_output_shapes
:         А
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1TanhАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*(
_output_shapes
:         А
╩
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2SigmoidДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:3*
T0*(
_output_shapes
:         А
╞
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2MulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*(
_output_shapes
:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╟
vmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╞
umodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
╞
pmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/SliceSlicemodel_with_buckets/concat_21vmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/Slice/beginumodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/Slice/size*
T0*
Index0*(
_output_shapes
:         А
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4Const*
value	B :*
dtype0*
_output_shapes
: 
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5Const*
value	B :*
dtype0*
_output_shapes
: 
█
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_2SplitВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4pmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_2ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_2:1Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_2/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╬
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1MatMulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_2_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_6Const*
value	B :*
dtype0*
_output_shapes
: 
Ш
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_3SplitВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╚
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╟
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2AddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_3:2Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_7*
T0*(
_output_shapes
:         А
╞
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3SigmoidАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2*
T0*(
_output_shapes
:         А
╟
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_2Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*
T0*(
_output_shapes
:         А
╚
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4SigmoidВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_3*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2TanhДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_3:1*
T0*(
_output_shapes
:         А
╞
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4MulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*
T0*(
_output_shapes
:         А
┴
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3AddАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4*
T0*(
_output_shapes
:         А
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3TanhАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3*
T0*(
_output_shapes
:         А
╩
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5SigmoidДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_3:3*
T0*(
_output_shapes
:         А
╞
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5MulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*
T0*(
_output_shapes
:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_3ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_3/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
▒
omodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╗
jmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concatConcatV2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_3omodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
З
aembedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/shapeConst*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
valueB"      *
dtype0*
_output_shapes
:
∙
_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/minConst*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
valueB
 *q─Ь╜*
dtype0*
_output_shapes
: 
∙
_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/maxConst*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
valueB
 *q─Ь=*
dtype0*
_output_shapes
: 
Г
iembedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/RandomUniformRandomUniformaembedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/shape*

seed *
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
dtype0*
seed2 * 
_output_shapes
:
АА
Ю
_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/subSub_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/max_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/min*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
_output_shapes
: 
▓
_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/mulMuliembedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/RandomUniform_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/sub*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel* 
_output_shapes
:
АА
д
[embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniformAdd_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/mul_embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform/min*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel* 
_output_shapes
:
АА
Н
@embedding_attention_decoder/attention_decoder/Attention_0/kernel
VariableV2*
shape:
АА*
shared_name *S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
dtype0*
	container * 
_output_shapes
:
АА
Щ
Gembedding_attention_decoder/attention_decoder/Attention_0/kernel/AssignAssign@embedding_attention_decoder/attention_decoder/Attention_0/kernel[embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform*
use_locking(*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
validate_shape(* 
_output_shapes
:
АА
У
Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/readIdentity@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel* 
_output_shapes
:
АА
ї
_model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Attention_0/MatMulMatMuljmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concatEembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
Є
Pembedding_attention_decoder/attention_decoder/Attention_0/bias/Initializer/ConstConst*Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
 
>embedding_attention_decoder/attention_decoder/Attention_0/bias
VariableV2*
shape:А*
shared_name *Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
dtype0*
	container *
_output_shapes	
:А
Г
Eembedding_attention_decoder/attention_decoder/Attention_0/bias/AssignAssign>embedding_attention_decoder/attention_decoder/Attention_0/biasPembedding_attention_decoder/attention_decoder/Attention_0/bias/Initializer/Const*
use_locking(*
T0*Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
validate_shape(*
_output_shapes	
:А
И
Cembedding_attention_decoder/attention_decoder/Attention_0/bias/readIdentity>embedding_attention_decoder/attention_decoder/Attention_0/bias*
T0*Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
_output_shapes	
:А
█
`model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Attention_0/BiasAddBiasAdd_model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
│
Zmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ц
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/ReshapeReshape`model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Attention_0/BiasAddZmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
│
Pmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape*
T0*0
_output_shapes
:         А
ц
Qmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/TanhTanhPmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/add*
T0*0
_output_shapes
:         А
б
Pmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readQmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Tanh*
T0*0
_output_shapes
:         А
│
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
▄
Pmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/SumSumPmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/mulbmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
у
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/SoftmaxSoftmaxPmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum*
T0*'
_output_shapes
:         
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
▌
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_1ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Softmax\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
╢
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/mul_1MulVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
у
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum_1SumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/mul_1dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
н
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
╘
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_2ReshapeRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Sum_1\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
Щ
jembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/shapeConst*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
valueB"А  b   *
dtype0*
_output_shapes
:
Л
hembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/minConst*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
valueB
 *uй╕╜*
dtype0*
_output_shapes
: 
Л
hembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/maxConst*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
valueB
 *uй╕=*
dtype0*
_output_shapes
: 
Э
rembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/RandomUniformRandomUniformjembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/shape*

seed *
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
dtype0*
seed2 *
_output_shapes
:	Аb
┬
hembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/subSubhembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/maxhembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/min*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
_output_shapes
: 
╒
hembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/mulMulrembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/RandomUniformhembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/sub*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
_output_shapes
:	Аb
╟
dembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniformAddhembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/mulhembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform/min*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
_output_shapes
:	Аb
Э
Iembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel
VariableV2*
shape:	Аb*
shared_name *\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
dtype0*
	container *
_output_shapes
:	Аb
╝
Pembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/AssignAssignIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kerneldembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform*
use_locking(*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
validate_shape(*
_output_shapes
:	Аb
н
Nembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/readIdentityIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
_output_shapes
:	Аb
╕
vmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/concatConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_2vmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ц
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/MatMulMatMulqmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
В
Yembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/Initializer/ConstConst*Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
valueBb*    *
dtype0*
_output_shapes
:b
П
Gembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias
VariableV2*
shape:b*
shared_name *Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
dtype0*
	container *
_output_shapes
:b
ж
Nembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/AssignAssignGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasYembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/Initializer/Const*
use_locking(*
T0*Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
validate_shape(*
_output_shapes
:b
в
Lembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/readIdentityGembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
T0*Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
_output_shapes
:b
З
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/BiasAddBiasAddqmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
б
_model_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Б
Umodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/ArgMaxArgMaxrmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/BiasAdd_model_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
р
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
ї
_model_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readUmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/ArgMaxdmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

З
hmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookup/IdentityIdentity_model_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookup*
T0*'
_output_shapes
:         

в
`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╙
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/concatConcatV2hmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function/embedding_lookup/IdentityVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0/Reshape_2`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╓
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/MatMulMatMul[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╟
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/BiasAddBiasAdd[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ъ
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/SliceSlicejmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concatxmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/Slice/size*
T0*
Index0*(
_output_shapes
:         А
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_8Const*
value	B :*
dtype0*
_output_shapes
: 
┼
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
▌
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_4SplitВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_8rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_1/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_4ConcatV2\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_2/BiasAddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_4:1Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╬
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_2MatMulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_4_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_2BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_2]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_10Const*
value	B :*
dtype0*
_output_shapes
: 
Ш
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_5SplitВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_8Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_2*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_4AddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_5:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_11*
T0*(
_output_shapes
:         А
╞
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_6SigmoidАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_4*
T0*(
_output_shapes
:         А
╟
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_6MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_4Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_6*
T0*(
_output_shapes
:         А
╚
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_7SigmoidВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_5*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_4TanhДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_5:1*
T0*(
_output_shapes
:         А
╞
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_7MulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_7Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_4*
T0*(
_output_shapes
:         А
┴
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_5AddАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_6Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_7*
T0*(
_output_shapes
:         А
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_5TanhАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_5*
T0*(
_output_shapes
:         А
╩
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_8SigmoidДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_5:3*
T0*(
_output_shapes
:         А
╞
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_8MulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_5Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_8*
T0*(
_output_shapes
:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_5ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_5Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_8Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_5/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ъ
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/SliceSlicejmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concatxmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_12Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_13Const*
value	B :*
dtype0*
_output_shapes
: 
▐
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_6SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_12rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_1/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_6/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_6ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_8Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_6:1Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_6/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╬
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_3MatMulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_6_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_3BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_3]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_14Const*
value	B :*
dtype0*
_output_shapes
: 
Щ
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_7SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_12Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_3*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_6AddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_7:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_15*
T0*(
_output_shapes
:         А
╞
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_9SigmoidАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_6*
T0*(
_output_shapes
:         А
╟
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_9MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_6Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_9*
T0*(
_output_shapes
:         А
╔
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_10SigmoidВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_7*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_6TanhДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_7:1*
T0*(
_output_shapes
:         А
╚
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_10MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_10Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_6*
T0*(
_output_shapes
:         А
┬
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_7AddАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_9Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_10*
T0*(
_output_shapes
:         А
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_7TanhАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_7*
T0*(
_output_shapes
:         А
╦
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_11SigmoidДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_7:3*
T0*(
_output_shapes
:         А
╚
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_11MulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_7Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_11*
T0*(
_output_shapes
:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_7/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_7ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_7Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_11Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_7/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
│
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┐
lmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1ConcatV2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_5Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_7qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
∙
amodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Attention_0/MatMulMatMullmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
▀
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Attention_0/BiasAddBiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/ReshapeReshapebmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Attention_0/BiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
╖
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape*
T0*0
_output_shapes
:         А
ъ
Smodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/TanhTanhRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/add*
T0*0
_output_shapes
:         А
е
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readSmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Tanh*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
т
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/SumSumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/muldmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
ч
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/SoftmaxSoftmaxRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum*
T0*'
_output_shapes
:         
╖
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
у
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_1ReshapeVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Softmax^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
║
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/mul_1MulXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╖
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
щ
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum_1SumTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/mul_1fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
п
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┌
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_2ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Sum_1^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
║
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/concatConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_11Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ъ
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/MatMulMatMulsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
Л
tmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/BiasAddBiasAddsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
г
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
Wmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/ArgMaxArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/BiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
т
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
√
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readWmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/ArgMaxfmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

Л
jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookup/IdentityIdentityamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookup*
T0*'
_output_shapes
:         

в
`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╫
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/concatConcatV2jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_1/embedding_lookup/IdentityXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_1/Reshape_2`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╓
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/MatMulMatMul[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╟
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/BiasAddBiasAdd[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_16Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_17Const*
value	B :*
dtype0*
_output_shapes
: 
▐
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_8SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_16rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_2/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_8/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╚
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_8ConcatV2\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_4/BiasAddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_8:1Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_8/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╬
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_4MatMulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_8_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_4BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_4]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_18Const*
value	B :*
dtype0*
_output_shapes
: 
Щ
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_9SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_16Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_4*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_8AddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_9:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_19*
T0*(
_output_shapes
:         А
╟
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_12SigmoidАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_8*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_12MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_8Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_12*
T0*(
_output_shapes
:         А
╔
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_13SigmoidВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_9*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_8TanhДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_9:1*
T0*(
_output_shapes
:         А
╚
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_13MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_13Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_8*
T0*(
_output_shapes
:         А
├
Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_9AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_12Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_13*
T0*(
_output_shapes
:         А
└
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_9TanhАmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_9*
T0*(
_output_shapes
:         А
╦
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_14SigmoidДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_9:3*
T0*(
_output_shapes
:         А
╚
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_14MulБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_9Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_14*
T0*(
_output_shapes
:         А
╦
Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_9/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_9ConcatV2Аmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_9Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_14Иmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_9/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_1xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_20Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_21Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_10SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_20rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_2/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_10/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ё
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_10ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_14Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_10:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_10/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╧
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_5MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_10_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_5BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_5]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_22Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_11SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_20Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_5*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_23Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_10AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_11:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_23*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_15SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_10*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_15MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_10Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_15*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_16SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_11*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_10TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_11:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_16MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_16Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_10*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_11AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_15Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_16*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_11TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_11*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_17SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_11:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_17MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_11Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_17*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_11/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_11ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_11Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_17Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_11/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
│
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
└
lmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2ConcatV2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_9Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_11qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
∙
amodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Attention_0/MatMulMatMullmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
▀
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Attention_0/BiasAddBiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/ReshapeReshapebmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Attention_0/BiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
╖
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape*
T0*0
_output_shapes
:         А
ъ
Smodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/TanhTanhRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/add*
T0*0
_output_shapes
:         А
е
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readSmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Tanh*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
т
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/SumSumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/muldmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
ч
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/SoftmaxSoftmaxRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum*
T0*'
_output_shapes
:         
╖
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
у
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_1ReshapeVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Softmax^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
║
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/mul_1MulXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╖
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
щ
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum_1SumTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/mul_1fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
п
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┌
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_2ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Sum_1^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
║
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/concatConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_17Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ъ
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/MatMulMatMulsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
Л
tmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/BiasAddBiasAddsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
г
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
Wmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/ArgMaxArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/BiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
т
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
√
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readWmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/ArgMaxfmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

Л
jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookup/IdentityIdentityamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookup*
T0*'
_output_shapes
:         

в
`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╫
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/concatConcatV2jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_2/embedding_lookup/IdentityXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_2/Reshape_2`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╓
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/MatMulMatMul[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╟
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/BiasAddBiasAdd[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_24Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_25Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_12SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_24rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_3/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_12/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╦
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_12ConcatV2\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_6/BiasAddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_12:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_12/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╧
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_6MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_12_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_6BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_6]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_26Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_13SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_24Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_6*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_12AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_13:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_27*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_18SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_12*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_18MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_12Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_18*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_19SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_13*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_12TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_13:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_19MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_19Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_12*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_13AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_18Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_19*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_13TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_13*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_20SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_13:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_20MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_13Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_20*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_13/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_13ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_13Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_20Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_13/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_28Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_29Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_14SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_28rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_3/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_14/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ё
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_14ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_20Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_14:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_14/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╧
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_7MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_14_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_7BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_7]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_30Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_15SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_28Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_7*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_31Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_14AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_15:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_31*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_21SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_14*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_21MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_14Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_21*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_22SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_15*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_14TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_15:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_22MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_22Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_14*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_15AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_21Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_22*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_15TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_15*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_23SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_15:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_23MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_15Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_23*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_15/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_15ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_15Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_23Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_15/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
│
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┴
lmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3ConcatV2Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_13Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_15qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
∙
amodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Attention_0/MatMulMatMullmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
▀
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Attention_0/BiasAddBiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/ReshapeReshapebmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Attention_0/BiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
╖
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape*
T0*0
_output_shapes
:         А
ъ
Smodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/TanhTanhRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/add*
T0*0
_output_shapes
:         А
е
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readSmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Tanh*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
т
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/SumSumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/muldmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
ч
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/SoftmaxSoftmaxRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum*
T0*'
_output_shapes
:         
╖
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
у
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_1ReshapeVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Softmax^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
║
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/mul_1MulXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╖
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
щ
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum_1SumTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/mul_1fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
п
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┌
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_2ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Sum_1^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
║
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/concatConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_23Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ъ
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/MatMulMatMulsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
Л
tmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/BiasAddBiasAddsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
г
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
Wmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/ArgMaxArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/BiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
т
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
√
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readWmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/ArgMaxfmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

Л
jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookup/IdentityIdentityamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookup*
T0*'
_output_shapes
:         

в
`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╫
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/concatConcatV2jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_3/embedding_lookup/IdentityXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_3/Reshape_2`model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╓
[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/MatMulMatMul[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╟
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/BiasAddBiasAdd[model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_32Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_33Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_16SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_32rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_4/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_16/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╦
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_16ConcatV2\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_8/BiasAddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_16:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_16/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╧
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_8MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_16_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_8BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_8]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_34Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_17SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_32Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_8*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_35Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_16AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_17:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_35*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_24SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_16*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_24MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_16Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_24*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_25SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_17*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_16TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_17:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_25MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_25Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_16*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_17AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_24Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_25*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_17TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_17*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_26SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_17:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_26MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_17Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_26*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_17/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_17ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_17Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_26Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_17/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_3xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_36Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_37Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_18SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_36rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_4/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_18/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ё
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_18ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_26Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_18:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_18/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╧
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_9MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_18_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┐
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_9BiasAddГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_9]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_38Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_19SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_36Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_9*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_39Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_18AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_19:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_39*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_27SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_18*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_27MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_18Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_27*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_28SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_19*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_18TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_19:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_28MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_28Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_18*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_19AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_27Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_28*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_19TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_19*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_29SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_19:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_29MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_19Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_29*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_19/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_19ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_19Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_29Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_19/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
│
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┴
lmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4ConcatV2Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_17Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_19qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
∙
amodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Attention_0/MatMulMatMullmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
▀
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Attention_0/BiasAddBiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/ReshapeReshapebmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Attention_0/BiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
╖
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape*
T0*0
_output_shapes
:         А
ъ
Smodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/TanhTanhRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/add*
T0*0
_output_shapes
:         А
е
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readSmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Tanh*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
т
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/SumSumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/muldmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
ч
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/SoftmaxSoftmaxRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum*
T0*'
_output_shapes
:         
╖
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
у
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_1ReshapeVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Softmax^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
║
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/mul_1MulXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╖
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
щ
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum_1SumTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/mul_1fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
п
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┌
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_2ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Sum_1^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
║
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/concatConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_29Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ъ
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/MatMulMatMulsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
Л
tmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/BiasAddBiasAddsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
г
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
Wmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/ArgMaxArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/BiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
т
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookup/axisConst*8
_class.
,*loc:@embedding_attention_decoder/embedding*
value	B : *
dtype0*
_output_shapes
: 
√
amodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookupGatherV2*embedding_attention_decoder/embedding/readWmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/ArgMaxfmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*8
_class.
,*loc:@embedding_attention_decoder/embedding*'
_output_shapes
:         

Л
jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookup/IdentityIdentityamodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookup*
T0*'
_output_shapes
:         

г
amodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┘
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/concatConcatV2jmodel_with_buckets/embedding_attention_decoder/attention_decoder/loop_function_4/embedding_lookup/IdentityXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_4/Reshape_2amodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         К
╪
\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/MatMulMatMul\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/concat9embedding_attention_decoder/attention_decoder/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
╔
]model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/BiasAddBiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/MatMul7embedding_attention_decoder/attention_decoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_40Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_41Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_20SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_40rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0_5/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_20/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╠
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_20ConcatV2]model_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_10/BiasAddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_20:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_20/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╨
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_10MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_20_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┴
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_10BiasAddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_10]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_42Const*
value	B :*
dtype0*
_output_shapes
: 
Ы
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_21SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_40Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_10*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_43Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_20AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_21:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_43*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_30SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_20*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_30MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_20Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_30*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_31SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_21*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_20TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_21:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_31MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_31Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_20*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_21AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_30Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_31*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_21TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_21*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_32SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_21:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_32MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_21Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_32*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_21/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_21ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_21Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_32Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_21/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╔
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/Slice/beginConst*
valueB"       *
dtype0*
_output_shapes
:
╚
wmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/Slice/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/SliceSlicelmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_4xmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/Slice/beginwmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/Slice/size*
T0*
Index0*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_44Const*
value	B :*
dtype0*
_output_shapes
: 
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_45Const*
value	B :*
dtype0*
_output_shapes
: 
▀
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_22SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_44rmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_1_5/Slice*
T0*
	num_split*<
_output_shapes*
(:         А:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_22/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ё
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_22ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_32Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_22:1Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_22/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
╨
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_11MatMulДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_22_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
┴
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_11BiasAddДmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_11]embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╞
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_46Const*
value	B :*
dtype0*
_output_shapes
: 
Ы
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_23SplitГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_44Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_11*
T0*
	num_split*d
_output_shapesR
P:         А:         А:         А:         А
╔
Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_47Const*
valueB
 *    *
dtype0*
_output_shapes
: 
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_22AddЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_23:2Гmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Const_47*
T0*(
_output_shapes
:         А
╚
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_33SigmoidБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_22*
T0*(
_output_shapes
:         А
╩
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_33MulГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_22Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_33*
T0*(
_output_shapes
:         А
╩
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_34SigmoidГmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_23*
T0*(
_output_shapes
:         А
╞
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_22TanhЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_23:1*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_34MulЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_34Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_22*
T0*(
_output_shapes
:         А
─
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_23AddБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_33Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_34*
T0*(
_output_shapes
:         А
┬
Вmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_23TanhБmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_23*
T0*(
_output_shapes
:         А
╠
Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_35SigmoidЕmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/split_23:3*
T0*(
_output_shapes
:         А
╔
Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_35MulВmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_23Еmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_35*
T0*(
_output_shapes
:         А
╠
Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_23/axisConst*
value	B :*
dtype0*
_output_shapes
: 
э
Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_23ConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Add_23Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_35Йmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_23/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
│
qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_5/axisConst*
value	B :*
dtype0*
_output_shapes
: 
┴
lmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_5ConcatV2Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_21Дmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/concat_23qmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_5/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
∙
amodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Attention_0/MatMulMatMullmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/concat_5Eembedding_attention_decoder/attention_decoder/Attention_0/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
▀
bmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Attention_0/BiasAddBiasAddamodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Attention_0/MatMulCembedding_attention_decoder/attention_decoder/Attention_0/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
╡
\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/ReshapeReshapebmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Attention_0/BiasAdd\model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:         А
╖
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/addAddV2Gmodel_with_buckets/embedding_attention_decoder/attention_decoder/Conv2DVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape*
T0*0
_output_shapes
:         А
ъ
Smodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/TanhTanhRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/add*
T0*0
_output_shapes
:         А
е
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/mulMul:embedding_attention_decoder/attention_decoder/AttnV_0/readSmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Tanh*
T0*0
_output_shapes
:         А
╡
dmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
т
Rmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/SumSumRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/muldmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*'
_output_shapes
:         
ч
Vmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/SoftmaxSoftmaxRmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum*
T0*'
_output_shapes
:         
╖
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_1/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
у
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_1ReshapeVmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Softmax^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         
║
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/mul_1MulXmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_1Hmodel_with_buckets/embedding_attention_decoder/attention_decoder/Reshape*
T0*0
_output_shapes
:         А
╖
fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
щ
Tmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum_1SumTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/mul_1fmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*(
_output_shapes
:         А
п
^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_2/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┌
Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_2ReshapeTmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Sum_1^model_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:         А
║
xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/concatConcatV2Бmodel_with_buckets/embedding_attention_decoder/attention_decoder/attention_decoder_1/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_35Xmodel_with_buckets/embedding_attention_decoder/attention_decoder/Attention_0_5/Reshape_2xmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:         А
Ъ
smodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/MatMulMatMulsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/concatNembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         b
Л
tmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/BiasAddBiasAddsmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/MatMulLembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         b
Ъ
Gmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
┌
Amodel_with_buckets/sequence_loss/sequence_loss_by_example/ReshapeReshapeTile_23Gmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:         
ф
cmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeAmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape*
T0*
out_type0*
_output_shapes
:
░
Бmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsrmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/BiasAddAmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape*
T0*
Tlabels0*6
_output_shapes$
":         :         b
 
=model_with_buckets/sequence_loss/sequence_loss_by_example/mulMulБmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsTile_22*
T0*#
_output_shapes
:         
Ь
Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
▐
Cmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_1ReshapeTile_25Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:         
ш
emodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_1/ShapeShapeCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_1*
T0*
out_type0*
_output_shapes
:
╢
Гmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitstmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/BiasAddCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_1*
T0*
Tlabels0*6
_output_shapes$
":         :         b
Г
?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_1MulГmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsTile_24*
T0*#
_output_shapes
:         
Ь
Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
▐
Cmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_2ReshapeTile_27Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:         
ш
emodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_2/ShapeShapeCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_2*
T0*
out_type0*
_output_shapes
:
╢
Гmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitstmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/BiasAddCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_2*
T0*
Tlabels0*6
_output_shapes$
":         :         b
Г
?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_2MulГmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsTile_26*
T0*#
_output_shapes
:         
Ь
Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_3/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
▐
Cmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_3ReshapeTile_29Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:         
ш
emodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_3/ShapeShapeCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_3*
T0*
out_type0*
_output_shapes
:
╢
Гmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitstmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/BiasAddCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_3*
T0*
Tlabels0*6
_output_shapes$
":         :         b
Г
?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_3MulГmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsTile_28*
T0*#
_output_shapes
:         
Ь
Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_4/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
▐
Cmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_4ReshapeTile_31Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_4/shape*
T0*
Tshape0*#
_output_shapes
:         
ш
emodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_4/ShapeShapeCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_4*
T0*
out_type0*
_output_shapes
:
╢
Гmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitstmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/BiasAddCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_4*
T0*
Tlabels0*6
_output_shapes$
":         :         b
Г
?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_4MulГmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsTile_30*
T0*#
_output_shapes
:         
Ь
Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_5/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
▐
Cmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_5ReshapeTile_33Imodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_5/shape*
T0*
Tshape0*#
_output_shapes
:         
ш
emodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_5/ShapeShapeCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_5*
T0*
out_type0*
_output_shapes
:
╢
Гmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitstmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/BiasAddCmodel_with_buckets/sequence_loss/sequence_loss_by_example/Reshape_5*
T0*
Tlabels0*6
_output_shapes$
":         :         b
Г
?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_5MulГmodel_with_buckets/sequence_loss/sequence_loss_by_example/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsTile_32*
T0*#
_output_shapes
:         
Б
>model_with_buckets/sequence_loss/sequence_loss_by_example/AddNAddN=model_with_buckets/sequence_loss/sequence_loss_by_example/mul?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_1?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_2?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_3?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_4?model_with_buckets/sequence_loss/sequence_loss_by_example/mul_5*
T0*
N*#
_output_shapes
:         
╡
@model_with_buckets/sequence_loss/sequence_loss_by_example/AddN_1AddNTile_22Tile_24Tile_26Tile_28Tile_30Tile_32*
T0*
N*#
_output_shapes
:         
Д
?model_with_buckets/sequence_loss/sequence_loss_by_example/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
ў
=model_with_buckets/sequence_loss/sequence_loss_by_example/addAddV2@model_with_buckets/sequence_loss/sequence_loss_by_example/AddN_1?model_with_buckets/sequence_loss/sequence_loss_by_example/add/y*
T0*#
_output_shapes
:         
∙
Amodel_with_buckets/sequence_loss/sequence_loss_by_example/truedivRealDiv>model_with_buckets/sequence_loss/sequence_loss_by_example/AddN=model_with_buckets/sequence_loss/sequence_loss_by_example/add*
T0*#
_output_shapes
:         
p
&model_with_buckets/sequence_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╘
$model_with_buckets/sequence_loss/SumSumAmodel_with_buckets/sequence_loss/sequence_loss_by_example/truediv&model_with_buckets/sequence_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
m
&model_with_buckets/sequence_loss/ShapeShapeTile_23*
T0*
out_type0*
_output_shapes
:
~
4model_with_buckets/sequence_loss/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6model_with_buckets/sequence_loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6model_with_buckets/sequence_loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.model_with_buckets/sequence_loss/strided_sliceStridedSlice&model_with_buckets/sequence_loss/Shape4model_with_buckets/sequence_loss/strided_slice/stack6model_with_buckets/sequence_loss/strided_slice/stack_16model_with_buckets/sequence_loss/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Э
%model_with_buckets/sequence_loss/CastCast.model_with_buckets/sequence_loss/strided_slice*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
б
(model_with_buckets/sequence_loss/truedivRealDiv$model_with_buckets/sequence_loss/Sum%model_with_buckets/sequence_loss/Cast*
T0*
_output_shapes
: 
H
Const_2Const*
valueB B *
dtype0*
_output_shapes
: 
г
MutableHashTableMutableHashTableV2*
shared_name *
use_node_name_sharing(*
	key_dtype0	*
value_dtype0*
	container *
_output_shapes
: 
▌
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tvalues0*
Tkeys0	*#
_class
loc:@MutableHashTable*2
_output_shapes 
:         :         
ф
Const_3Const*и
valueЮBЫ	b"Р                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       *
dtype0	*
_output_shapes
:b
Ї
Const_4Const*╕
valueоBлbB B B B B!B"B#B$B%B&B'B(B)B*B+B,B-B.B/B0B1B2B3B4B5B6B7B8B9B:B;B<B=B>B?B@BABBBCBDBEBFBGBHBIBJBKBLBMBNBOBPBQBRBSBTBUBVBWBXBYBZB[B\B]B^B_B`BaBbBcBdBeBfBgBhBiBjBkBlBmBnBoBpBqBrBsBtBuBvBwBxByBzB{B|B}B~*
dtype0*
_output_shapes
:b
п
8MutableHashTable_lookup_table_insert/LookupTableInsertV2LookupTableInsertV2MutableHashTableConst_3Const_4*

Tout0*#
_class
loc:@MutableHashTable*	
Tin0	
Н
ArgMax/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
у
ArgMaxArgMaxrmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/BiasAddArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
є
SoftmaxSoftmaxrmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Т
Max/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
u
MaxMaxSoftmaxMax/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
П
ArgMax_1/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
щ
ArgMax_1ArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/BiasAddArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
ў
	Softmax_1Softmaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_1/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Ф
Max_1/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
{
Max_1Max	Softmax_1Max_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
П
ArgMax_2/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
щ
ArgMax_2ArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/BiasAddArgMax_2/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
ў
	Softmax_2Softmaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_2/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Ф
Max_2/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
{
Max_2Max	Softmax_2Max_2/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
П
ArgMax_3/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
щ
ArgMax_3ArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/BiasAddArgMax_3/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
ў
	Softmax_3Softmaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_3/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Ф
Max_3/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
{
Max_3Max	Softmax_3Max_3/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
П
ArgMax_4/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
щ
ArgMax_4ArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/BiasAddArgMax_4/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
ў
	Softmax_4Softmaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_4/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Ф
Max_4/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
{
Max_4Max	Softmax_4Max_4/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
П
ArgMax_5/dimensionConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
щ
ArgMax_5ArgMaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/BiasAddArgMax_5/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
ў
	Softmax_5Softmaxtmodel_with_buckets/embedding_attention_decoder/attention_decoder/AttnOutputProjection_5/AttnOutputProjection/BiasAdd9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*'
_output_shapes
:         b
Ф
Max_5/reduction_indicesConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
{
Max_5Max	Softmax_5Max_5/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
Ц
transpose_1/aPackArgMaxArgMax_1ArgMax_2ArgMax_3ArgMax_4ArgMax_5*
T0	*

axis *
N*'
_output_shapes
:         
Ь
transpose_1/permConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB"       *
dtype0*
_output_shapes
:
x
transpose_1	Transposetranspose_1/atranspose_1/perm*
Tperm0*
T0	*'
_output_shapes
:         
V
map_1/ShapeShapetranspose_1*
T0	*
out_type0*
_output_shapes
:
Ю
map_1/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
а
map_1/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
а
map_1/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ч
map_1/strided_sliceStridedSlicemap_1/Shapemap_1/strided_slice/stackmap_1/strided_slice/stack_1map_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
▐
map_1/TensorArrayTensorArrayV3map_1/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0	*
_output_shapes

:: 
i
map_1/TensorArrayUnstack/ShapeShapetranspose_1*
T0	*
out_type0*
_output_shapes
:
▒
,map_1/TensorArrayUnstack/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
│
.map_1/TensorArrayUnstack/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
│
.map_1/TensorArrayUnstack/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ў
&map_1/TensorArrayUnstack/strided_sliceStridedSlicemap_1/TensorArrayUnstack/Shape,map_1/TensorArrayUnstack/strided_slice/stack.map_1/TensorArrayUnstack/strided_slice/stack_1.map_1/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
б
$map_1/TensorArrayUnstack/range/startConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
б
$map_1/TensorArrayUnstack/range/deltaConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
╠
map_1/TensorArrayUnstack/rangeRange$map_1/TensorArrayUnstack/range/start&map_1/TensorArrayUnstack/strided_slice$map_1/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ю
@map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map_1/TensorArraymap_1/TensorArrayUnstack/rangetranspose_1map_1/TensorArray:1*
T0	*
_class
loc:@transpose_1*
_output_shapes
: 
И
map_1/ConstConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
р
map_1/TensorArray_1TensorArrayV3map_1/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
Ъ
map_1/while/iteration_counterConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
│
map_1/while/EnterEntermap_1/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
г
map_1/while/Enter_1Entermap_1/Const*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
н
map_1/while/Enter_2Entermap_1/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
t
map_1/while/MergeMergemap_1/while/Entermap_1/while/NextIteration*
T0*
N*
_output_shapes
: : 
z
map_1/while/Merge_1Mergemap_1/while/Enter_1map_1/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
z
map_1/while/Merge_2Mergemap_1/while/Enter_2map_1/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
d
map_1/while/LessLessmap_1/while/Mergemap_1/while/Less/Enter*
T0*
_output_shapes
: 
о
map_1/while/Less/EnterEntermap_1/strided_slice*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
h
map_1/while/Less_1Lessmap_1/while/Merge_1map_1/while/Less/Enter*
T0*
_output_shapes
: 
b
map_1/while/LogicalAnd
LogicalAndmap_1/while/Lessmap_1/while/Less_1*
_output_shapes
: 
P
map_1/while/LoopCondLoopCondmap_1/while/LogicalAnd*
_output_shapes
: 
О
map_1/while/SwitchSwitchmap_1/while/Mergemap_1/while/LoopCond*
T0*$
_class
loc:@map_1/while/Merge*
_output_shapes
: : 
Ф
map_1/while/Switch_1Switchmap_1/while/Merge_1map_1/while/LoopCond*
T0*&
_class
loc:@map_1/while/Merge_1*
_output_shapes
: : 
Ф
map_1/while/Switch_2Switchmap_1/while/Merge_2map_1/while/LoopCond*
T0*&
_class
loc:@map_1/while/Merge_2*
_output_shapes
: : 
W
map_1/while/IdentityIdentitymap_1/while/Switch:1*
T0*
_output_shapes
: 
[
map_1/while/Identity_1Identitymap_1/while/Switch_1:1*
T0*
_output_shapes
: 
[
map_1/while/Identity_2Identitymap_1/while/Switch_2:1*
T0*
_output_shapes
: 
j
map_1/while/add/yConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
b
map_1/while/addAddV2map_1/while/Identitymap_1/while/add/y*
T0*
_output_shapes
: 
┐
map_1/while/TensorArrayReadV3TensorArrayReadV3#map_1/while/TensorArrayReadV3/Entermap_1/while/Identity_1%map_1/while/TensorArrayReadV3/Enter_1*
dtype0	*
_output_shapes
:
╜
#map_1/while/TensorArrayReadV3/EnterEntermap_1/TensorArray*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
:
ъ
%map_1/while/TensorArrayReadV3/Enter_1Enter@map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
{
"map_1/while/foldr/TensorArray/sizeConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
∙
map_1/while/foldr/TensorArrayTensorArrayV3"map_1/while/foldr/TensorArray/size*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0	*
_output_shapes

:: 
Л
*map_1/while/foldr/TensorArrayUnstack/ShapeConst^map_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Щ
8map_1/while/foldr/TensorArrayUnstack/strided_slice/stackConst^map_1/while/Identity*
valueB: *
dtype0*
_output_shapes
:
Ы
:map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_1Const^map_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ы
:map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_2Const^map_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
▓
2map_1/while/foldr/TensorArrayUnstack/strided_sliceStridedSlice*map_1/while/foldr/TensorArrayUnstack/Shape8map_1/while/foldr/TensorArrayUnstack/strided_slice/stack:map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_1:map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Й
0map_1/while/foldr/TensorArrayUnstack/range/startConst^map_1/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
Й
0map_1/while/foldr/TensorArrayUnstack/range/deltaConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
є
*map_1/while/foldr/TensorArrayUnstack/rangeRange0map_1/while/foldr/TensorArrayUnstack/range/start2map_1/while/foldr/TensorArrayUnstack/strided_slice0map_1/while/foldr/TensorArrayUnstack/range/delta*

Tidx0*
_output_shapes
:
┬
Lmap_1/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map_1/while/foldr/TensorArray*map_1/while/foldr/TensorArrayUnstack/rangemap_1/while/TensorArrayReadV3map_1/while/foldr/TensorArray:1*
T0	*0
_class&
$"loc:@map_1/while/TensorArrayReadV3*
_output_shapes
: 
Г
*map_1/while/foldr/while/maximum_iterationsConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
В
)map_1/while/foldr/while/iteration_counterConst^map_1/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
v
map_1/while/foldr/while/ConstConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
w
map_1/while/foldr/while/Const_1Const^map_1/while/Identity*
valueB B *
dtype0*
_output_shapes
: 
╫
map_1/while/foldr/while/EnterEnter)map_1/while/foldr/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
═
map_1/while/foldr/while/Enter_1Entermap_1/while/foldr/while/Const*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
╧
map_1/while/foldr/while/Enter_2Entermap_1/while/foldr/while/Const_1*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
Ш
map_1/while/foldr/while/MergeMergemap_1/while/foldr/while/Enter%map_1/while/foldr/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ю
map_1/while/foldr/while/Merge_1Mergemap_1/while/foldr/while/Enter_1'map_1/while/foldr/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ю
map_1/while/foldr/while/Merge_2Mergemap_1/while/foldr/while/Enter_2'map_1/while/foldr/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
И
map_1/while/foldr/while/LessLessmap_1/while/foldr/while/Merge"map_1/while/foldr/while/Less/Enter*
T0*
_output_shapes
: 
▌
"map_1/while/foldr/while/Less/EnterEnter*map_1/while/foldr/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
Г
!map_1/while/foldr/while/Greater/yConst^map_1/while/foldr/while/Merge*
value	B : *
dtype0*
_output_shapes
: 
П
map_1/while/foldr/while/GreaterGreatermap_1/while/foldr/while/Merge_1!map_1/while/foldr/while/Greater/y*
T0*
_output_shapes
: 
З
"map_1/while/foldr/while/LogicalAnd
LogicalAndmap_1/while/foldr/while/Lessmap_1/while/foldr/while/Greater*
_output_shapes
: 
h
 map_1/while/foldr/while/LoopCondLoopCond"map_1/while/foldr/while/LogicalAnd*
_output_shapes
: 
╛
map_1/while/foldr/while/SwitchSwitchmap_1/while/foldr/while/Merge map_1/while/foldr/while/LoopCond*
T0*0
_class&
$"loc:@map_1/while/foldr/while/Merge*
_output_shapes
: : 
─
 map_1/while/foldr/while/Switch_1Switchmap_1/while/foldr/while/Merge_1 map_1/while/foldr/while/LoopCond*
T0*2
_class(
&$loc:@map_1/while/foldr/while/Merge_1*
_output_shapes
: : 
─
 map_1/while/foldr/while/Switch_2Switchmap_1/while/foldr/while/Merge_2 map_1/while/foldr/while/LoopCond*
T0*2
_class(
&$loc:@map_1/while/foldr/while/Merge_2*
_output_shapes
: : 
o
 map_1/while/foldr/while/IdentityIdentity map_1/while/foldr/while/Switch:1*
T0*
_output_shapes
: 
s
"map_1/while/foldr/while/Identity_1Identity"map_1/while/foldr/while/Switch_1:1*
T0*
_output_shapes
: 
s
"map_1/while/foldr/while/Identity_2Identity"map_1/while/foldr/while/Switch_2:1*
T0*
_output_shapes
: 
В
map_1/while/foldr/while/add/yConst!^map_1/while/foldr/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ж
map_1/while/foldr/while/addAddV2 map_1/while/foldr/while/Identitymap_1/while/foldr/while/add/y*
T0*
_output_shapes
: 
В
map_1/while/foldr/while/sub/yConst!^map_1/while/foldr/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ж
map_1/while/foldr/while/subSub"map_1/while/foldr/while/Identity_1map_1/while/foldr/while/sub/y*
T0*
_output_shapes
: 
ф
)map_1/while/foldr/while/TensorArrayReadV3TensorArrayReadV3/map_1/while/foldr/while/TensorArrayReadV3/Entermap_1/while/foldr/while/sub1map_1/while/foldr/while/TensorArrayReadV3/Enter_1*
dtype0	*
_output_shapes
: 
с
/map_1/while/foldr/while/TensorArrayReadV3/EnterEntermap_1/while/foldr/TensorArray*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
:
О
1map_1/while/foldr/while/TensorArrayReadV3/Enter_1EnterLmap_1/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
Д
map_1/while/foldr/while/Equal/yConst!^map_1/while/foldr/while/Identity*
value	B	 R*
dtype0	*
_output_shapes
: 
│
map_1/while/foldr/while/EqualEqual)map_1/while/foldr/while/TensorArrayReadV3map_1/while/foldr/while/Equal/y*
incompatible_shape_error(*
T0	*
_output_shapes
: 
О
#map_1/while/foldr/while/cond/SwitchSwitchmap_1/while/foldr/while/Equalmap_1/while/foldr/while/Equal*
T0
*
_output_shapes
: : 
y
%map_1/while/foldr/while/cond/switch_tIdentity%map_1/while/foldr/while/cond/Switch:1*
T0
*
_output_shapes
: 
w
%map_1/while/foldr/while/cond/switch_fIdentity#map_1/while/foldr/while/cond/Switch*
T0
*
_output_shapes
: 
p
$map_1/while/foldr/while/cond/pred_idIdentitymap_1/while/foldr/while/Equal*
T0
*
_output_shapes
: 
Л
"map_1/while/foldr/while/cond/ConstConst&^map_1/while/foldr/while/cond/switch_t*
valueB B *
dtype0*
_output_shapes
: 
╠
Qmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2LookupTableFindV2Xmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/SwitchZmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2*

Tout0*#
_class
loc:@MutableHashTable*	
Tin0	*
_output_shapes
: 
╠
Wmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/EnterEnterMutableHashTable9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*#
_class
loc:@MutableHashTable*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
ц
Ymap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1EnterWmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter*
T0*#
_class
loc:@MutableHashTable*
is_constant(*
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
л
Xmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/SwitchSwitchYmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1$map_1/while/foldr/while/cond/pred_id*
T0*#
_class
loc:@MutableHashTable*
_output_shapes
: : 
Ц
Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1Switch)map_1/while/foldr/while/TensorArrayReadV3$map_1/while/foldr/while/cond/pred_id*
T0	*<
_class2
0.loc:@map_1/while/foldr/while/TensorArrayReadV3*
_output_shapes
: : 
┼
Ymap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_2EnterConst_29^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
T0*#
_class
loc:@MutableHashTable*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
: 
ш
Ymap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3EnterYmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_2*
T0*#
_class
loc:@MutableHashTable*
is_constant(*
parallel_iterations
*5

frame_name'%map_1/while/foldr/while/while_context*
_output_shapes
: 
н
Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2SwitchYmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3$map_1/while/foldr/while/cond/pred_id*
T0*#
_class
loc:@MutableHashTable*
_output_shapes
: : 
─
 map_1/while/foldr/while/cond/addAddQmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2'map_1/while/foldr/while/cond/add/Switch*
T0*
_output_shapes
: 
╒
'map_1/while/foldr/while/cond/add/SwitchSwitch"map_1/while/foldr/while/Identity_2$map_1/while/foldr/while/cond/pred_id*
T0*5
_class+
)'loc:@map_1/while/foldr/while/Identity_2*
_output_shapes
: : 
Э
"map_1/while/foldr/while/cond/MergeMerge map_1/while/foldr/while/cond/add"map_1/while/foldr/while/cond/Const*
T0*
N*
_output_shapes
: : 
t
%map_1/while/foldr/while/NextIterationNextIterationmap_1/while/foldr/while/add*
T0*
_output_shapes
: 
v
'map_1/while/foldr/while/NextIteration_1NextIterationmap_1/while/foldr/while/sub*
T0*
_output_shapes
: 
}
'map_1/while/foldr/while/NextIteration_2NextIteration"map_1/while/foldr/while/cond/Merge*
T0*
_output_shapes
: 
e
map_1/while/foldr/while/ExitExitmap_1/while/foldr/while/Switch*
T0*
_output_shapes
: 
i
map_1/while/foldr/while/Exit_1Exit map_1/while/foldr/while/Switch_1*
T0*
_output_shapes
: 
i
map_1/while/foldr/while/Exit_2Exit map_1/while/foldr/while/Switch_2*
T0*
_output_shapes
: 
а
/map_1/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV35map_1/while/TensorArrayWrite/TensorArrayWriteV3/Entermap_1/while/Identity_1map_1/while/foldr/while/Exit_2map_1/while/Identity_2*
T0*1
_class'
%#loc:@map_1/while/foldr/while/Exit_2*
_output_shapes
: 
Д
5map_1/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap_1/TensorArray_1*
T0*1
_class'
%#loc:@map_1/while/foldr/while/Exit_2*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context*
_output_shapes
:
l
map_1/while/add_1/yConst^map_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
h
map_1/while/add_1AddV2map_1/while/Identity_1map_1/while/add_1/y*
T0*
_output_shapes
: 
\
map_1/while/NextIterationNextIterationmap_1/while/add*
T0*
_output_shapes
: 
`
map_1/while/NextIteration_1NextIterationmap_1/while/add_1*
T0*
_output_shapes
: 
~
map_1/while/NextIteration_2NextIteration/map_1/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
M
map_1/while/ExitExitmap_1/while/Switch*
T0*
_output_shapes
: 
Q
map_1/while/Exit_1Exitmap_1/while/Switch_1*
T0*
_output_shapes
: 
Q
map_1/while/Exit_2Exitmap_1/while/Switch_2*
T0*
_output_shapes
: 
ж
(map_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map_1/TensorArray_1map_1/while/Exit_2*&
_class
loc:@map_1/TensorArray_1*
_output_shapes
: 
╟
"map_1/TensorArrayStack/range/startConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*&
_class
loc:@map_1/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
╟
"map_1/TensorArrayStack/range/deltaConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*&
_class
loc:@map_1/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
Ё
map_1/TensorArrayStack/rangeRange"map_1/TensorArrayStack/range/start(map_1/TensorArrayStack/TensorArraySizeV3"map_1/TensorArrayStack/range/delta*

Tidx0*&
_class
loc:@map_1/TensorArray_1*#
_output_shapes
:         
ў
*map_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map_1/TensorArray_1map_1/TensorArrayStack/rangemap_1/while/Exit_2*
element_shape: *&
_class
loc:@map_1/TensorArray_1*
dtype0*#
_output_shapes
:         
Д
transpose_2/aPackMaxMax_1Max_2Max_3Max_4Max_5*
T0*

axis *
N*'
_output_shapes
:         
Ь
transpose_2/permConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB"       *
dtype0*
_output_shapes
:
x
transpose_2	Transposetranspose_2/atranspose_2/perm*
Tperm0*
T0*'
_output_shapes
:         
i
SizeSize*map_1/TensorArrayStack/TensorArrayGatherV3*
T0*
out_type0*
_output_shapes
: 
И
range/startConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
И
range/deltaConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startSizerange/delta*

Tidx0*#
_output_shapes
:         
К
GatherV2/axisConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
Ю
GatherV2GatherV2transpose_2rangeGatherV2/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*'
_output_shapes
:         
S
map_2/ShapeShapeGatherV2*
T0*
out_type0*
_output_shapes
:
Ю
map_2/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
а
map_2/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
а
map_2/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ч
map_2/strided_sliceStridedSlicemap_2/Shapemap_2/strided_slice/stackmap_2/strided_slice/stack_1map_2/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
▐
map_2/TensorArrayTensorArrayV3map_2/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
f
map_2/TensorArrayUnstack/ShapeShapeGatherV2*
T0*
out_type0*
_output_shapes
:
▒
,map_2/TensorArrayUnstack/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
│
.map_2/TensorArrayUnstack/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
│
.map_2/TensorArrayUnstack/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ў
&map_2/TensorArrayUnstack/strided_sliceStridedSlicemap_2/TensorArrayUnstack/Shape,map_2/TensorArrayUnstack/strided_slice/stack.map_2/TensorArrayUnstack/strided_slice/stack_1.map_2/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
б
$map_2/TensorArrayUnstack/range/startConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
б
$map_2/TensorArrayUnstack/range/deltaConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
╠
map_2/TensorArrayUnstack/rangeRange$map_2/TensorArrayUnstack/range/start&map_2/TensorArrayUnstack/strided_slice$map_2/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ш
@map_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map_2/TensorArraymap_2/TensorArrayUnstack/rangeGatherV2map_2/TensorArray:1*
T0*
_class
loc:@GatherV2*
_output_shapes
: 
И
map_2/ConstConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
р
map_2/TensorArray_1TensorArrayV3map_2/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
Ъ
map_2/while/iteration_counterConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B : *
dtype0*
_output_shapes
: 
│
map_2/while/EnterEntermap_2/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
: 
г
map_2/while/Enter_1Entermap_2/Const*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
: 
н
map_2/while/Enter_2Entermap_2/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
: 
t
map_2/while/MergeMergemap_2/while/Entermap_2/while/NextIteration*
T0*
N*
_output_shapes
: : 
z
map_2/while/Merge_1Mergemap_2/while/Enter_1map_2/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
z
map_2/while/Merge_2Mergemap_2/while/Enter_2map_2/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
d
map_2/while/LessLessmap_2/while/Mergemap_2/while/Less/Enter*
T0*
_output_shapes
: 
о
map_2/while/Less/EnterEntermap_2/strided_slice*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
: 
h
map_2/while/Less_1Lessmap_2/while/Merge_1map_2/while/Less/Enter*
T0*
_output_shapes
: 
b
map_2/while/LogicalAnd
LogicalAndmap_2/while/Lessmap_2/while/Less_1*
_output_shapes
: 
P
map_2/while/LoopCondLoopCondmap_2/while/LogicalAnd*
_output_shapes
: 
О
map_2/while/SwitchSwitchmap_2/while/Mergemap_2/while/LoopCond*
T0*$
_class
loc:@map_2/while/Merge*
_output_shapes
: : 
Ф
map_2/while/Switch_1Switchmap_2/while/Merge_1map_2/while/LoopCond*
T0*&
_class
loc:@map_2/while/Merge_1*
_output_shapes
: : 
Ф
map_2/while/Switch_2Switchmap_2/while/Merge_2map_2/while/LoopCond*
T0*&
_class
loc:@map_2/while/Merge_2*
_output_shapes
: : 
W
map_2/while/IdentityIdentitymap_2/while/Switch:1*
T0*
_output_shapes
: 
[
map_2/while/Identity_1Identitymap_2/while/Switch_1:1*
T0*
_output_shapes
: 
[
map_2/while/Identity_2Identitymap_2/while/Switch_2:1*
T0*
_output_shapes
: 
j
map_2/while/add/yConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
b
map_2/while/addAddV2map_2/while/Identitymap_2/while/add/y*
T0*
_output_shapes
: 
┐
map_2/while/TensorArrayReadV3TensorArrayReadV3#map_2/while/TensorArrayReadV3/Entermap_2/while/Identity_1%map_2/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:
╜
#map_2/while/TensorArrayReadV3/EnterEntermap_2/TensorArray*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
:
ъ
%map_2/while/TensorArrayReadV3/Enter_1Enter@map_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
: 
k
map_2/while/Cast/xConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
l
map_2/while/CastCastmap_2/while/Cast/x*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
{
"map_2/while/foldr/TensorArray/sizeConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
∙
map_2/while/foldr/TensorArrayTensorArrayV3"map_2/while/foldr/TensorArray/size*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
Л
*map_2/while/foldr/TensorArrayUnstack/ShapeConst^map_2/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Щ
8map_2/while/foldr/TensorArrayUnstack/strided_slice/stackConst^map_2/while/Identity*
valueB: *
dtype0*
_output_shapes
:
Ы
:map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_1Const^map_2/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ы
:map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_2Const^map_2/while/Identity*
valueB:*
dtype0*
_output_shapes
:
▓
2map_2/while/foldr/TensorArrayUnstack/strided_sliceStridedSlice*map_2/while/foldr/TensorArrayUnstack/Shape8map_2/while/foldr/TensorArrayUnstack/strided_slice/stack:map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_1:map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Й
0map_2/while/foldr/TensorArrayUnstack/range/startConst^map_2/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
Й
0map_2/while/foldr/TensorArrayUnstack/range/deltaConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
є
*map_2/while/foldr/TensorArrayUnstack/rangeRange0map_2/while/foldr/TensorArrayUnstack/range/start2map_2/while/foldr/TensorArrayUnstack/strided_slice0map_2/while/foldr/TensorArrayUnstack/range/delta*

Tidx0*
_output_shapes
:
┬
Lmap_2/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map_2/while/foldr/TensorArray*map_2/while/foldr/TensorArrayUnstack/rangemap_2/while/TensorArrayReadV3map_2/while/foldr/TensorArray:1*
T0*0
_class&
$"loc:@map_2/while/TensorArrayReadV3*
_output_shapes
: 
Г
*map_2/while/foldr/while/maximum_iterationsConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
В
)map_2/while/foldr/while/iteration_counterConst^map_2/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
v
map_2/while/foldr/while/ConstConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
╫
map_2/while/foldr/while/EnterEnter)map_2/while/foldr/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
: 
═
map_2/while/foldr/while/Enter_1Entermap_2/while/foldr/while/Const*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
: 
└
map_2/while/foldr/while/Enter_2Entermap_2/while/Cast*
T0*
is_constant( *
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
: 
Ш
map_2/while/foldr/while/MergeMergemap_2/while/foldr/while/Enter%map_2/while/foldr/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ю
map_2/while/foldr/while/Merge_1Mergemap_2/while/foldr/while/Enter_1'map_2/while/foldr/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ю
map_2/while/foldr/while/Merge_2Mergemap_2/while/foldr/while/Enter_2'map_2/while/foldr/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
И
map_2/while/foldr/while/LessLessmap_2/while/foldr/while/Merge"map_2/while/foldr/while/Less/Enter*
T0*
_output_shapes
: 
▌
"map_2/while/foldr/while/Less/EnterEnter*map_2/while/foldr/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
: 
Г
!map_2/while/foldr/while/Greater/yConst^map_2/while/foldr/while/Merge*
value	B : *
dtype0*
_output_shapes
: 
П
map_2/while/foldr/while/GreaterGreatermap_2/while/foldr/while/Merge_1!map_2/while/foldr/while/Greater/y*
T0*
_output_shapes
: 
З
"map_2/while/foldr/while/LogicalAnd
LogicalAndmap_2/while/foldr/while/Lessmap_2/while/foldr/while/Greater*
_output_shapes
: 
h
 map_2/while/foldr/while/LoopCondLoopCond"map_2/while/foldr/while/LogicalAnd*
_output_shapes
: 
╛
map_2/while/foldr/while/SwitchSwitchmap_2/while/foldr/while/Merge map_2/while/foldr/while/LoopCond*
T0*0
_class&
$"loc:@map_2/while/foldr/while/Merge*
_output_shapes
: : 
─
 map_2/while/foldr/while/Switch_1Switchmap_2/while/foldr/while/Merge_1 map_2/while/foldr/while/LoopCond*
T0*2
_class(
&$loc:@map_2/while/foldr/while/Merge_1*
_output_shapes
: : 
─
 map_2/while/foldr/while/Switch_2Switchmap_2/while/foldr/while/Merge_2 map_2/while/foldr/while/LoopCond*
T0*2
_class(
&$loc:@map_2/while/foldr/while/Merge_2*
_output_shapes
: : 
o
 map_2/while/foldr/while/IdentityIdentity map_2/while/foldr/while/Switch:1*
T0*
_output_shapes
: 
s
"map_2/while/foldr/while/Identity_1Identity"map_2/while/foldr/while/Switch_1:1*
T0*
_output_shapes
: 
s
"map_2/while/foldr/while/Identity_2Identity"map_2/while/foldr/while/Switch_2:1*
T0*
_output_shapes
: 
В
map_2/while/foldr/while/add/yConst!^map_2/while/foldr/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ж
map_2/while/foldr/while/addAddV2 map_2/while/foldr/while/Identitymap_2/while/foldr/while/add/y*
T0*
_output_shapes
: 
В
map_2/while/foldr/while/sub/yConst!^map_2/while/foldr/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ж
map_2/while/foldr/while/subSub"map_2/while/foldr/while/Identity_1map_2/while/foldr/while/sub/y*
T0*
_output_shapes
: 
ф
)map_2/while/foldr/while/TensorArrayReadV3TensorArrayReadV3/map_2/while/foldr/while/TensorArrayReadV3/Entermap_2/while/foldr/while/sub1map_2/while/foldr/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
: 
с
/map_2/while/foldr/while/TensorArrayReadV3/EnterEntermap_2/while/foldr/TensorArray*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
:
О
1map_2/while/foldr/while/TensorArrayReadV3/Enter_1EnterLmap_2/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*5

frame_name'%map_2/while/foldr/while/while_context*
_output_shapes
: 
П
map_2/while/foldr/while/CastCast)map_2/while/foldr/while/TensorArrayReadV3*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
Е
map_2/while/foldr/while/MulMulmap_2/while/foldr/while/Cast"map_2/while/foldr/while/Identity_2*
T0*
_output_shapes
: 
t
%map_2/while/foldr/while/NextIterationNextIterationmap_2/while/foldr/while/add*
T0*
_output_shapes
: 
v
'map_2/while/foldr/while/NextIteration_1NextIterationmap_2/while/foldr/while/sub*
T0*
_output_shapes
: 
v
'map_2/while/foldr/while/NextIteration_2NextIterationmap_2/while/foldr/while/Mul*
T0*
_output_shapes
: 
e
map_2/while/foldr/while/ExitExitmap_2/while/foldr/while/Switch*
T0*
_output_shapes
: 
i
map_2/while/foldr/while/Exit_1Exit map_2/while/foldr/while/Switch_1*
T0*
_output_shapes
: 
i
map_2/while/foldr/while/Exit_2Exit map_2/while/foldr/while/Switch_2*
T0*
_output_shapes
: 
а
/map_2/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV35map_2/while/TensorArrayWrite/TensorArrayWriteV3/Entermap_2/while/Identity_1map_2/while/foldr/while/Exit_2map_2/while/Identity_2*
T0*1
_class'
%#loc:@map_2/while/foldr/while/Exit_2*
_output_shapes
: 
Д
5map_2/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap_2/TensorArray_1*
T0*1
_class'
%#loc:@map_2/while/foldr/while/Exit_2*
is_constant(*
parallel_iterations
*)

frame_namemap_2/while/while_context*
_output_shapes
:
l
map_2/while/add_1/yConst^map_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
h
map_2/while/add_1AddV2map_2/while/Identity_1map_2/while/add_1/y*
T0*
_output_shapes
: 
\
map_2/while/NextIterationNextIterationmap_2/while/add*
T0*
_output_shapes
: 
`
map_2/while/NextIteration_1NextIterationmap_2/while/add_1*
T0*
_output_shapes
: 
~
map_2/while/NextIteration_2NextIteration/map_2/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
M
map_2/while/ExitExitmap_2/while/Switch*
T0*
_output_shapes
: 
Q
map_2/while/Exit_1Exitmap_2/while/Switch_1*
T0*
_output_shapes
: 
Q
map_2/while/Exit_2Exitmap_2/while/Switch_2*
T0*
_output_shapes
: 
ж
(map_2/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map_2/TensorArray_1map_2/while/Exit_2*&
_class
loc:@map_2/TensorArray_1*
_output_shapes
: 
╟
"map_2/TensorArrayStack/range/startConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*&
_class
loc:@map_2/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
╟
"map_2/TensorArrayStack/range/deltaConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*&
_class
loc:@map_2/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
Ё
map_2/TensorArrayStack/rangeRange"map_2/TensorArrayStack/range/start(map_2/TensorArrayStack/TensorArraySizeV3"map_2/TensorArrayStack/range/delta*

Tidx0*&
_class
loc:@map_2/TensorArray_1*#
_output_shapes
:         
ў
*map_2/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map_2/TensorArray_1map_2/TensorArrayStack/rangemap_2/while/Exit_2*
element_shape: *&
_class
loc:@map_2/TensorArray_1*
dtype0*#
_output_shapes
:         
q
Shape_1Shape*map_1/TensorArrayStack/TensorArrayGatherV3*
T0*
out_type0*
_output_shapes
:
Ъ
strided_slice_1/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
Ь
strided_slice_1/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ь
strided_slice_1/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Д
Equal/yConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
i
EqualEqualstrided_slice_1Equal/y*
incompatible_shape_error(*
T0*
_output_shapes
: 
H
cond_1/SwitchSwitchEqualEqual*
T0
*
_output_shapes
: : 
M
cond_1/switch_tIdentitycond_1/Switch:1*
T0
*
_output_shapes
: 
K
cond_1/switch_fIdentitycond_1/Switch*
T0
*
_output_shapes
: 
B
cond_1/pred_idIdentityEqual*
T0
*
_output_shapes
: 
▒
cond_1/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_1/switch_t*
valueB: *
dtype0*
_output_shapes
:
│
cond_1/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_1/switch_t*
valueB:*
dtype0*
_output_shapes
:
│
cond_1/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_1/switch_t*
valueB:*
dtype0*
_output_shapes
:
н
cond_1/strided_sliceStridedSlicecond_1/strided_slice/Switch:1cond_1/strided_slice/stackcond_1/strided_slice/stack_1cond_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
╞
cond_1/strided_slice/SwitchSwitch*map_1/TensorArrayStack/TensorArrayGatherV3cond_1/pred_id*
T0*&
_class
loc:@map_1/TensorArray_1*2
_output_shapes 
:         :         
║
cond_1/Switch_1Switch*map_1/TensorArrayStack/TensorArrayGatherV3cond_1/pred_id*
T0*&
_class
loc:@map_1/TensorArray_1*2
_output_shapes 
:         :         
j
cond_1/MergeMergecond_1/Switch_1cond_1/strided_slice*
T0*
N*
_output_shapes
:: 
q
Shape_2Shape*map_2/TensorArrayStack/TensorArrayGatherV3*
T0*
out_type0*
_output_shapes
:
Ъ
strided_slice_2/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB: *
dtype0*
_output_shapes
:
Ь
strided_slice_2/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Ь
strided_slice_2/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ж
	Equal_1/yConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2*
value	B :*
dtype0*
_output_shapes
: 
m
Equal_1Equalstrided_slice_2	Equal_1/y*
incompatible_shape_error(*
T0*
_output_shapes
: 
L
cond_2/SwitchSwitchEqual_1Equal_1*
T0
*
_output_shapes
: : 
M
cond_2/switch_tIdentitycond_2/Switch:1*
T0
*
_output_shapes
: 
K
cond_2/switch_fIdentitycond_2/Switch*
T0
*
_output_shapes
: 
D
cond_2/pred_idIdentityEqual_1*
T0
*
_output_shapes
: 
▒
cond_2/strided_slice/stackConst9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_2/switch_t*
valueB: *
dtype0*
_output_shapes
:
│
cond_2/strided_slice/stack_1Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_2/switch_t*
valueB:*
dtype0*
_output_shapes
:
│
cond_2/strided_slice/stack_2Const9^MutableHashTable_lookup_table_insert/LookupTableInsertV2^cond_2/switch_t*
valueB:*
dtype0*
_output_shapes
:
н
cond_2/strided_sliceStridedSlicecond_2/strided_slice/Switch:1cond_2/strided_slice/stackcond_2/strided_slice/stack_1cond_2/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
╞
cond_2/strided_slice/SwitchSwitch*map_2/TensorArrayStack/TensorArrayGatherV3cond_2/pred_id*
T0*&
_class
loc:@map_2/TensorArray_1*2
_output_shapes 
:         :         
║
cond_2/Switch_1Switch*map_2/TensorArrayStack/TensorArrayGatherV3cond_2/pred_id*
T0*&
_class
loc:@map_2/TensorArray_1*2
_output_shapes 
:         :         
j
cond_2/MergeMergecond_2/Switch_1cond_2/strided_slice*
T0*
N*
_output_shapes
:: 
G

predictionIdentitycond_1/Merge*
T0*
_output_shapes
:
H
probabilityIdentitycond_2/Merge*
T0*
_output_shapes
:
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
╞
save/SaveV2/tensor_namesConst*∙

valueя
Bь
#BVariableB)bidirectional_rnn/bw/basic_lstm_cell/biasB+bidirectional_rnn/bw/basic_lstm_cell/kernelB)bidirectional_rnn/fw/basic_lstm_cell/biasB+bidirectional_rnn/fw/basic_lstm_cell/kernelBconv_conv1/WBconv_conv2/WBconv_conv3/BatchNorm/betaBconv_conv3/BatchNorm/gammaB conv_conv3/BatchNorm/moving_meanB$conv_conv3/BatchNorm/moving_varianceBconv_conv3/WBconv_conv4/WBconv_conv5/BatchNorm/betaBconv_conv5/BatchNorm/gammaB conv_conv5/BatchNorm/moving_meanB$conv_conv5/BatchNorm/moving_varianceBconv_conv5/WBconv_conv6/WBconv_conv7/BatchNorm/betaBconv_conv7/BatchNorm/gammaB conv_conv7/BatchNorm/moving_meanB$conv_conv7/BatchNorm/moving_varianceBconv_conv7/WB>embedding_attention_decoder/attention_decoder/Attention_0/biasB@embedding_attention_decoder/attention_decoder/Attention_0/kernelBGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasBIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelB5embedding_attention_decoder/attention_decoder/AttnV_0B5embedding_attention_decoder/attention_decoder/AttnW_0B2embedding_attention_decoder/attention_decoder/biasB4embedding_attention_decoder/attention_decoder/kernelBXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasBZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB%embedding_attention_decoder/embedding*
dtype0*
_output_shapes
:#
й
save/SaveV2/shape_and_slicesConst*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:#
Ё
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable)bidirectional_rnn/bw/basic_lstm_cell/bias+bidirectional_rnn/bw/basic_lstm_cell/kernel)bidirectional_rnn/fw/basic_lstm_cell/bias+bidirectional_rnn/fw/basic_lstm_cell/kernelconv_conv1/Wconv_conv2/Wconv_conv3/BatchNorm/betaconv_conv3/BatchNorm/gamma conv_conv3/BatchNorm/moving_mean$conv_conv3/BatchNorm/moving_varianceconv_conv3/Wconv_conv4/Wconv_conv5/BatchNorm/betaconv_conv5/BatchNorm/gamma conv_conv5/BatchNorm/moving_mean$conv_conv5/BatchNorm/moving_varianceconv_conv5/Wconv_conv6/Wconv_conv7/BatchNorm/betaconv_conv7/BatchNorm/gamma conv_conv7/BatchNorm/moving_mean$conv_conv7/BatchNorm/moving_varianceconv_conv7/W>embedding_attention_decoder/attention_decoder/Attention_0/bias@embedding_attention_decoder/attention_decoder/Attention_0/kernelGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel5embedding_attention_decoder/attention_decoder/AttnV_05embedding_attention_decoder/attention_decoder/AttnW_02embedding_attention_decoder/attention_decoder/bias4embedding_attention_decoder/attention_decoder/kernelXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel%embedding_attention_decoder/embedding*1
dtypes'
%2#
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╔
save/RestoreV2/tensor_namesConst*∙

valueя
Bь
#BVariableB)bidirectional_rnn/bw/basic_lstm_cell/biasB+bidirectional_rnn/bw/basic_lstm_cell/kernelB)bidirectional_rnn/fw/basic_lstm_cell/biasB+bidirectional_rnn/fw/basic_lstm_cell/kernelBconv_conv1/WBconv_conv2/WBconv_conv3/BatchNorm/betaBconv_conv3/BatchNorm/gammaB conv_conv3/BatchNorm/moving_meanB$conv_conv3/BatchNorm/moving_varianceBconv_conv3/WBconv_conv4/WBconv_conv5/BatchNorm/betaBconv_conv5/BatchNorm/gammaB conv_conv5/BatchNorm/moving_meanB$conv_conv5/BatchNorm/moving_varianceBconv_conv5/WBconv_conv6/WBconv_conv7/BatchNorm/betaBconv_conv7/BatchNorm/gammaB conv_conv7/BatchNorm/moving_meanB$conv_conv7/BatchNorm/moving_varianceBconv_conv7/WB>embedding_attention_decoder/attention_decoder/Attention_0/biasB@embedding_attention_decoder/attention_decoder/Attention_0/kernelBGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasBIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelB5embedding_attention_decoder/attention_decoder/AttnV_0B5embedding_attention_decoder/attention_decoder/AttnW_0B2embedding_attention_decoder/attention_decoder/biasB4embedding_attention_decoder/attention_decoder/kernelBXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasBZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernelB%embedding_attention_decoder/embedding*
dtype0*
_output_shapes
:#
м
save/RestoreV2/shape_and_slicesConst*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:#
╜
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*1
dtypes'
%2#*в
_output_shapesП
М:::::::::::::::::::::::::::::::::::
Ц
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
с
save/Assign_1Assign)bidirectional_rnn/bw/basic_lstm_cell/biassave/RestoreV2:1*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
ъ
save/Assign_2Assign+bidirectional_rnn/bw/basic_lstm_cell/kernelsave/RestoreV2:2*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
с
save/Assign_3Assign)bidirectional_rnn/fw/basic_lstm_cell/biassave/RestoreV2:3*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
ъ
save/Assign_4Assign+bidirectional_rnn/fw/basic_lstm_cell/kernelsave/RestoreV2:4*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
▓
save/Assign_5Assignconv_conv1/Wsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@conv_conv1/W*
validate_shape(*&
_output_shapes
:@
│
save/Assign_6Assignconv_conv2/Wsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@conv_conv2/W*
validate_shape(*'
_output_shapes
:@А
┴
save/Assign_7Assignconv_conv3/BatchNorm/betasave/RestoreV2:7*
use_locking(*
T0*,
_class"
 loc:@conv_conv3/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
├
save/Assign_8Assignconv_conv3/BatchNorm/gammasave/RestoreV2:8*
use_locking(*
T0*-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╧
save/Assign_9Assign conv_conv3/BatchNorm/moving_meansave/RestoreV2:9*
use_locking(*
T0*3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
┘
save/Assign_10Assign$conv_conv3/BatchNorm/moving_variancesave/RestoreV2:10*
use_locking(*
T0*7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╢
save/Assign_11Assignconv_conv3/Wsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@conv_conv3/W*
validate_shape(*(
_output_shapes
:АА
╢
save/Assign_12Assignconv_conv4/Wsave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@conv_conv4/W*
validate_shape(*(
_output_shapes
:АА
├
save/Assign_13Assignconv_conv5/BatchNorm/betasave/RestoreV2:13*
use_locking(*
T0*,
_class"
 loc:@conv_conv5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
┼
save/Assign_14Assignconv_conv5/BatchNorm/gammasave/RestoreV2:14*
use_locking(*
T0*-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╤
save/Assign_15Assign conv_conv5/BatchNorm/moving_meansave/RestoreV2:15*
use_locking(*
T0*3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
┘
save/Assign_16Assign$conv_conv5/BatchNorm/moving_variancesave/RestoreV2:16*
use_locking(*
T0*7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╢
save/Assign_17Assignconv_conv5/Wsave/RestoreV2:17*
use_locking(*
T0*
_class
loc:@conv_conv5/W*
validate_shape(*(
_output_shapes
:АА
╢
save/Assign_18Assignconv_conv6/Wsave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@conv_conv6/W*
validate_shape(*(
_output_shapes
:АА
├
save/Assign_19Assignconv_conv7/BatchNorm/betasave/RestoreV2:19*
use_locking(*
T0*,
_class"
 loc:@conv_conv7/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
┼
save/Assign_20Assignconv_conv7/BatchNorm/gammasave/RestoreV2:20*
use_locking(*
T0*-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╤
save/Assign_21Assign conv_conv7/BatchNorm/moving_meansave/RestoreV2:21*
use_locking(*
T0*3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
┘
save/Assign_22Assign$conv_conv7/BatchNorm/moving_variancesave/RestoreV2:22*
use_locking(*
T0*7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╢
save/Assign_23Assignconv_conv7/Wsave/RestoreV2:23*
use_locking(*
T0*
_class
loc:@conv_conv7/W*
validate_shape(*(
_output_shapes
:АА
Н
save/Assign_24Assign>embedding_attention_decoder/attention_decoder/Attention_0/biassave/RestoreV2:24*
use_locking(*
T0*Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
validate_shape(*
_output_shapes	
:А
Ц
save/Assign_25Assign@embedding_attention_decoder/attention_decoder/Attention_0/kernelsave/RestoreV2:25*
use_locking(*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
validate_shape(* 
_output_shapes
:
АА
Ю
save/Assign_26AssignGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biassave/RestoreV2:26*
use_locking(*
T0*Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
validate_shape(*
_output_shapes
:b
з
save/Assign_27AssignIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelsave/RestoreV2:27*
use_locking(*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
validate_shape(*
_output_shapes
:	Аb
√
save/Assign_28Assign5embedding_attention_decoder/attention_decoder/AttnV_0save/RestoreV2:28*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
validate_shape(*
_output_shapes	
:А
И
save/Assign_29Assign5embedding_attention_decoder/attention_decoder/AttnW_0save/RestoreV2:29*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
validate_shape(*(
_output_shapes
:АА
ї
save/Assign_30Assign2embedding_attention_decoder/attention_decoder/biassave/RestoreV2:30*
use_locking(*
T0*E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
validate_shape(*
_output_shapes	
:А
■
save/Assign_31Assign4embedding_attention_decoder/attention_decoder/kernelsave/RestoreV2:31*
use_locking(*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
validate_shape(* 
_output_shapes
:
КА
┴
save/Assign_32AssignXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biassave/RestoreV2:32*
use_locking(*
T0*k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
╩
save/Assign_33AssignZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave/RestoreV2:33*
use_locking(*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
▐
save/Assign_34Assign%embedding_attention_decoder/embeddingsave/RestoreV2:34*
use_locking(*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
validate_shape(*
_output_shapes

:b

+
save/restore_all/NoOpNoOp^save/Assign
0
save/restore_all/NoOp_1NoOp^save/Assign_34
╟
save/restore_all/NoOp_2NoOp^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
d
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1^save/restore_all/NoOp_2
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_0f08b5cc1cc7445cb7a23eb574e41ccb/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
k
save_1/SaveV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
g
save_1/SaveV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ж
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariable*
dtypes
2
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
`
save_1/ShardedFilename_1/shardConst*
value	B :*
dtype0*
_output_shapes
: 
Й
save_1/ShardedFilename_1ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_1/shardsave_1/num_shards*
_output_shapes
: 
К
save_1/SaveV2_1/tensor_namesConst*:
value1B/B%embedding_attention_decoder/embedding*
dtype0*
_output_shapes
:
i
 save_1/SaveV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
л
save_1/SaveV2_1SaveV2save_1/ShardedFilename_1save_1/SaveV2_1/tensor_names save_1/SaveV2_1/shape_and_slices%embedding_attention_decoder/embedding*
dtypes
2
б
save_1/control_dependency_1Identitysave_1/ShardedFilename_1^save_1/SaveV2_1*
T0*+
_class!
loc:@save_1/ShardedFilename_1*
_output_shapes
: 
`
save_1/ShardedFilename_2/shardConst*
value	B :*
dtype0*
_output_shapes
: 
Й
save_1/ShardedFilename_2ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_2/shardsave_1/num_shards*
_output_shapes
: 
╔
save_1/SaveV2_2/tensor_namesConst*°

valueю
Bы
#BMutableHashTable-keysBMutableHashTable-valuesB)bidirectional_rnn/bw/basic_lstm_cell/biasB+bidirectional_rnn/bw/basic_lstm_cell/kernelB)bidirectional_rnn/fw/basic_lstm_cell/biasB+bidirectional_rnn/fw/basic_lstm_cell/kernelBconv_conv1/WBconv_conv2/WBconv_conv3/BatchNorm/betaBconv_conv3/BatchNorm/gammaB conv_conv3/BatchNorm/moving_meanB$conv_conv3/BatchNorm/moving_varianceBconv_conv3/WBconv_conv4/WBconv_conv5/BatchNorm/betaBconv_conv5/BatchNorm/gammaB conv_conv5/BatchNorm/moving_meanB$conv_conv5/BatchNorm/moving_varianceBconv_conv5/WBconv_conv6/WBconv_conv7/BatchNorm/betaBconv_conv7/BatchNorm/gammaB conv_conv7/BatchNorm/moving_meanB$conv_conv7/BatchNorm/moving_varianceBconv_conv7/WB>embedding_attention_decoder/attention_decoder/Attention_0/biasB@embedding_attention_decoder/attention_decoder/Attention_0/kernelBGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasBIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelB5embedding_attention_decoder/attention_decoder/AttnV_0B5embedding_attention_decoder/attention_decoder/AttnW_0B2embedding_attention_decoder/attention_decoder/biasB4embedding_attention_decoder/attention_decoder/kernelBXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasBZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:#
н
 save_1/SaveV2_2/shape_and_slicesConst*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:#
▌
save_1/SaveV2_2SaveV2save_1/ShardedFilename_2save_1/SaveV2_2/tensor_names save_1/SaveV2_2/shape_and_slices?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1)bidirectional_rnn/bw/basic_lstm_cell/bias+bidirectional_rnn/bw/basic_lstm_cell/kernel)bidirectional_rnn/fw/basic_lstm_cell/bias+bidirectional_rnn/fw/basic_lstm_cell/kernelconv_conv1/Wconv_conv2/Wconv_conv3/BatchNorm/betaconv_conv3/BatchNorm/gamma conv_conv3/BatchNorm/moving_mean$conv_conv3/BatchNorm/moving_varianceconv_conv3/Wconv_conv4/Wconv_conv5/BatchNorm/betaconv_conv5/BatchNorm/gamma conv_conv5/BatchNorm/moving_mean$conv_conv5/BatchNorm/moving_varianceconv_conv5/Wconv_conv6/Wconv_conv7/BatchNorm/betaconv_conv7/BatchNorm/gamma conv_conv7/BatchNorm/moving_mean$conv_conv7/BatchNorm/moving_varianceconv_conv7/W>embedding_attention_decoder/attention_decoder/Attention_0/bias@embedding_attention_decoder/attention_decoder/Attention_0/kernelGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel5embedding_attention_decoder/attention_decoder/AttnV_05embedding_attention_decoder/attention_decoder/AttnW_02embedding_attention_decoder/attention_decoder/bias4embedding_attention_decoder/attention_decoder/kernelXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*1
dtypes'
%2#	
б
save_1/control_dependency_2Identitysave_1/ShardedFilename_2^save_1/SaveV2_2*
T0*+
_class!
loc:@save_1/ShardedFilename_2*
_output_shapes
: 
У
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilenamesave_1/ShardedFilename_1save_1/ShardedFilename_2^save_1/control_dependency^save_1/control_dependency_1^save_1/control_dependency_2*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
╛
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency^save_1/control_dependency_1^save_1/control_dependency_2*
T0*
_output_shapes
: 
n
save_1/RestoreV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ъ
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
,
save_1/restore_shardNoOp^save_1/Assign
Н
save_1/RestoreV2_1/tensor_namesConst*:
value1B/B%embedding_attention_decoder/embedding*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
р
save_1/Assign_1Assign%embedding_attention_decoder/embeddingsave_1/RestoreV2_1*
use_locking(*
T0*8
_class.
,*loc:@embedding_attention_decoder/embedding*
validate_shape(*
_output_shapes

:b

0
save_1/restore_shard_1NoOp^save_1/Assign_1
╠
save_1/RestoreV2_2/tensor_namesConst*°

valueю
Bы
#BMutableHashTable-keysBMutableHashTable-valuesB)bidirectional_rnn/bw/basic_lstm_cell/biasB+bidirectional_rnn/bw/basic_lstm_cell/kernelB)bidirectional_rnn/fw/basic_lstm_cell/biasB+bidirectional_rnn/fw/basic_lstm_cell/kernelBconv_conv1/WBconv_conv2/WBconv_conv3/BatchNorm/betaBconv_conv3/BatchNorm/gammaB conv_conv3/BatchNorm/moving_meanB$conv_conv3/BatchNorm/moving_varianceBconv_conv3/WBconv_conv4/WBconv_conv5/BatchNorm/betaBconv_conv5/BatchNorm/gammaB conv_conv5/BatchNorm/moving_meanB$conv_conv5/BatchNorm/moving_varianceBconv_conv5/WBconv_conv6/WBconv_conv7/BatchNorm/betaBconv_conv7/BatchNorm/gammaB conv_conv7/BatchNorm/moving_meanB$conv_conv7/BatchNorm/moving_varianceBconv_conv7/WB>embedding_attention_decoder/attention_decoder/Attention_0/biasB@embedding_attention_decoder/attention_decoder/Attention_0/kernelBGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biasBIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelB5embedding_attention_decoder/attention_decoder/AttnV_0B5embedding_attention_decoder/attention_decoder/AttnW_0B2embedding_attention_decoder/attention_decoder/biasB4embedding_attention_decoder/attention_decoder/kernelBXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biasBZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:#
░
#save_1/RestoreV2_2/shape_and_slicesConst*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:#
╦
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*1
dtypes'
%2#	*в
_output_shapesП
М:::::::::::::::::::::::::::::::::::
╚
9save_1/MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2MutableHashTablesave_1/RestoreV2_2save_1/RestoreV2_2:1*

Tout0*#
_class
loc:@MutableHashTable*	
Tin0	
ч
save_1/Assign_2Assign)bidirectional_rnn/bw/basic_lstm_cell/biassave_1/RestoreV2_2:2*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Ё
save_1/Assign_3Assign+bidirectional_rnn/bw/basic_lstm_cell/kernelsave_1/RestoreV2_2:3*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/bw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ч
save_1/Assign_4Assign)bidirectional_rnn/fw/basic_lstm_cell/biassave_1/RestoreV2_2:4*
use_locking(*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Ё
save_1/Assign_5Assign+bidirectional_rnn/fw/basic_lstm_cell/kernelsave_1/RestoreV2_2:5*
use_locking(*
T0*>
_class4
20loc:@bidirectional_rnn/fw/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
╕
save_1/Assign_6Assignconv_conv1/Wsave_1/RestoreV2_2:6*
use_locking(*
T0*
_class
loc:@conv_conv1/W*
validate_shape(*&
_output_shapes
:@
╣
save_1/Assign_7Assignconv_conv2/Wsave_1/RestoreV2_2:7*
use_locking(*
T0*
_class
loc:@conv_conv2/W*
validate_shape(*'
_output_shapes
:@А
╟
save_1/Assign_8Assignconv_conv3/BatchNorm/betasave_1/RestoreV2_2:8*
use_locking(*
T0*,
_class"
 loc:@conv_conv3/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
╔
save_1/Assign_9Assignconv_conv3/BatchNorm/gammasave_1/RestoreV2_2:9*
use_locking(*
T0*-
_class#
!loc:@conv_conv3/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╫
save_1/Assign_10Assign conv_conv3/BatchNorm/moving_meansave_1/RestoreV2_2:10*
use_locking(*
T0*3
_class)
'%loc:@conv_conv3/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_11Assign$conv_conv3/BatchNorm/moving_variancesave_1/RestoreV2_2:11*
use_locking(*
T0*7
_class-
+)loc:@conv_conv3/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╝
save_1/Assign_12Assignconv_conv3/Wsave_1/RestoreV2_2:12*
use_locking(*
T0*
_class
loc:@conv_conv3/W*
validate_shape(*(
_output_shapes
:АА
╝
save_1/Assign_13Assignconv_conv4/Wsave_1/RestoreV2_2:13*
use_locking(*
T0*
_class
loc:@conv_conv4/W*
validate_shape(*(
_output_shapes
:АА
╔
save_1/Assign_14Assignconv_conv5/BatchNorm/betasave_1/RestoreV2_2:14*
use_locking(*
T0*,
_class"
 loc:@conv_conv5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
╦
save_1/Assign_15Assignconv_conv5/BatchNorm/gammasave_1/RestoreV2_2:15*
use_locking(*
T0*-
_class#
!loc:@conv_conv5/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╫
save_1/Assign_16Assign conv_conv5/BatchNorm/moving_meansave_1/RestoreV2_2:16*
use_locking(*
T0*3
_class)
'%loc:@conv_conv5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_17Assign$conv_conv5/BatchNorm/moving_variancesave_1/RestoreV2_2:17*
use_locking(*
T0*7
_class-
+)loc:@conv_conv5/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╝
save_1/Assign_18Assignconv_conv5/Wsave_1/RestoreV2_2:18*
use_locking(*
T0*
_class
loc:@conv_conv5/W*
validate_shape(*(
_output_shapes
:АА
╝
save_1/Assign_19Assignconv_conv6/Wsave_1/RestoreV2_2:19*
use_locking(*
T0*
_class
loc:@conv_conv6/W*
validate_shape(*(
_output_shapes
:АА
╔
save_1/Assign_20Assignconv_conv7/BatchNorm/betasave_1/RestoreV2_2:20*
use_locking(*
T0*,
_class"
 loc:@conv_conv7/BatchNorm/beta*
validate_shape(*
_output_shapes	
:А
╦
save_1/Assign_21Assignconv_conv7/BatchNorm/gammasave_1/RestoreV2_2:21*
use_locking(*
T0*-
_class#
!loc:@conv_conv7/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:А
╫
save_1/Assign_22Assign conv_conv7/BatchNorm/moving_meansave_1/RestoreV2_2:22*
use_locking(*
T0*3
_class)
'%loc:@conv_conv7/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_23Assign$conv_conv7/BatchNorm/moving_variancesave_1/RestoreV2_2:23*
use_locking(*
T0*7
_class-
+)loc:@conv_conv7/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:А
╝
save_1/Assign_24Assignconv_conv7/Wsave_1/RestoreV2_2:24*
use_locking(*
T0*
_class
loc:@conv_conv7/W*
validate_shape(*(
_output_shapes
:АА
У
save_1/Assign_25Assign>embedding_attention_decoder/attention_decoder/Attention_0/biassave_1/RestoreV2_2:25*
use_locking(*
T0*Q
_classG
ECloc:@embedding_attention_decoder/attention_decoder/Attention_0/bias*
validate_shape(*
_output_shapes	
:А
Ь
save_1/Assign_26Assign@embedding_attention_decoder/attention_decoder/Attention_0/kernelsave_1/RestoreV2_2:26*
use_locking(*
T0*S
_classI
GEloc:@embedding_attention_decoder/attention_decoder/Attention_0/kernel*
validate_shape(* 
_output_shapes
:
АА
д
save_1/Assign_27AssignGembedding_attention_decoder/attention_decoder/AttnOutputProjection/biassave_1/RestoreV2_2:27*
use_locking(*
T0*Z
_classP
NLloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias*
validate_shape(*
_output_shapes
:b
н
save_1/Assign_28AssignIembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernelsave_1/RestoreV2_2:28*
use_locking(*
T0*\
_classR
PNloc:@embedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel*
validate_shape(*
_output_shapes
:	Аb
Б
save_1/Assign_29Assign5embedding_attention_decoder/attention_decoder/AttnV_0save_1/RestoreV2_2:29*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnV_0*
validate_shape(*
_output_shapes	
:А
О
save_1/Assign_30Assign5embedding_attention_decoder/attention_decoder/AttnW_0save_1/RestoreV2_2:30*
use_locking(*
T0*H
_class>
<:loc:@embedding_attention_decoder/attention_decoder/AttnW_0*
validate_shape(*(
_output_shapes
:АА
√
save_1/Assign_31Assign2embedding_attention_decoder/attention_decoder/biassave_1/RestoreV2_2:31*
use_locking(*
T0*E
_class;
97loc:@embedding_attention_decoder/attention_decoder/bias*
validate_shape(*
_output_shapes	
:А
Д
save_1/Assign_32Assign4embedding_attention_decoder/attention_decoder/kernelsave_1/RestoreV2_2:32*
use_locking(*
T0*G
_class=
;9loc:@embedding_attention_decoder/attention_decoder/kernel*
validate_shape(* 
_output_shapes
:
КА
╟
save_1/Assign_33AssignXembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_1/RestoreV2_2:33*
use_locking(*
T0*k
_classa
_]loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
╨
save_1/Assign_34AssignZembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_1/RestoreV2_2:34*
use_locking(*
T0*m
_classc
a_loc:@embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
┼
save_1/restore_shard_2NoOp^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9:^save_1/MutableHashTable_table_restore/LookupTableImportV2
6
save_1/restore_all/NoOpNoOp^save_1/restore_shard
:
save_1/restore_all/NoOp_1NoOp^save_1/restore_shard_1
:
save_1/restore_all/NoOp_2NoOp^save_1/restore_shard_2
l
save_1/restore_allNoOp^save_1/restore_all/NoOp^save_1/restore_all/NoOp_1^save_1/restore_all/NoOp_2 "ЖB
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"─7
	variables╢7│7
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
g
conv_conv1/W:0conv_conv1/W/Assignconv_conv1/W/read:02)conv_conv1/W/Initializer/random_uniform:08
g
conv_conv2/W:0conv_conv2/W/Assignconv_conv2/W/read:02)conv_conv2/W/Initializer/random_uniform:08
g
conv_conv3/W:0conv_conv3/W/Assignconv_conv3/W/read:02)conv_conv3/W/Initializer/random_uniform:08
Х
conv_conv3/BatchNorm/gamma:0!conv_conv3/BatchNorm/gamma/Assign!conv_conv3/BatchNorm/gamma/read:02-conv_conv3/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv3/BatchNorm/beta:0 conv_conv3/BatchNorm/beta/Assign conv_conv3/BatchNorm/beta/read:02-conv_conv3/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv3/BatchNorm/moving_mean:0'conv_conv3/BatchNorm/moving_mean/Assign'conv_conv3/BatchNorm/moving_mean/read:024conv_conv3/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv3/BatchNorm/moving_variance:0+conv_conv3/BatchNorm/moving_variance/Assign+conv_conv3/BatchNorm/moving_variance/read:027conv_conv3/BatchNorm/moving_variance/Initializer/ones:0@H
g
conv_conv4/W:0conv_conv4/W/Assignconv_conv4/W/read:02)conv_conv4/W/Initializer/random_uniform:08
g
conv_conv5/W:0conv_conv5/W/Assignconv_conv5/W/read:02)conv_conv5/W/Initializer/random_uniform:08
Х
conv_conv5/BatchNorm/gamma:0!conv_conv5/BatchNorm/gamma/Assign!conv_conv5/BatchNorm/gamma/read:02-conv_conv5/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv5/BatchNorm/beta:0 conv_conv5/BatchNorm/beta/Assign conv_conv5/BatchNorm/beta/read:02-conv_conv5/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv5/BatchNorm/moving_mean:0'conv_conv5/BatchNorm/moving_mean/Assign'conv_conv5/BatchNorm/moving_mean/read:024conv_conv5/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv5/BatchNorm/moving_variance:0+conv_conv5/BatchNorm/moving_variance/Assign+conv_conv5/BatchNorm/moving_variance/read:027conv_conv5/BatchNorm/moving_variance/Initializer/ones:0@H
g
conv_conv6/W:0conv_conv6/W/Assignconv_conv6/W/read:02)conv_conv6/W/Initializer/random_uniform:08
g
conv_conv7/W:0conv_conv7/W/Assignconv_conv7/W/read:02)conv_conv7/W/Initializer/random_uniform:08
Х
conv_conv7/BatchNorm/gamma:0!conv_conv7/BatchNorm/gamma/Assign!conv_conv7/BatchNorm/gamma/read:02-conv_conv7/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv7/BatchNorm/beta:0 conv_conv7/BatchNorm/beta/Assign conv_conv7/BatchNorm/beta/read:02-conv_conv7/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv7/BatchNorm/moving_mean:0'conv_conv7/BatchNorm/moving_mean/Assign'conv_conv7/BatchNorm/moving_mean/read:024conv_conv7/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv7/BatchNorm/moving_variance:0+conv_conv7/BatchNorm/moving_variance/Assign+conv_conv7/BatchNorm/moving_variance/read:027conv_conv7/BatchNorm/moving_variance/Initializer/ones:0@H
у
-bidirectional_rnn/fw/basic_lstm_cell/kernel:02bidirectional_rnn/fw/basic_lstm_cell/kernel/Assign2bidirectional_rnn/fw/basic_lstm_cell/kernel/read:02Hbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform:08
╥
+bidirectional_rnn/fw/basic_lstm_cell/bias:00bidirectional_rnn/fw/basic_lstm_cell/bias/Assign0bidirectional_rnn/fw/basic_lstm_cell/bias/read:02=bidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros:08
у
-bidirectional_rnn/bw/basic_lstm_cell/kernel:02bidirectional_rnn/bw/basic_lstm_cell/kernel/Assign2bidirectional_rnn/bw/basic_lstm_cell/kernel/read:02Hbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform:08
╥
+bidirectional_rnn/bw/basic_lstm_cell/bias:00bidirectional_rnn/bw/basic_lstm_cell/bias/Assign0bidirectional_rnn/bw/basic_lstm_cell/bias/read:02=bidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros:08
╦
'embedding_attention_decoder/embedding:0,embedding_attention_decoder/embedding/Assign,embedding_attention_decoder/embedding/read:02Bembedding_attention_decoder/embedding/Initializer/random_uniform:08
Л
7embedding_attention_decoder/attention_decoder/AttnW_0:0<embedding_attention_decoder/attention_decoder/AttnW_0/Assign<embedding_attention_decoder/attention_decoder/AttnW_0/read:02Rembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform:08
Л
7embedding_attention_decoder/attention_decoder/AttnV_0:0<embedding_attention_decoder/attention_decoder/AttnV_0/Assign<embedding_attention_decoder/attention_decoder/AttnV_0/read:02Rembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform:08
З
6embedding_attention_decoder/attention_decoder/kernel:0;embedding_attention_decoder/attention_decoder/kernel/Assign;embedding_attention_decoder/attention_decoder/kernel/read:02Qembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform:08
Ў
4embedding_attention_decoder/attention_decoder/bias:09embedding_attention_decoder/attention_decoder/bias/Assign9embedding_attention_decoder/attention_decoder/bias/read:02Fembedding_attention_decoder/attention_decoder/bias/Initializer/Const:08
Я
\embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0aembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assignaembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02wembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:08
О
Zembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02lembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:08
╖
Bembedding_attention_decoder/attention_decoder/Attention_0/kernel:0Gembedding_attention_decoder/attention_decoder/Attention_0/kernel/AssignGembedding_attention_decoder/attention_decoder/Attention_0/kernel/read:02]embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform:08
ж
@embedding_attention_decoder/attention_decoder/Attention_0/bias:0Eembedding_attention_decoder/attention_decoder/Attention_0/bias/AssignEembedding_attention_decoder/attention_decoder/Attention_0/bias/read:02Rembedding_attention_decoder/attention_decoder/Attention_0/bias/Initializer/Const:08
█
Kembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel:0Pembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/AssignPembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read:02fembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform:08
╩
Iembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias:0Nembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/AssignNembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read:02[embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/Initializer/Const:08"√
cond_contextъч
Й
cond/cond_textcond/pred_id:0cond/switch_t:0 *╙
cond/ExpandDims/Switch:1
cond/ExpandDims/dim:0
cond/ExpandDims:0
cond/pred_id:0
cond/switch_t:0
input_image_as_bytes:0 
cond/pred_id:0cond/pred_id:02
input_image_as_bytes:0cond/ExpandDims/Switch:1
▐
cond/cond_text_1cond/pred_id:0cond/switch_f:0*и
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
input_image_as_bytes:0 
cond/pred_id:0cond/pred_id:0)
input_image_as_bytes:0cond/Switch_1:0
Щ
cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 *▌
cond_1/pred_id:0
cond_1/strided_slice/Switch:1
cond_1/strided_slice/stack:0
cond_1/strided_slice/stack_1:0
cond_1/strided_slice/stack_2:0
cond_1/strided_slice:0
cond_1/switch_t:0
,map_1/TensorArrayStack/TensorArrayGatherV3:0$
cond_1/pred_id:0cond_1/pred_id:0M
,map_1/TensorArrayStack/TensorArrayGatherV3:0cond_1/strided_slice/Switch:1
Ю
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*т
cond_1/Switch_1:0
cond_1/Switch_1:1
cond_1/pred_id:0
cond_1/switch_f:0
,map_1/TensorArrayStack/TensorArrayGatherV3:0$
cond_1/pred_id:0cond_1/pred_id:0A
,map_1/TensorArrayStack/TensorArrayGatherV3:0cond_1/Switch_1:0
Щ
cond_2/cond_textcond_2/pred_id:0cond_2/switch_t:0 *▌
cond_2/pred_id:0
cond_2/strided_slice/Switch:1
cond_2/strided_slice/stack:0
cond_2/strided_slice/stack_1:0
cond_2/strided_slice/stack_2:0
cond_2/strided_slice:0
cond_2/switch_t:0
,map_2/TensorArrayStack/TensorArrayGatherV3:0$
cond_2/pred_id:0cond_2/pred_id:0M
,map_2/TensorArrayStack/TensorArrayGatherV3:0cond_2/strided_slice/Switch:1
Ю
cond_2/cond_text_1cond_2/pred_id:0cond_2/switch_f:0*т
cond_2/Switch_1:0
cond_2/Switch_1:1
cond_2/pred_id:0
cond_2/switch_f:0
,map_2/TensorArrayStack/TensorArrayGatherV3:0$
cond_2/pred_id:0cond_2/pred_id:0A
,map_2/TensorArrayStack/TensorArrayGatherV3:0cond_2/Switch_1:0"г┐
while_contextР┐М┐
нQ
map/while/while_context
*map/while/LoopCond:02map/while/Merge:0:map/while/Identity:0Bmap/while/Exit:0Bmap/while/Exit_1:0Bmap/while/Exit_2:0JА1
Const:0
	Const_1:0
map/TensorArray:0
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map/TensorArray_1:0
map/strided_slice:0
map/while/Ceil:0
map/while/Ceil_1:0
map/while/DecodePng:0
map/while/Enter:0
map/while/Enter_1:0
map/while/Enter_2:0
map/while/Exit:0
map/while/Exit_1:0
map/while/Exit_2:0
map/while/GreaterEqual/x:0
map/while/GreaterEqual:0
map/while/Identity:0
map/while/Identity_1:0
map/while/Identity_2:0
map/while/Less/Enter:0
map/while/Less:0
map/while/Less_1:0
map/while/LogicalAnd:0
map/while/LoopCond:0
map/while/Merge:0
map/while/Merge:1
map/while/Merge_1:0
map/while/Merge_1:1
map/while/Merge_2:0
map/while/Merge_2:1
map/while/NextIteration:0
map/while/NextIteration_1:0
map/while/NextIteration_2:0
map/while/Shape:0
map/while/Switch:0
map/while/Switch:1
map/while/Switch_1:0
map/while/Switch_1:1
map/while/Switch_2:0
map/while/Switch_2:1
#map/while/TensorArrayReadV3/Enter:0
%map/while/TensorArrayReadV3/Enter_1:0
map/while/TensorArrayReadV3:0
5map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/map/while/TensorArrayWrite/TensorArrayWriteV3:0
map/while/ToInt32:0
map/while/ToInt32_1:0
map/while/add/y:0
map/while/add:0
map/while/add_1/y:0
map/while/add_1:0
 map/while/cond/LessEqual/Enter:0
!map/while/cond/LessEqual/Switch:1
map/while/cond/LessEqual:0
map/while/cond/Merge:0
map/while/cond/Merge:1
map/while/cond/Switch:0
map/while/cond/Switch:1
map/while/cond/cond/Merge:0
map/while/cond/cond/Merge:1
map/while/cond/cond/Switch:0
map/while/cond/cond/Switch:1
$map/while/cond/cond/ToFloat/Switch:1
&map/while/cond/cond/ToFloat/Switch_1:1
map/while/cond/cond/ToFloat:0
map/while/cond/cond/pred_id:0
.map/while/cond/cond/resize/ExpandDims/Switch:0
+map/while/cond/cond/resize/ExpandDims/dim:0
'map/while/cond/cond/resize/ExpandDims:0
*map/while/cond/cond/resize/ResizeBicubic:0
$map/while/cond/cond/resize/Squeeze:0
(map/while/cond/cond/resize/size/Switch:0
*map/while/cond/cond/resize/size/Switch_1:1
*map/while/cond/cond/resize/size/Switch_2:0
!map/while/cond/cond/resize/size:0
map/while/cond/cond/switch_f:0
map/while/cond/cond/switch_t:0
map/while/cond/pred_id:0
)map/while/cond/resize/ExpandDims/Switch:0
&map/while/cond/resize/ExpandDims/dim:0
"map/while/cond/resize/ExpandDims:0
%map/while/cond/resize/ResizeBicubic:0
map/while/cond/resize/Squeeze:0
map/while/cond/resize/size/1:0
#map/while/cond/resize/size/Switch:0
map/while/cond/resize/size:0
%map/while/cond/strided_slice/Switch:1
$map/while/cond/strided_slice/stack:0
&map/while/cond/strided_slice/stack_1:0
&map/while/cond/strided_slice/stack_2:0
map/while/cond/strided_slice:0
map/while/cond/switch_f:0
map/while/cond/switch_t:0
map/while/mul/Enter:0
map/while/mul:0
map/while/mul_1:0
4map/while/pad_to_bounding_box/Assert/Assert/data_0:0
,map/while/pad_to_bounding_box/Assert/Const:0
6map/while/pad_to_bounding_box/Assert_1/Assert/data_0:0
.map/while/pad_to_bounding_box/Assert_1/Const:0
.map/while/pad_to_bounding_box/ExpandDims/dim:0
*map/while/pad_to_bounding_box/ExpandDims:0
.map/while/pad_to_bounding_box/GreaterEqual/y:0
,map/while/pad_to_bounding_box/GreaterEqual:0
0map/while/pad_to_bounding_box/GreaterEqual_1/y:0
.map/while/pad_to_bounding_box/GreaterEqual_1:0
#map/while/pad_to_bounding_box/Pad:0
$map/while/pad_to_bounding_box/Rank:0
-map/while/pad_to_bounding_box/Reshape/shape:0
'map/while/pad_to_bounding_box/Reshape:0
%map/while/pad_to_bounding_box/Shape:0
'map/while/pad_to_bounding_box/Shape_1:0
'map/while/pad_to_bounding_box/Squeeze:0
8map/while/pad_to_bounding_box/assert_greater_equal/All:0
Imap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_0:0
Imap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_1:0
Imap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_2:0
Imap/while/pad_to_bounding_box/assert_greater_equal/Assert/Assert/data_4:0
Amap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const:0
Cmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_1:0
Cmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_2:0
Cmap/while/pad_to_bounding_box/assert_greater_equal/Assert/Const_3:0
:map/while/pad_to_bounding_box/assert_greater_equal/Const:0
Amap/while/pad_to_bounding_box/assert_greater_equal/GreaterEqual:0
6map/while/pad_to_bounding_box/assert_greater_equal/y:0
5map/while/pad_to_bounding_box/assert_positive/Const:0
?map/while/pad_to_bounding_box/assert_positive/assert_less/All:0
Pmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/Assert/data_0:0
Hmap/while/pad_to_bounding_box/assert_positive/assert_less/Assert/Const:0
Amap/while/pad_to_bounding_box/assert_positive/assert_less/Const:0
@map/while/pad_to_bounding_box/assert_positive/assert_less/Less:0
2map/while/pad_to_bounding_box/control_dependency:0
'map/while/pad_to_bounding_box/stack/0:0
'map/while/pad_to_bounding_box/stack/1:0
'map/while/pad_to_bounding_box/stack/2:0
'map/while/pad_to_bounding_box/stack/4:0
'map/while/pad_to_bounding_box/stack/6:0
'map/while/pad_to_bounding_box/stack/7:0
%map/while/pad_to_bounding_box/stack:0
%map/while/pad_to_bounding_box/sub/x:0
#map/while/pad_to_bounding_box/sub:0
'map/while/pad_to_bounding_box/sub_1/y:0
%map/while/pad_to_bounding_box/sub_1:0
%map/while/pad_to_bounding_box/sub_2:0
'map/while/pad_to_bounding_box/unstack:0
'map/while/pad_to_bounding_box/unstack:1
'map/while/pad_to_bounding_box/unstack:2
'map/while/pad_to_bounding_box/unstack:3
map/while/strided_slice/stack:0
!map/while/strided_slice/stack_1:0
!map/while/strided_slice/stack_2:0
map/while/strided_slice:0
!map/while/strided_slice_1/stack:0
#map/while/strided_slice_1/stack_1:0
#map/while/strided_slice_1/stack_2:0
map/while/strided_slice_1:0
map/while/truediv/Cast:0
map/while/truediv/Cast_1:0
map/while/truediv:0
map/while/truediv_1/Cast:0
map/while/truediv_1/Cast_1:0
map/while/truediv_1/x:0
map/while/truediv_1:0-
map/strided_slice:0map/while/Less/Enter:08
map/TensorArray:0#map/while/TensorArrayReadV3/Enter:0i
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%map/while/TensorArrayReadV3/Enter_1:0"
	Const_1:0map/while/mul/Enter:0+
Const:0 map/while/cond/LessEqual/Enter:0L
map/TensorArray_1:05map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rmap/while/Enter:0Rmap/while/Enter_1:0Rmap/while/Enter_2:0Zmap/strided_slice:0bи
е
map/while/cond/cond_textmap/while/cond/pred_id:0map/while/cond/switch_t:0 *┬
Const:0
map/while/DecodePng:0
map/while/Shape:0
map/while/ToInt32:0
 map/while/cond/LessEqual/Enter:0
!map/while/cond/LessEqual/Switch:1
map/while/cond/LessEqual:0
map/while/cond/cond/Merge:0
map/while/cond/cond/Merge:1
map/while/cond/cond/Switch:0
map/while/cond/cond/Switch:1
$map/while/cond/cond/ToFloat/Switch:1
&map/while/cond/cond/ToFloat/Switch_1:1
map/while/cond/cond/ToFloat:0
map/while/cond/cond/pred_id:0
.map/while/cond/cond/resize/ExpandDims/Switch:0
+map/while/cond/cond/resize/ExpandDims/dim:0
'map/while/cond/cond/resize/ExpandDims:0
*map/while/cond/cond/resize/ResizeBicubic:0
$map/while/cond/cond/resize/Squeeze:0
(map/while/cond/cond/resize/size/Switch:0
*map/while/cond/cond/resize/size/Switch_1:1
*map/while/cond/cond/resize/size/Switch_2:0
!map/while/cond/cond/resize/size:0
map/while/cond/cond/switch_f:0
map/while/cond/cond/switch_t:0
map/while/cond/pred_id:0
%map/while/cond/strided_slice/Switch:1
$map/while/cond/strided_slice/stack:0
&map/while/cond/strided_slice/stack_1:0
&map/while/cond/strided_slice/stack_2:0
map/while/cond/strided_slice:0
map/while/cond/switch_t:04
map/while/cond/pred_id:0map/while/cond/pred_id:0:
map/while/Shape:0%map/while/cond/strided_slice/Switch:1D
 map/while/cond/LessEqual/Enter:0 map/while/cond/LessEqual/Enter:0,
Const:0!map/while/cond/LessEqual/Switch:1=
map/while/DecodePng:0$map/while/cond/cond/ToFloat/Switch:1A
map/while/ToInt32:0*map/while/cond/cond/resize/size/Switch_1:12°
ї
map/while/cond/cond/cond_textmap/while/cond/cond/pred_id:0map/while/cond/cond/switch_t:0 *Т
map/while/DecodePng:0
$map/while/cond/cond/ToFloat/Switch:1
&map/while/cond/cond/ToFloat/Switch_1:1
map/while/cond/cond/ToFloat:0
map/while/cond/cond/pred_id:0
map/while/cond/cond/switch_t:0>
map/while/cond/cond/pred_id:0map/while/cond/cond/pred_id:0L
$map/while/cond/cond/ToFloat/Switch:1$map/while/cond/cond/ToFloat/Switch:1?
map/while/DecodePng:0&map/while/cond/cond/ToFloat/Switch_1:12С	
О	
map/while/cond/cond/cond_text_1map/while/cond/cond/pred_id:0map/while/cond/cond/switch_f:0*л
Const:0
map/while/DecodePng:0
map/while/ToInt32:0
!map/while/cond/LessEqual/Switch:1
$map/while/cond/cond/ToFloat/Switch:1
map/while/cond/cond/pred_id:0
.map/while/cond/cond/resize/ExpandDims/Switch:0
+map/while/cond/cond/resize/ExpandDims/dim:0
'map/while/cond/cond/resize/ExpandDims:0
*map/while/cond/cond/resize/ResizeBicubic:0
$map/while/cond/cond/resize/Squeeze:0
(map/while/cond/cond/resize/size/Switch:0
*map/while/cond/cond/resize/size/Switch_1:1
*map/while/cond/cond/resize/size/Switch_2:0
!map/while/cond/cond/resize/size:0
map/while/cond/cond/switch_f:0>
map/while/cond/cond/pred_id:0map/while/cond/cond/pred_id:0L
$map/while/cond/cond/ToFloat/Switch:1$map/while/cond/cond/ToFloat/Switch:1G
map/while/DecodePng:0.map/while/cond/cond/resize/ExpandDims/Switch:0F
!map/while/cond/LessEqual/Switch:1!map/while/cond/LessEqual/Switch:13
Const:0(map/while/cond/cond/resize/size/Switch:0X
*map/while/cond/cond/resize/size/Switch_1:1*map/while/cond/cond/resize/size/Switch_1:1A
map/while/ToInt32:0*map/while/cond/cond/resize/size/Switch_2:0bФ
С
map/while/cond/cond_text_1map/while/cond/pred_id:0map/while/cond/switch_f:0*╜
map/while/DecodePng:0
map/while/ToInt32_1:0
map/while/cond/pred_id:0
)map/while/cond/resize/ExpandDims/Switch:0
&map/while/cond/resize/ExpandDims/dim:0
"map/while/cond/resize/ExpandDims:0
%map/while/cond/resize/ResizeBicubic:0
map/while/cond/resize/Squeeze:0
map/while/cond/resize/size/1:0
#map/while/cond/resize/size/Switch:0
map/while/cond/resize/size:0
map/while/cond/switch_f:04
map/while/cond/pred_id:0map/while/cond/pred_id:0B
map/while/DecodePng:0)map/while/cond/resize/ExpandDims/Switch:0<
map/while/ToInt32_1:0#map/while/cond/resize/size/Switch:0
╘G
map_1/while/while_context
*map_1/while/LoopCond:02map_1/while/Merge:0:map_1/while/Identity:0Bmap_1/while/Exit:0Bmap_1/while/Exit_1:0Bmap_1/while/Exit_2:0JЭ
	Const_2:0
MutableHashTable:0
map_1/TensorArray:0
Bmap_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map_1/TensorArray_1:0
map_1/strided_slice:0
map_1/while/Enter:0
map_1/while/Enter_1:0
map_1/while/Enter_2:0
map_1/while/Exit:0
map_1/while/Exit_1:0
map_1/while/Exit_2:0
map_1/while/Identity:0
map_1/while/Identity_1:0
map_1/while/Identity_2:0
map_1/while/Less/Enter:0
map_1/while/Less:0
map_1/while/Less_1:0
map_1/while/LogicalAnd:0
map_1/while/LoopCond:0
map_1/while/Merge:0
map_1/while/Merge:1
map_1/while/Merge_1:0
map_1/while/Merge_1:1
map_1/while/Merge_2:0
map_1/while/Merge_2:1
map_1/while/NextIteration:0
map_1/while/NextIteration_1:0
map_1/while/NextIteration_2:0
map_1/while/Switch:0
map_1/while/Switch:1
map_1/while/Switch_1:0
map_1/while/Switch_1:1
map_1/while/Switch_2:0
map_1/while/Switch_2:1
%map_1/while/TensorArrayReadV3/Enter:0
'map_1/while/TensorArrayReadV3/Enter_1:0
map_1/while/TensorArrayReadV3:0
7map_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
1map_1/while/TensorArrayWrite/TensorArrayWriteV3:0
map_1/while/add/y:0
map_1/while/add:0
map_1/while/add_1/y:0
map_1/while/add_1:0
$map_1/while/foldr/TensorArray/size:0
map_1/while/foldr/TensorArray:0
map_1/while/foldr/TensorArray:1
,map_1/while/foldr/TensorArrayUnstack/Shape:0
Nmap_1/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
2map_1/while/foldr/TensorArrayUnstack/range/delta:0
2map_1/while/foldr/TensorArrayUnstack/range/start:0
,map_1/while/foldr/TensorArrayUnstack/range:0
:map_1/while/foldr/TensorArrayUnstack/strided_slice/stack:0
<map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_1:0
<map_1/while/foldr/TensorArrayUnstack/strided_slice/stack_2:0
4map_1/while/foldr/TensorArrayUnstack/strided_slice:0
map_1/while/foldr/while/Const:0
!map_1/while/foldr/while/Const_1:0
map_1/while/foldr/while/Exit:0
 map_1/while/foldr/while/Exit_1:0
 map_1/while/foldr/while/Exit_2:0
$map_1/while/foldr/while/cond/Const:0
Ymap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter:0
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_2:0
Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2:0
Smap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2:0
)map_1/while/foldr/while/cond/add/Switch:0
"map_1/while/foldr/while/cond/add:0
+map_1/while/foldr/while/iteration_counter:0
,map_1/while/foldr/while/maximum_iterations:01
map_1/strided_slice:0map_1/while/Less/Enter:0<
map_1/TensorArray:0%map_1/while/TensorArrayReadV3/Enter:0m
Bmap_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0'map_1/while/TensorArrayReadV3/Enter_1:0o
MutableHashTable:0Ymap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter:0h
	Const_2:0[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_2:0P
map_1/TensorArray_1:07map_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rmap_1/while/Enter:0Rmap_1/while/Enter_1:0Rmap_1/while/Enter_2:0Zmap_1/strided_slice:0b│,░,
%map_1/while/foldr/while/while_context
*"map_1/while/foldr/while/LoopCond:02map_1/while/foldr/while/Merge:0:"map_1/while/foldr/while/Identity:0Bmap_1/while/foldr/while/Exit:0B map_1/while/foldr/while/Exit_1:0B map_1/while/foldr/while/Exit_2:0JМ
	Const_2:0
MutableHashTable:0
map_1/while/foldr/TensorArray:0
Nmap_1/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map_1/while/foldr/while/Enter:0
!map_1/while/foldr/while/Enter_1:0
!map_1/while/foldr/while/Enter_2:0
!map_1/while/foldr/while/Equal/y:0
map_1/while/foldr/while/Equal:0
map_1/while/foldr/while/Exit:0
 map_1/while/foldr/while/Exit_1:0
 map_1/while/foldr/while/Exit_2:0
#map_1/while/foldr/while/Greater/y:0
!map_1/while/foldr/while/Greater:0
"map_1/while/foldr/while/Identity:0
$map_1/while/foldr/while/Identity_1:0
$map_1/while/foldr/while/Identity_2:0
$map_1/while/foldr/while/Less/Enter:0
map_1/while/foldr/while/Less:0
$map_1/while/foldr/while/LogicalAnd:0
"map_1/while/foldr/while/LoopCond:0
map_1/while/foldr/while/Merge:0
map_1/while/foldr/while/Merge:1
!map_1/while/foldr/while/Merge_1:0
!map_1/while/foldr/while/Merge_1:1
!map_1/while/foldr/while/Merge_2:0
!map_1/while/foldr/while/Merge_2:1
'map_1/while/foldr/while/NextIteration:0
)map_1/while/foldr/while/NextIteration_1:0
)map_1/while/foldr/while/NextIteration_2:0
 map_1/while/foldr/while/Switch:0
 map_1/while/foldr/while/Switch:1
"map_1/while/foldr/while/Switch_1:0
"map_1/while/foldr/while/Switch_1:1
"map_1/while/foldr/while/Switch_2:0
"map_1/while/foldr/while/Switch_2:1
1map_1/while/foldr/while/TensorArrayReadV3/Enter:0
3map_1/while/foldr/while/TensorArrayReadV3/Enter_1:0
+map_1/while/foldr/while/TensorArrayReadV3:0
map_1/while/foldr/while/add/y:0
map_1/while/foldr/while/add:0
$map_1/while/foldr/while/cond/Const:0
$map_1/while/foldr/while/cond/Merge:0
$map_1/while/foldr/while/cond/Merge:1
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1:0
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3:0
Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2:0
Smap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2:0
%map_1/while/foldr/while/cond/Switch:0
%map_1/while/foldr/while/cond/Switch:1
)map_1/while/foldr/while/cond/add/Switch:0
"map_1/while/foldr/while/cond/add:0
&map_1/while/foldr/while/cond/pred_id:0
'map_1/while/foldr/while/cond/switch_f:0
'map_1/while/foldr/while/cond/switch_t:0
,map_1/while/foldr/while/maximum_iterations:0
map_1/while/foldr/while/sub/y:0
map_1/while/foldr/while/sub:0T
,map_1/while/foldr/while/maximum_iterations:0$map_1/while/foldr/while/Less/Enter:0T
map_1/while/foldr/TensorArray:01map_1/while/foldr/while/TensorArrayReadV3/Enter:0Е
Nmap_1/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03map_1/while/foldr/while/TensorArrayReadV3/Enter_1:0q
MutableHashTable:0[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1:0h
	Const_2:0[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3:0Rmap_1/while/foldr/while/Enter:0R!map_1/while/foldr/while/Enter_1:0R!map_1/while/foldr/while/Enter_2:0Z,map_1/while/foldr/while/maximum_iterations:0b╩
╟
&map_1/while/foldr/while/cond/cond_text&map_1/while/foldr/while/cond/pred_id:0'map_1/while/foldr/while/cond/switch_t:0 *╔
$map_1/while/foldr/while/cond/Const:0
&map_1/while/foldr/while/cond/pred_id:0
'map_1/while/foldr/while/cond/switch_t:0P
&map_1/while/foldr/while/cond/pred_id:0&map_1/while/foldr/while/cond/pred_id:0b─
┴
(map_1/while/foldr/while/cond/cond_text_1&map_1/while/foldr/while/cond/pred_id:0'map_1/while/foldr/while/cond/switch_f:0*├
	Const_2:0
MutableHashTable:0
$map_1/while/foldr/while/Identity_2:0
+map_1/while/foldr/while/TensorArrayReadV3:0
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1:0
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3:0
Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1:0
\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2:0
Smap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2:0
)map_1/while/foldr/while/cond/add/Switch:0
"map_1/while/foldr/while/cond/add:0
&map_1/while/foldr/while/cond/pred_id:0
'map_1/while/foldr/while/cond/switch_f:0P
&map_1/while/foldr/while/cond/pred_id:0&map_1/while/foldr/while/cond/pred_id:0║
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1:0[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_1:0p
MutableHashTable:0Zmap_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch:0Л
+map_1/while/foldr/while/TensorArrayReadV3:0\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_1:0║
[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3:0[map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Enter_3:0i
	Const_2:0\map_1/while/foldr/while/cond/MutableHashTable_lookup_table_find/LookupTableFindV2/Switch_2:0Q
$map_1/while/foldr/while/Identity_2:0)map_1/while/foldr/while/cond/add/Switch:0
В&
map_2/while/while_context
*map_2/while/LoopCond:02map_2/while/Merge:0:map_2/while/Identity:0Bmap_2/while/Exit:0Bmap_2/while/Exit_1:0Bmap_2/while/Exit_2:0JР
map_2/TensorArray:0
Bmap_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map_2/TensorArray_1:0
map_2/strided_slice:0
map_2/while/Cast/x:0
map_2/while/Cast:0
map_2/while/Enter:0
map_2/while/Enter_1:0
map_2/while/Enter_2:0
map_2/while/Exit:0
map_2/while/Exit_1:0
map_2/while/Exit_2:0
map_2/while/Identity:0
map_2/while/Identity_1:0
map_2/while/Identity_2:0
map_2/while/Less/Enter:0
map_2/while/Less:0
map_2/while/Less_1:0
map_2/while/LogicalAnd:0
map_2/while/LoopCond:0
map_2/while/Merge:0
map_2/while/Merge:1
map_2/while/Merge_1:0
map_2/while/Merge_1:1
map_2/while/Merge_2:0
map_2/while/Merge_2:1
map_2/while/NextIteration:0
map_2/while/NextIteration_1:0
map_2/while/NextIteration_2:0
map_2/while/Switch:0
map_2/while/Switch:1
map_2/while/Switch_1:0
map_2/while/Switch_1:1
map_2/while/Switch_2:0
map_2/while/Switch_2:1
%map_2/while/TensorArrayReadV3/Enter:0
'map_2/while/TensorArrayReadV3/Enter_1:0
map_2/while/TensorArrayReadV3:0
7map_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
1map_2/while/TensorArrayWrite/TensorArrayWriteV3:0
map_2/while/add/y:0
map_2/while/add:0
map_2/while/add_1/y:0
map_2/while/add_1:0
$map_2/while/foldr/TensorArray/size:0
map_2/while/foldr/TensorArray:0
map_2/while/foldr/TensorArray:1
,map_2/while/foldr/TensorArrayUnstack/Shape:0
Nmap_2/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
2map_2/while/foldr/TensorArrayUnstack/range/delta:0
2map_2/while/foldr/TensorArrayUnstack/range/start:0
,map_2/while/foldr/TensorArrayUnstack/range:0
:map_2/while/foldr/TensorArrayUnstack/strided_slice/stack:0
<map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_1:0
<map_2/while/foldr/TensorArrayUnstack/strided_slice/stack_2:0
4map_2/while/foldr/TensorArrayUnstack/strided_slice:0
map_2/while/foldr/while/Const:0
map_2/while/foldr/while/Exit:0
 map_2/while/foldr/while/Exit_1:0
 map_2/while/foldr/while/Exit_2:0
+map_2/while/foldr/while/iteration_counter:0
,map_2/while/foldr/while/maximum_iterations:01
map_2/strided_slice:0map_2/while/Less/Enter:0<
map_2/TensorArray:0%map_2/while/TensorArrayReadV3/Enter:0m
Bmap_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0'map_2/while/TensorArrayReadV3/Enter_1:0P
map_2/TensorArray_1:07map_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rmap_2/while/Enter:0Rmap_2/while/Enter_1:0Rmap_2/while/Enter_2:0Zmap_2/strided_slice:0bюы
%map_2/while/foldr/while/while_context
*"map_2/while/foldr/while/LoopCond:02map_2/while/foldr/while/Merge:0:"map_2/while/foldr/while/Identity:0Bmap_2/while/foldr/while/Exit:0B map_2/while/foldr/while/Exit_1:0B map_2/while/foldr/while/Exit_2:0J█
map_2/while/foldr/TensorArray:0
Nmap_2/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map_2/while/foldr/while/Cast:0
map_2/while/foldr/while/Enter:0
!map_2/while/foldr/while/Enter_1:0
!map_2/while/foldr/while/Enter_2:0
map_2/while/foldr/while/Exit:0
 map_2/while/foldr/while/Exit_1:0
 map_2/while/foldr/while/Exit_2:0
#map_2/while/foldr/while/Greater/y:0
!map_2/while/foldr/while/Greater:0
"map_2/while/foldr/while/Identity:0
$map_2/while/foldr/while/Identity_1:0
$map_2/while/foldr/while/Identity_2:0
$map_2/while/foldr/while/Less/Enter:0
map_2/while/foldr/while/Less:0
$map_2/while/foldr/while/LogicalAnd:0
"map_2/while/foldr/while/LoopCond:0
map_2/while/foldr/while/Merge:0
map_2/while/foldr/while/Merge:1
!map_2/while/foldr/while/Merge_1:0
!map_2/while/foldr/while/Merge_1:1
!map_2/while/foldr/while/Merge_2:0
!map_2/while/foldr/while/Merge_2:1
map_2/while/foldr/while/Mul:0
'map_2/while/foldr/while/NextIteration:0
)map_2/while/foldr/while/NextIteration_1:0
)map_2/while/foldr/while/NextIteration_2:0
 map_2/while/foldr/while/Switch:0
 map_2/while/foldr/while/Switch:1
"map_2/while/foldr/while/Switch_1:0
"map_2/while/foldr/while/Switch_1:1
"map_2/while/foldr/while/Switch_2:0
"map_2/while/foldr/while/Switch_2:1
1map_2/while/foldr/while/TensorArrayReadV3/Enter:0
3map_2/while/foldr/while/TensorArrayReadV3/Enter_1:0
+map_2/while/foldr/while/TensorArrayReadV3:0
map_2/while/foldr/while/add/y:0
map_2/while/foldr/while/add:0
,map_2/while/foldr/while/maximum_iterations:0
map_2/while/foldr/while/sub/y:0
map_2/while/foldr/while/sub:0T
,map_2/while/foldr/while/maximum_iterations:0$map_2/while/foldr/while/Less/Enter:0T
map_2/while/foldr/TensorArray:01map_2/while/foldr/while/TensorArrayReadV3/Enter:0Е
Nmap_2/while/foldr/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03map_2/while/foldr/while/TensorArrayReadV3/Enter_1:0Rmap_2/while/foldr/while/Enter:0R!map_2/while/foldr/while/Enter_1:0R!map_2/while/foldr/while/Enter_2:0Z,map_2/while/foldr/while/maximum_iterations:0"е.
trainable_variablesН.К.
g
conv_conv1/W:0conv_conv1/W/Assignconv_conv1/W/read:02)conv_conv1/W/Initializer/random_uniform:08
g
conv_conv2/W:0conv_conv2/W/Assignconv_conv2/W/read:02)conv_conv2/W/Initializer/random_uniform:08
g
conv_conv3/W:0conv_conv3/W/Assignconv_conv3/W/read:02)conv_conv3/W/Initializer/random_uniform:08
Х
conv_conv3/BatchNorm/gamma:0!conv_conv3/BatchNorm/gamma/Assign!conv_conv3/BatchNorm/gamma/read:02-conv_conv3/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv3/BatchNorm/beta:0 conv_conv3/BatchNorm/beta/Assign conv_conv3/BatchNorm/beta/read:02-conv_conv3/BatchNorm/beta/Initializer/zeros:08
g
conv_conv4/W:0conv_conv4/W/Assignconv_conv4/W/read:02)conv_conv4/W/Initializer/random_uniform:08
g
conv_conv5/W:0conv_conv5/W/Assignconv_conv5/W/read:02)conv_conv5/W/Initializer/random_uniform:08
Х
conv_conv5/BatchNorm/gamma:0!conv_conv5/BatchNorm/gamma/Assign!conv_conv5/BatchNorm/gamma/read:02-conv_conv5/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv5/BatchNorm/beta:0 conv_conv5/BatchNorm/beta/Assign conv_conv5/BatchNorm/beta/read:02-conv_conv5/BatchNorm/beta/Initializer/zeros:08
g
conv_conv6/W:0conv_conv6/W/Assignconv_conv6/W/read:02)conv_conv6/W/Initializer/random_uniform:08
g
conv_conv7/W:0conv_conv7/W/Assignconv_conv7/W/read:02)conv_conv7/W/Initializer/random_uniform:08
Х
conv_conv7/BatchNorm/gamma:0!conv_conv7/BatchNorm/gamma/Assign!conv_conv7/BatchNorm/gamma/read:02-conv_conv7/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv7/BatchNorm/beta:0 conv_conv7/BatchNorm/beta/Assign conv_conv7/BatchNorm/beta/read:02-conv_conv7/BatchNorm/beta/Initializer/zeros:08
у
-bidirectional_rnn/fw/basic_lstm_cell/kernel:02bidirectional_rnn/fw/basic_lstm_cell/kernel/Assign2bidirectional_rnn/fw/basic_lstm_cell/kernel/read:02Hbidirectional_rnn/fw/basic_lstm_cell/kernel/Initializer/random_uniform:08
╥
+bidirectional_rnn/fw/basic_lstm_cell/bias:00bidirectional_rnn/fw/basic_lstm_cell/bias/Assign0bidirectional_rnn/fw/basic_lstm_cell/bias/read:02=bidirectional_rnn/fw/basic_lstm_cell/bias/Initializer/zeros:08
у
-bidirectional_rnn/bw/basic_lstm_cell/kernel:02bidirectional_rnn/bw/basic_lstm_cell/kernel/Assign2bidirectional_rnn/bw/basic_lstm_cell/kernel/read:02Hbidirectional_rnn/bw/basic_lstm_cell/kernel/Initializer/random_uniform:08
╥
+bidirectional_rnn/bw/basic_lstm_cell/bias:00bidirectional_rnn/bw/basic_lstm_cell/bias/Assign0bidirectional_rnn/bw/basic_lstm_cell/bias/read:02=bidirectional_rnn/bw/basic_lstm_cell/bias/Initializer/zeros:08
╦
'embedding_attention_decoder/embedding:0,embedding_attention_decoder/embedding/Assign,embedding_attention_decoder/embedding/read:02Bembedding_attention_decoder/embedding/Initializer/random_uniform:08
Л
7embedding_attention_decoder/attention_decoder/AttnW_0:0<embedding_attention_decoder/attention_decoder/AttnW_0/Assign<embedding_attention_decoder/attention_decoder/AttnW_0/read:02Rembedding_attention_decoder/attention_decoder/AttnW_0/Initializer/random_uniform:08
Л
7embedding_attention_decoder/attention_decoder/AttnV_0:0<embedding_attention_decoder/attention_decoder/AttnV_0/Assign<embedding_attention_decoder/attention_decoder/AttnV_0/read:02Rembedding_attention_decoder/attention_decoder/AttnV_0/Initializer/random_uniform:08
З
6embedding_attention_decoder/attention_decoder/kernel:0;embedding_attention_decoder/attention_decoder/kernel/Assign;embedding_attention_decoder/attention_decoder/kernel/read:02Qembedding_attention_decoder/attention_decoder/kernel/Initializer/random_uniform:08
Ў
4embedding_attention_decoder/attention_decoder/bias:09embedding_attention_decoder/attention_decoder/bias/Assign9embedding_attention_decoder/attention_decoder/bias/read:02Fembedding_attention_decoder/attention_decoder/bias/Initializer/Const:08
Я
\embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0aembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assignaembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02wembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:08
О
Zembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign_embedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02lembedding_attention_decoder/attention_decoder/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:08
╖
Bembedding_attention_decoder/attention_decoder/Attention_0/kernel:0Gembedding_attention_decoder/attention_decoder/Attention_0/kernel/AssignGembedding_attention_decoder/attention_decoder/Attention_0/kernel/read:02]embedding_attention_decoder/attention_decoder/Attention_0/kernel/Initializer/random_uniform:08
ж
@embedding_attention_decoder/attention_decoder/Attention_0/bias:0Eembedding_attention_decoder/attention_decoder/Attention_0/bias/AssignEembedding_attention_decoder/attention_decoder/Attention_0/bias/read:02Rembedding_attention_decoder/attention_decoder/Attention_0/bias/Initializer/Const:08
█
Kembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel:0Pembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/AssignPembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/read:02fembedding_attention_decoder/attention_decoder/AttnOutputProjection/kernel/Initializer/random_uniform:08
╩
Iembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias:0Nembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/AssignNembedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/read:02[embedding_attention_decoder/attention_decoder/AttnOutputProjection/bias/Initializer/Const:08"╤
regularization_losses╖
┤
W/Regularizer/L2Loss:0
W/Regularizer/L2Loss_1:0
W/Regularizer/L2Loss_2:0
W/Regularizer/L2Loss_3:0
W/Regularizer/L2Loss_4:0
W/Regularizer/L2Loss_5:0
W/Regularizer/L2Loss_6:0"¤
model_variablesщц
Х
conv_conv3/BatchNorm/gamma:0!conv_conv3/BatchNorm/gamma/Assign!conv_conv3/BatchNorm/gamma/read:02-conv_conv3/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv3/BatchNorm/beta:0 conv_conv3/BatchNorm/beta/Assign conv_conv3/BatchNorm/beta/read:02-conv_conv3/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv3/BatchNorm/moving_mean:0'conv_conv3/BatchNorm/moving_mean/Assign'conv_conv3/BatchNorm/moving_mean/read:024conv_conv3/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv3/BatchNorm/moving_variance:0+conv_conv3/BatchNorm/moving_variance/Assign+conv_conv3/BatchNorm/moving_variance/read:027conv_conv3/BatchNorm/moving_variance/Initializer/ones:0@H
Х
conv_conv5/BatchNorm/gamma:0!conv_conv5/BatchNorm/gamma/Assign!conv_conv5/BatchNorm/gamma/read:02-conv_conv5/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv5/BatchNorm/beta:0 conv_conv5/BatchNorm/beta/Assign conv_conv5/BatchNorm/beta/read:02-conv_conv5/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv5/BatchNorm/moving_mean:0'conv_conv5/BatchNorm/moving_mean/Assign'conv_conv5/BatchNorm/moving_mean/read:024conv_conv5/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv5/BatchNorm/moving_variance:0+conv_conv5/BatchNorm/moving_variance/Assign+conv_conv5/BatchNorm/moving_variance/read:027conv_conv5/BatchNorm/moving_variance/Initializer/ones:0@H
Х
conv_conv7/BatchNorm/gamma:0!conv_conv7/BatchNorm/gamma/Assign!conv_conv7/BatchNorm/gamma/read:02-conv_conv7/BatchNorm/gamma/Initializer/ones:08
Т
conv_conv7/BatchNorm/beta:0 conv_conv7/BatchNorm/beta/Assign conv_conv7/BatchNorm/beta/read:02-conv_conv7/BatchNorm/beta/Initializer/zeros:08
░
"conv_conv7/BatchNorm/moving_mean:0'conv_conv7/BatchNorm/moving_mean/Assign'conv_conv7/BatchNorm/moving_mean/read:024conv_conv7/BatchNorm/moving_mean/Initializer/zeros:0@H
┐
&conv_conv7/BatchNorm/moving_variance:0+conv_conv7/BatchNorm/moving_variance/Assign+conv_conv7/BatchNorm/moving_variance/read:027conv_conv7/BatchNorm/moving_variance/Initializer/ones:0@H"(
saveable_objects

MutableHashTable*Я
serving_defaultЛ
'
input
input_image_as_bytes:0
output
prediction:0$
probability
probability:0tensorflow/serving/predict