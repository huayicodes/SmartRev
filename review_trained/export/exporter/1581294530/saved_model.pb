Э∙
▐,╢,
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
╔
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0■        "
value_indexint(0■        "+

vocab_sizeint         (0         "
	delimiterstring	И
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
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
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
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
/
Sign
x"T
y"T"
Ttype:

2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.15.22v1.15.2-1-gb8c9d628ещ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
Д
StaticRegexReplaceStaticRegexReplacePlaceholder*
rewrite *#
_output_shapes
:         *
pattern[[:punct:]]
S
StringSplit/ConstConst*
value	B B *
dtype0*
_output_shapes
: 
Л
StringSplit/StringSplitStringSplitStaticRegexReplaceStringSplit/Const*<
_output_shapes*
(:         :         :
`
SparseToDense/default_valueConst*
valueB
 BZYXW*
dtype0*
_output_shapes
: 
╒
SparseToDenseSparseToDenseStringSplit/StringSplitStringSplit/StringSplit:2StringSplit/StringSplit:1SparseToDense/default_value*
Tindices0	*
T0*0
_output_shapes
:                  
Ы
%string_to_index/hash_table/asset_pathConst"/device:CPU:**7
value.B, B&/home/jupyter/review_trained/vocab.txt*
dtype0*
_output_shapes
: 
b
 string_to_index/hash_table/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
╕
%string_to_index/hash_table/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0*
_output_shapes
: *F
shared_name75hash_table_/home/jupyter/review_trained/vocab.txt_0_1
ш
Cstring_to_index/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2%string_to_index/hash_table/hash_table%string_to_index/hash_table/asset_path*
	delimiter,*
	key_index *
value_index
┘
#hash_table_Lookup/LookupTableFindV2LookupTableFindV2%string_to_index/hash_table/hash_tableSparseToDense string_to_index/hash_table/Const*

Tout0	*0
_output_shapes
:                  *	
Tin0
п
5embedding/embeddings/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"\B  ╚   *'
_class
loc:@embedding/embeddings*
dtype0
б
3embedding/embeddings/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *═╠L╜*'
_class
loc:@embedding/embeddings
б
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *═╠L=*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: 
ч
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
dtype0*!
_output_shapes
:▄Д╚*
T0*'
_class
loc:@embedding/embeddings
ю
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*'
_class
loc:@embedding/embeddings*
_output_shapes
: *
T0
Г
3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/embeddings*!
_output_shapes
:▄Д╚
ї
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings*!
_output_shapes
:▄Д╚
░
embedding/embeddingsVarHandleOp*'
_class
loc:@embedding/embeddings*
dtype0*
_output_shapes
: *
shape:▄Д╚*%
shared_nameembedding/embeddings
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 
Г
embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0
А
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0*!
_output_shapes
:▄Д╚
ф
embedding/embedding_lookupResourceGatherembedding/embeddings#hash_table_Lookup/LookupTableFindV2*5
_output_shapes#
!:                  ╚*
Tindices0	*'
_class
loc:@embedding/embeddings*
dtype0
┤
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup*
T0*'
_class
loc:@embedding/embeddings*5
_output_shapes#
!:                  ╚
Ц
%embedding/embedding_lookup/Identity_1Identity#embedding/embedding_lookup/Identity*
T0*5
_output_shapes#
!:                  ╚
Н
spatial_dropout1d/IdentityIdentity%embedding/embedding_lookup/Identity_1*5
_output_shapes#
!:                  ╚*
T0
Э
,lstm/kernel/Initializer/random_uniform/shapeConst*
valueB"╚   @  *
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
:
П
*lstm/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *Р{l╜*
_class
loc:@lstm/kernel
П
*lstm/kernel/Initializer/random_uniform/maxConst*
valueB
 *Р{l=*
_class
loc:@lstm/kernel*
dtype0*
_output_shapes
: 
╦
4lstm/kernel/Initializer/random_uniform/RandomUniformRandomUniform,lstm/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
╚└*
T0*
_class
loc:@lstm/kernel*
dtype0
╩
*lstm/kernel/Initializer/random_uniform/subSub*lstm/kernel/Initializer/random_uniform/max*lstm/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@lstm/kernel*
_output_shapes
: 
▐
*lstm/kernel/Initializer/random_uniform/mulMul4lstm/kernel/Initializer/random_uniform/RandomUniform*lstm/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@lstm/kernel* 
_output_shapes
:
╚└
╨
&lstm/kernel/Initializer/random_uniformAdd*lstm/kernel/Initializer/random_uniform/mul*lstm/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@lstm/kernel* 
_output_shapes
:
╚└
Ф
lstm/kernelVarHandleOp*
_output_shapes
: *
shape:
╚└*
shared_namelstm/kernel*
_class
loc:@lstm/kernel*
dtype0
g
,lstm/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/kernel*
_output_shapes
: 
h
lstm/kernel/AssignAssignVariableOplstm/kernel&lstm/kernel/Initializer/random_uniform*
dtype0
m
lstm/kernel/Read/ReadVariableOpReadVariableOplstm/kernel*
dtype0* 
_output_shapes
:
╚└
░
5lstm/recurrent_kernel/Initializer/random_normal/shapeConst*
valueB"@  Р  *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
г
4lstm/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
е
6lstm/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  А?*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: 
ї
Dlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5lstm/recurrent_kernel/Initializer/random_normal/shape* 
_output_shapes
:
└Р*
T0*(
_class
loc:@lstm/recurrent_kernel*
dtype0
Н
3lstm/recurrent_kernel/Initializer/random_normal/mulMulDlstm/recurrent_kernel/Initializer/random_normal/RandomStandardNormal6lstm/recurrent_kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
└Р
Ў
/lstm/recurrent_kernel/Initializer/random_normalAdd3lstm/recurrent_kernel/Initializer/random_normal/mul4lstm/recurrent_kernel/Initializer/random_normal/mean*
T0*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
└Р
╝
$lstm/recurrent_kernel/Initializer/QrQr/lstm/recurrent_kernel/Initializer/random_normal*
T0*(
_class
loc:@lstm/recurrent_kernel*,
_output_shapes
:
└Р:
РР
о
*lstm/recurrent_kernel/Initializer/DiagPartDiagPart&lstm/recurrent_kernel/Initializer/Qr:1*
T0*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes	
:Р
к
&lstm/recurrent_kernel/Initializer/SignSign*lstm/recurrent_kernel/Initializer/DiagPart*(
_class
loc:@lstm/recurrent_kernel*
_output_shapes	
:Р*
T0
╧
%lstm/recurrent_kernel/Initializer/mulMul$lstm/recurrent_kernel/Initializer/Qr&lstm/recurrent_kernel/Initializer/Sign*
T0*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
└Р
╝
Alstm/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
И
<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose%lstm/recurrent_kernel/Initializer/mulAlstm/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
Р└
к
/lstm/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"Р  @  *(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
:
°
)lstm/recurrent_kernel/Initializer/ReshapeReshape<lstm/recurrent_kernel/Initializer/matrix_transpose/transpose/lstm/recurrent_kernel/Initializer/Reshape/shape*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
Р└*
T0
Ш
)lstm/recurrent_kernel/Initializer/mul_1/xConst*
_output_shapes
: *
valueB
 *  А?*(
_class
loc:@lstm/recurrent_kernel*
dtype0
┘
'lstm/recurrent_kernel/Initializer/mul_1Mul)lstm/recurrent_kernel/Initializer/mul_1/x)lstm/recurrent_kernel/Initializer/Reshape*
T0*(
_class
loc:@lstm/recurrent_kernel* 
_output_shapes
:
Р└
▓
lstm/recurrent_kernelVarHandleOp*&
shared_namelstm/recurrent_kernel*(
_class
loc:@lstm/recurrent_kernel*
dtype0*
_output_shapes
: *
shape:
Р└
{
6lstm/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm/recurrent_kernel*
_output_shapes
: 
}
lstm/recurrent_kernel/AssignAssignVariableOplstm/recurrent_kernel'lstm/recurrent_kernel/Initializer/mul_1*
dtype0
Б
)lstm/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0* 
_output_shapes
:
Р└
И
lstm/bias/Initializer/zerosConst*
valueBР*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes	
:Р
З
lstm/bias/Initializer/onesConst*
valueBР*  А?*
_class
loc:@lstm/bias*
dtype0*
_output_shapes	
:Р
К
lstm/bias/Initializer/zeros_1Const*
valueBа*    *
_class
loc:@lstm/bias*
dtype0*
_output_shapes	
:а
Б
!lstm/bias/Initializer/concat/axisConst*
value	B : *
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: 
Ё
lstm/bias/Initializer/concatConcatV2lstm/bias/Initializer/zeroslstm/bias/Initializer/oneslstm/bias/Initializer/zeros_1!lstm/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm/bias*
N*
_output_shapes	
:└
Й
	lstm/biasVarHandleOp*
shape:└*
shared_name	lstm/bias*
_class
loc:@lstm/bias*
dtype0*
_output_shapes
: 
c
*lstm/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	lstm/bias*
_output_shapes
: 
Z
lstm/bias/AssignAssignVariableOp	lstm/biaslstm/bias/Initializer/concat*
dtype0
d
lstm/bias/Read/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:└
T

lstm/ShapeShapespatial_dropout1d/Identity*
T0*
_output_shapes
:
b
lstm/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
lstm/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
╞
lstm/strided_sliceStridedSlice
lstm/Shapelstm/strided_slice/stacklstm/strided_slice/stack_1lstm/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
S
lstm/zeros/mul/yConst*
value
B :Р*
dtype0*
_output_shapes
: 
\
lstm/zeros/mulMullstm/strided_slicelstm/zeros/mul/y*
_output_shapes
: *
T0
T
lstm/zeros/Less/yConst*
dtype0*
_output_shapes
: *
value
B :ш
[
lstm/zeros/LessLesslstm/zeros/mullstm/zeros/Less/y*
T0*
_output_shapes
: 
V
lstm/zeros/packed/1Const*
value
B :Р*
dtype0*
_output_shapes
: 
p
lstm/zeros/packedPacklstm/strided_slicelstm/zeros/packed/1*
N*
_output_shapes
:*
T0
U
lstm/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j

lstm/zerosFilllstm/zeros/packedlstm/zeros/Const*
T0*(
_output_shapes
:         Р
U
lstm/zeros_1/mul/yConst*
value
B :Р*
dtype0*
_output_shapes
: 
`
lstm/zeros_1/mulMullstm/strided_slicelstm/zeros_1/mul/y*
T0*
_output_shapes
: 
V
lstm/zeros_1/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
a
lstm/zeros_1/LessLesslstm/zeros_1/mullstm/zeros_1/Less/y*
T0*
_output_shapes
: 
X
lstm/zeros_1/packed/1Const*
value
B :Р*
dtype0*
_output_shapes
: 
t
lstm/zeros_1/packedPacklstm/strided_slicelstm/zeros_1/packed/1*
T0*
N*
_output_shapes
:
W
lstm/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
lstm/zeros_1Filllstm/zeros_1/packedlstm/zeros_1/Const*
T0*(
_output_shapes
:         Р
h
lstm/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
М
lstm/transpose	Transposespatial_dropout1d/Identitylstm/transpose/perm*
T0*5
_output_shapes#
!:                  ╚
J
lstm/Shape_1Shapelstm/transpose*
T0*
_output_shapes
:
d
lstm/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
f
lstm/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
lstm/strided_slice_1StridedSlicelstm/Shape_1lstm/strided_slice_1/stacklstm/strided_slice_1/stack_1lstm/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
е
lstm/TensorArrayTensorArrayV3lstm/strided_slice_1*
_output_shapes

:: *
identical_element_shapes(*!
tensor_array_name
input_ta_0*
dtype0
[
lstm/TensorArrayUnstack/ShapeShapelstm/transpose*
_output_shapes
:*
T0
u
+lstm/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-lstm/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
е
%lstm/TensorArrayUnstack/strided_sliceStridedSlicelstm/TensorArrayUnstack/Shape+lstm/TensorArrayUnstack/strided_slice/stack-lstm/TensorArrayUnstack/strided_slice/stack_1-lstm/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
e
#lstm/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#lstm/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╝
lstm/TensorArrayUnstack/rangeRange#lstm/TensorArrayUnstack/range/start%lstm/TensorArrayUnstack/strided_slice#lstm/TensorArrayUnstack/range/delta*#
_output_shapes
:         
Ё
?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm/TensorArraylstm/TensorArrayUnstack/rangelstm/transposelstm/TensorArray:1*
T0*!
_class
loc:@lstm/transpose*
_output_shapes
: 
d
lstm/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ф
lstm/strided_slice_2StridedSlicelstm/transposelstm/strided_slice_2/stacklstm/strided_slice_2/stack_1lstm/strided_slice_2/stack_2*(
_output_shapes
:         ╚*
shrink_axis_mask*
T0*
Index0
X
lstm/ones_like/ShapeShapelstm/strided_slice_2*
T0*
_output_shapes
:
Y
lstm/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
u
lstm/ones_likeFilllstm/ones_like/Shapelstm/ones_like/Const*
T0*(
_output_shapes
:         ╚
P
lstm/ones_like_1/ShapeShape
lstm/zeros*
_output_shapes
:*
T0
[
lstm/ones_like_1/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
{
lstm/ones_like_1Filllstm/ones_like_1/Shapelstm/ones_like_1/Const*
T0*(
_output_shapes
:         Р
h
lstm/mulMullstm/strided_slice_2lstm/ones_like*
T0*(
_output_shapes
:         ╚
j

lstm/mul_1Mullstm/strided_slice_2lstm/ones_like*
T0*(
_output_shapes
:         ╚
j

lstm/mul_2Mullstm/strided_slice_2lstm/ones_like*
T0*(
_output_shapes
:         ╚
j

lstm/mul_3Mullstm/strided_slice_2lstm/ones_like*
T0*(
_output_shapes
:         ╚
L

lstm/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
V
lstm/split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 
g
lstm/split/ReadVariableOpReadVariableOplstm/kernel*
dtype0* 
_output_shapes
:
╚└
д

lstm/splitSplitlstm/split/split_dimlstm/split/ReadVariableOp*D
_output_shapes2
0:
╚Р:
╚Р:
╚Р:
╚Р*
	num_split*
T0
^
lstm/MatMulMatMullstm/mul
lstm/split*(
_output_shapes
:         Р*
T0
d
lstm/MatMul_1MatMul
lstm/mul_1lstm/split:1*
T0*(
_output_shapes
:         Р
d
lstm/MatMul_2MatMul
lstm/mul_2lstm/split:2*
T0*(
_output_shapes
:         Р
d
lstm/MatMul_3MatMul
lstm/mul_3lstm/split:3*
T0*(
_output_shapes
:         Р
N
lstm/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
X
lstm/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm/split_1/ReadVariableOpReadVariableOp	lstm/bias*
dtype0*
_output_shapes	
:└
Ц
lstm/split_1Splitlstm/split_1/split_dimlstm/split_1/ReadVariableOp*
T0*0
_output_shapes
:Р:Р:Р:Р*
	num_split
e
lstm/BiasAddBiasAddlstm/MatMullstm/split_1*(
_output_shapes
:         Р*
T0
k
lstm/BiasAdd_1BiasAddlstm/MatMul_1lstm/split_1:1*(
_output_shapes
:         Р*
T0
k
lstm/BiasAdd_2BiasAddlstm/MatMul_2lstm/split_1:2*
T0*(
_output_shapes
:         Р
k
lstm/BiasAdd_3BiasAddlstm/MatMul_3lstm/split_1:3*
T0*(
_output_shapes
:         Р
b

lstm/mul_4Mul
lstm/zeroslstm/ones_like_1*
T0*(
_output_shapes
:         Р
b

lstm/mul_5Mul
lstm/zeroslstm/ones_like_1*
T0*(
_output_shapes
:         Р
b

lstm/mul_6Mul
lstm/zeroslstm/ones_like_1*
T0*(
_output_shapes
:         Р
b

lstm/mul_7Mul
lstm/zeroslstm/ones_like_1*
T0*(
_output_shapes
:         Р
k
lstm/ReadVariableOpReadVariableOplstm/recurrent_kernel*
dtype0* 
_output_shapes
:
Р└
k
lstm/strided_slice_3/stackConst*
_output_shapes
:*
valueB"        *
dtype0
m
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
valueB"    Р  *
dtype0
m
lstm/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ы
lstm/strided_slice_3StridedSlicelstm/ReadVariableOplstm/strided_slice_3/stacklstm/strided_slice_3/stack_1lstm/strided_slice_3/stack_2*

begin_mask*
Index0*
T0*
end_mask* 
_output_shapes
:
РР
l
lstm/MatMul_4MatMul
lstm/mul_4lstm/strided_slice_3*(
_output_shapes
:         Р*
T0
a
lstm/addAddV2lstm/BiasAddlstm/MatMul_4*
T0*(
_output_shapes
:         Р
Q
lstm/Const_2Const*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
Q
lstm/Const_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
\

lstm/Mul_8Mullstm/addlstm/Const_2*
T0*(
_output_shapes
:         Р
^

lstm/Add_1Add
lstm/Mul_8lstm/Const_3*
T0*(
_output_shapes
:         Р
a
lstm/clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
В
lstm/clip_by_value/MinimumMinimum
lstm/Add_1lstm/clip_by_value/Minimum/y*(
_output_shapes
:         Р*
T0
Y
lstm/clip_by_value/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
В
lstm/clip_by_valueMaximumlstm/clip_by_value/Minimumlstm/clip_by_value/y*(
_output_shapes
:         Р*
T0
m
lstm/ReadVariableOp_1ReadVariableOplstm/recurrent_kernel*
dtype0* 
_output_shapes
:
Р└
k
lstm/strided_slice_4/stackConst*
valueB"    Р  *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
э
lstm/strided_slice_4StridedSlicelstm/ReadVariableOp_1lstm/strided_slice_4/stacklstm/strided_slice_4/stack_1lstm/strided_slice_4/stack_2*
Index0*
T0*

begin_mask*
end_mask* 
_output_shapes
:
РР
l
lstm/MatMul_5MatMul
lstm/mul_5lstm/strided_slice_4*(
_output_shapes
:         Р*
T0
e

lstm/add_2AddV2lstm/BiasAdd_1lstm/MatMul_5*
T0*(
_output_shapes
:         Р
Q
lstm/Const_4Const*
_output_shapes
: *
valueB
 *═╠L>*
dtype0
Q
lstm/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *   ?
^

lstm/Mul_9Mul
lstm/add_2lstm/Const_4*(
_output_shapes
:         Р*
T0
^

lstm/Add_3Add
lstm/Mul_9lstm/Const_5*(
_output_shapes
:         Р*
T0
c
lstm/clip_by_value_1/Minimum/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ж
lstm/clip_by_value_1/MinimumMinimum
lstm/Add_3lstm/clip_by_value_1/Minimum/y*
T0*(
_output_shapes
:         Р
[
lstm/clip_by_value_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
И
lstm/clip_by_value_1Maximumlstm/clip_by_value_1/Minimumlstm/clip_by_value_1/y*
T0*(
_output_shapes
:         Р
i
lstm/mul_10Mullstm/clip_by_value_1lstm/zeros_1*
T0*(
_output_shapes
:         Р
m
lstm/ReadVariableOp_2ReadVariableOplstm/recurrent_kernel*
dtype0* 
_output_shapes
:
Р└
k
lstm/strided_slice_5/stackConst*
valueB"       *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_1Const*
valueB"    ░  *
dtype0*
_output_shapes
:
m
lstm/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
э
lstm/strided_slice_5StridedSlicelstm/ReadVariableOp_2lstm/strided_slice_5/stacklstm/strided_slice_5/stack_1lstm/strided_slice_5/stack_2*

begin_mask*
Index0*
T0*
end_mask* 
_output_shapes
:
РР
l
lstm/MatMul_6MatMul
lstm/mul_6lstm/strided_slice_5*(
_output_shapes
:         Р*
T0
e

lstm/add_4AddV2lstm/BiasAdd_2lstm/MatMul_6*
T0*(
_output_shapes
:         Р
P
	lstm/TanhTanh
lstm/add_4*(
_output_shapes
:         Р*
T0
d
lstm/mul_11Mullstm/clip_by_value	lstm/Tanh*(
_output_shapes
:         Р*
T0
`

lstm/add_5AddV2lstm/mul_10lstm/mul_11*(
_output_shapes
:         Р*
T0
m
lstm/ReadVariableOp_3ReadVariableOplstm/recurrent_kernel*
dtype0* 
_output_shapes
:
Р└
k
lstm/strided_slice_6/stackConst*
valueB"    ░  *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
m
lstm/strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
э
lstm/strided_slice_6StridedSlicelstm/ReadVariableOp_3lstm/strided_slice_6/stacklstm/strided_slice_6/stack_1lstm/strided_slice_6/stack_2*

begin_mask*
T0*
Index0*
end_mask* 
_output_shapes
:
РР
l
lstm/MatMul_7MatMul
lstm/mul_7lstm/strided_slice_6*(
_output_shapes
:         Р*
T0
e

lstm/add_6AddV2lstm/BiasAdd_3lstm/MatMul_7*
T0*(
_output_shapes
:         Р
Q
lstm/Const_6Const*
_output_shapes
: *
valueB
 *═╠L>*
dtype0
Q
lstm/Const_7Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
_
lstm/Mul_12Mul
lstm/add_6lstm/Const_6*(
_output_shapes
:         Р*
T0
_

lstm/Add_7Addlstm/Mul_12lstm/Const_7*(
_output_shapes
:         Р*
T0
c
lstm/clip_by_value_2/Minimum/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ж
lstm/clip_by_value_2/MinimumMinimum
lstm/Add_7lstm/clip_by_value_2/Minimum/y*
T0*(
_output_shapes
:         Р
[
lstm/clip_by_value_2/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
И
lstm/clip_by_value_2Maximumlstm/clip_by_value_2/Minimumlstm/clip_by_value_2/y*(
_output_shapes
:         Р*
T0
R
lstm/Tanh_1Tanh
lstm/add_5*
T0*(
_output_shapes
:         Р
h
lstm/mul_13Mullstm/clip_by_value_2lstm/Tanh_1*
T0*(
_output_shapes
:         Р
╧
lstm/TensorArray_1TensorArrayV3lstm/strided_slice_1*%
element_shape:         Р*"
tensor_array_nameoutput_ta_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
K
	lstm/timeConst*
value	B : *
dtype0*
_output_shapes
: 
К
lstm/while/EnterEnter	lstm/time*
T0*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Ч
lstm/while/Enter_1Enterlstm/TensorArray_1:1*
_output_shapes
: *(

frame_namelstm/while/while_context*
T0*
parallel_iterations 
Я
lstm/while/Enter_2Enter
lstm/zeros*
T0*
parallel_iterations *(
_output_shapes
:         Р*(

frame_namelstm/while/while_context
б
lstm/while/Enter_3Enterlstm/zeros_1*
parallel_iterations *(
_output_shapes
:         Р*(

frame_namelstm/while/while_context*
T0
q
lstm/while/MergeMergelstm/while/Enterlstm/while/NextIteration*
N*
_output_shapes
: : *
T0
w
lstm/while/Merge_1Mergelstm/while/Enter_1lstm/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Й
lstm/while/Merge_2Mergelstm/while/Enter_2lstm/while/NextIteration_2*
T0*
N**
_output_shapes
:         Р: 
Й
lstm/while/Merge_3Mergelstm/while/Enter_3lstm/while/NextIteration_3**
_output_shapes
:         Р: *
T0*
N
a
lstm/while/LessLesslstm/while/Mergelstm/while/Less/Enter*
T0*
_output_shapes
: 
н
lstm/while/Less/EnterEnterlstm/strided_slice_1*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0
H
lstm/while/LoopCondLoopCondlstm/while/Less*
_output_shapes
: 
К
lstm/while/SwitchSwitchlstm/while/Mergelstm/while/LoopCond*
_output_shapes
: : *
T0*#
_class
loc:@lstm/while/Merge
Р
lstm/while/Switch_1Switchlstm/while/Merge_1lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_1*
_output_shapes
: : 
┤
lstm/while/Switch_2Switchlstm/while/Merge_2lstm/while/LoopCond*<
_output_shapes*
(:         Р:         Р*
T0*%
_class
loc:@lstm/while/Merge_2
┤
lstm/while/Switch_3Switchlstm/while/Merge_3lstm/while/LoopCond*
T0*%
_class
loc:@lstm/while/Merge_3*<
_output_shapes*
(:         Р:         Р
U
lstm/while/IdentityIdentitylstm/while/Switch:1*
T0*
_output_shapes
: 
Y
lstm/while/Identity_1Identitylstm/while/Switch_1:1*
_output_shapes
: *
T0
k
lstm/while/Identity_2Identitylstm/while/Switch_2:1*(
_output_shapes
:         Р*
T0
k
lstm/while/Identity_3Identitylstm/while/Switch_3:1*(
_output_shapes
:         Р*
T0
╟
lstm/while/TensorArrayReadV3TensorArrayReadV3"lstm/while/TensorArrayReadV3/Enterlstm/while/Identity$lstm/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         ╚
║
"lstm/while/TensorArrayReadV3/EnterEnterlstm/TensorArray*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*(

frame_namelstm/while/while_context
ч
$lstm/while/TensorArrayReadV3/Enter_1Enter?lstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0
|
lstm/while/mulMullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*(
_output_shapes
:         ╚
╕
lstm/while/mul/EnterEnterlstm/ones_like*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         ╚*(

frame_namelstm/while/while_context
~
lstm/while/mul_1Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*
T0*(
_output_shapes
:         ╚
~
lstm/while/mul_2Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*(
_output_shapes
:         ╚*
T0
~
lstm/while/mul_3Mullstm/while/TensorArrayReadV3lstm/while/mul/Enter*(
_output_shapes
:         ╚*
T0
h
lstm/while/ConstConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
r
lstm/while/split/split_dimConst^lstm/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Э
lstm/while/split/ReadVariableOpReadVariableOp%lstm/while/split/ReadVariableOp/Enter^lstm/while/Identity*
dtype0* 
_output_shapes
:
╚└
┤
%lstm/while/split/ReadVariableOp/EnterEnterlstm/kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
╢
lstm/while/splitSplitlstm/while/split/split_dimlstm/while/split/ReadVariableOp*
T0*D
_output_shapes2
0:
╚Р:
╚Р:
╚Р:
╚Р*
	num_split
p
lstm/while/MatMulMatMullstm/while/mullstm/while/split*
T0*(
_output_shapes
:         Р
v
lstm/while/MatMul_1MatMullstm/while/mul_1lstm/while/split:1*
T0*(
_output_shapes
:         Р
v
lstm/while/MatMul_2MatMullstm/while/mul_2lstm/while/split:2*(
_output_shapes
:         Р*
T0
v
lstm/while/MatMul_3MatMullstm/while/mul_3lstm/while/split:3*(
_output_shapes
:         Р*
T0
j
lstm/while/Const_1Const^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
t
lstm/while/split_1/split_dimConst^lstm/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
Ь
!lstm/while/split_1/ReadVariableOpReadVariableOp'lstm/while/split_1/ReadVariableOp/Enter^lstm/while/Identity*
dtype0*
_output_shapes	
:└
┤
'lstm/while/split_1/ReadVariableOp/EnterEnter	lstm/bias*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context*
T0
и
lstm/while/split_1Splitlstm/while/split_1/split_dim!lstm/while/split_1/ReadVariableOp*
T0*0
_output_shapes
:Р:Р:Р:Р*
	num_split
w
lstm/while/BiasAddBiasAddlstm/while/MatMullstm/while/split_1*(
_output_shapes
:         Р*
T0
}
lstm/while/BiasAdd_1BiasAddlstm/while/MatMul_1lstm/while/split_1:1*
T0*(
_output_shapes
:         Р
}
lstm/while/BiasAdd_2BiasAddlstm/while/MatMul_2lstm/while/split_1:2*
T0*(
_output_shapes
:         Р
}
lstm/while/BiasAdd_3BiasAddlstm/while/MatMul_3lstm/while/split_1:3*
T0*(
_output_shapes
:         Р
y
lstm/while/mul_4Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*(
_output_shapes
:         Р
╝
lstm/while/mul_4/EnterEnterlstm/ones_like_1*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         Р*(

frame_namelstm/while/while_context
y
lstm/while/mul_5Mullstm/while/Identity_2lstm/while/mul_4/Enter*
T0*(
_output_shapes
:         Р
y
lstm/while/mul_6Mullstm/while/Identity_2lstm/while/mul_4/Enter*(
_output_shapes
:         Р*
T0
y
lstm/while/mul_7Mullstm/while/Identity_2lstm/while/mul_4/Enter*(
_output_shapes
:         Р*
T0
С
lstm/while/ReadVariableOpReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0* 
_output_shapes
:
Р└
╕
lstm/while/ReadVariableOp/EnterEnterlstm/recurrent_kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *(

frame_namelstm/while/while_context
Е
lstm/while/strided_slice/stackConst^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:
З
 lstm/while/strided_slice/stack_1Const^lstm/while/Identity*
valueB"    Р  *
dtype0*
_output_shapes
:
З
 lstm/while/strided_slice/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Б
lstm/while/strided_sliceStridedSlicelstm/while/ReadVariableOplstm/while/strided_slice/stack lstm/while/strided_slice/stack_1 lstm/while/strided_slice/stack_2*
end_mask* 
_output_shapes
:
РР*

begin_mask*
T0*
Index0
|
lstm/while/MatMul_4MatMullstm/while/mul_4lstm/while/strided_slice*(
_output_shapes
:         Р*
T0
s
lstm/while/addAddV2lstm/while/BiasAddlstm/while/MatMul_4*(
_output_shapes
:         Р*
T0
m
lstm/while/Const_2Const^lstm/while/Identity*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_3Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
lstm/while/Mul_8Mullstm/while/addlstm/while/Const_2*
T0*(
_output_shapes
:         Р
p
lstm/while/Add_1Addlstm/while/Mul_8lstm/while/Const_3*
T0*(
_output_shapes
:         Р
}
"lstm/while/clip_by_value/Minimum/yConst^lstm/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ф
 lstm/while/clip_by_value/MinimumMinimumlstm/while/Add_1"lstm/while/clip_by_value/Minimum/y*(
_output_shapes
:         Р*
T0
u
lstm/while/clip_by_value/yConst^lstm/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
lstm/while/clip_by_valueMaximum lstm/while/clip_by_value/Minimumlstm/while/clip_by_value/y*(
_output_shapes
:         Р*
T0
У
lstm/while/ReadVariableOp_1ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0* 
_output_shapes
:
Р└
З
 lstm/while/strided_slice_1/stackConst^lstm/while/Identity*
valueB"    Р  *
dtype0*
_output_shapes
:
Й
"lstm/while/strided_slice_1/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"       *
dtype0
Й
"lstm/while/strided_slice_1/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Л
lstm/while/strided_slice_1StridedSlicelstm/while/ReadVariableOp_1 lstm/while/strided_slice_1/stack"lstm/while/strided_slice_1/stack_1"lstm/while/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask* 
_output_shapes
:
РР
~
lstm/while/MatMul_5MatMullstm/while/mul_5lstm/while/strided_slice_1*
T0*(
_output_shapes
:         Р
w
lstm/while/add_2AddV2lstm/while/BiasAdd_1lstm/while/MatMul_5*(
_output_shapes
:         Р*
T0
m
lstm/while/Const_4Const^lstm/while/Identity*
_output_shapes
: *
valueB
 *═╠L>*
dtype0
m
lstm/while/Const_5Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
p
lstm/while/Mul_9Mullstm/while/add_2lstm/while/Const_4*(
_output_shapes
:         Р*
T0
p
lstm/while/Add_3Addlstm/while/Mul_9lstm/while/Const_5*(
_output_shapes
:         Р*
T0

$lstm/while/clip_by_value_1/Minimum/yConst^lstm/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ш
"lstm/while/clip_by_value_1/MinimumMinimumlstm/while/Add_3$lstm/while/clip_by_value_1/Minimum/y*
T0*(
_output_shapes
:         Р
w
lstm/while/clip_by_value_1/yConst^lstm/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *    
Ъ
lstm/while/clip_by_value_1Maximum"lstm/while/clip_by_value_1/Minimumlstm/while/clip_by_value_1/y*
T0*(
_output_shapes
:         Р
~
lstm/while/mul_10Mullstm/while/clip_by_value_1lstm/while/Identity_3*
T0*(
_output_shapes
:         Р
У
lstm/while/ReadVariableOp_2ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0* 
_output_shapes
:
Р└
З
 lstm/while/strided_slice_2/stackConst^lstm/while/Identity*
_output_shapes
:*
valueB"       *
dtype0
Й
"lstm/while/strided_slice_2/stack_1Const^lstm/while/Identity*
_output_shapes
:*
valueB"    ░  *
dtype0
Й
"lstm/while/strided_slice_2/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Л
lstm/while/strided_slice_2StridedSlicelstm/while/ReadVariableOp_2 lstm/while/strided_slice_2/stack"lstm/while/strided_slice_2/stack_1"lstm/while/strided_slice_2/stack_2*

begin_mask*
Index0*
T0*
end_mask* 
_output_shapes
:
РР
~
lstm/while/MatMul_6MatMullstm/while/mul_6lstm/while/strided_slice_2*
T0*(
_output_shapes
:         Р
w
lstm/while/add_4AddV2lstm/while/BiasAdd_2lstm/while/MatMul_6*
T0*(
_output_shapes
:         Р
\
lstm/while/TanhTanhlstm/while/add_4*(
_output_shapes
:         Р*
T0
v
lstm/while/mul_11Mullstm/while/clip_by_valuelstm/while/Tanh*
T0*(
_output_shapes
:         Р
r
lstm/while/add_5AddV2lstm/while/mul_10lstm/while/mul_11*
T0*(
_output_shapes
:         Р
У
lstm/while/ReadVariableOp_3ReadVariableOplstm/while/ReadVariableOp/Enter^lstm/while/Identity*
dtype0* 
_output_shapes
:
Р└
З
 lstm/while/strided_slice_3/stackConst^lstm/while/Identity*
valueB"    ░  *
dtype0*
_output_shapes
:
Й
"lstm/while/strided_slice_3/stack_1Const^lstm/while/Identity*
valueB"        *
dtype0*
_output_shapes
:
Й
"lstm/while/strided_slice_3/stack_2Const^lstm/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Л
lstm/while/strided_slice_3StridedSlicelstm/while/ReadVariableOp_3 lstm/while/strided_slice_3/stack"lstm/while/strided_slice_3/stack_1"lstm/while/strided_slice_3/stack_2*

begin_mask*
T0*
Index0*
end_mask* 
_output_shapes
:
РР
~
lstm/while/MatMul_7MatMullstm/while/mul_7lstm/while/strided_slice_3*
T0*(
_output_shapes
:         Р
w
lstm/while/add_6AddV2lstm/while/BiasAdd_3lstm/while/MatMul_7*(
_output_shapes
:         Р*
T0
m
lstm/while/Const_6Const^lstm/while/Identity*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
m
lstm/while/Const_7Const^lstm/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
lstm/while/Mul_12Mullstm/while/add_6lstm/while/Const_6*
T0*(
_output_shapes
:         Р
q
lstm/while/Add_7Addlstm/while/Mul_12lstm/while/Const_7*(
_output_shapes
:         Р*
T0

$lstm/while/clip_by_value_2/Minimum/yConst^lstm/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ш
"lstm/while/clip_by_value_2/MinimumMinimumlstm/while/Add_7$lstm/while/clip_by_value_2/Minimum/y*(
_output_shapes
:         Р*
T0
w
lstm/while/clip_by_value_2/yConst^lstm/while/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
Ъ
lstm/while/clip_by_value_2Maximum"lstm/while/clip_by_value_2/Minimumlstm/while/clip_by_value_2/y*
T0*(
_output_shapes
:         Р
^
lstm/while/Tanh_1Tanhlstm/while/add_5*
T0*(
_output_shapes
:         Р
z
lstm/while/mul_13Mullstm/while/clip_by_value_2lstm/while/Tanh_1*(
_output_shapes
:         Р*
T0
А
.lstm/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV34lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm/while/Identitylstm/while/mul_13lstm/while/Identity_1*
_output_shapes
: *
T0*$
_class
loc:@lstm/while/mul_13
Ї
4lstm/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm/TensorArray_1*
_output_shapes
:*(

frame_namelstm/while/while_context*
T0*$
_class
loc:@lstm/while/mul_13*
parallel_iterations *
is_constant(
j
lstm/while/add_8/yConst^lstm/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lstm/while/add_8AddV2lstm/while/Identitylstm/while/add_8/y*
T0*
_output_shapes
: 
\
lstm/while/NextIterationNextIterationlstm/while/add_8*
T0*
_output_shapes
: 
|
lstm/while/NextIteration_1NextIteration.lstm/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
q
lstm/while/NextIteration_2NextIterationlstm/while/mul_13*
T0*(
_output_shapes
:         Р
p
lstm/while/NextIteration_3NextIterationlstm/while/add_5*
T0*(
_output_shapes
:         Р
K
lstm/while/ExitExitlstm/while/Switch*
T0*
_output_shapes
: 
O
lstm/while/Exit_1Exitlstm/while/Switch_1*
_output_shapes
: *
T0
a
lstm/while/Exit_2Exitlstm/while/Switch_2*(
_output_shapes
:         Р*
T0
a
lstm/while/Exit_3Exitlstm/while/Switch_3*
T0*(
_output_shapes
:         Р
в
'lstm/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm/TensorArray_1lstm/while/Exit_1*%
_class
loc:@lstm/TensorArray_1*
_output_shapes
: 
К
!lstm/TensorArrayStack/range/startConst*
_output_shapes
: *
value	B : *%
_class
loc:@lstm/TensorArray_1*
dtype0
К
!lstm/TensorArrayStack/range/deltaConst*
_output_shapes
: *
value	B :*%
_class
loc:@lstm/TensorArray_1*
dtype0
▀
lstm/TensorArrayStack/rangeRange!lstm/TensorArrayStack/range/start'lstm/TensorArrayStack/TensorArraySizeV3!lstm/TensorArrayStack/range/delta*%
_class
loc:@lstm/TensorArray_1*#
_output_shapes
:         
Ц
)lstm/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm/TensorArray_1lstm/TensorArrayStack/rangelstm/while/Exit_1*
dtype0*5
_output_shapes#
!:                  Р*%
element_shape:         Р*%
_class
loc:@lstm/TensorArray_1
m
lstm/strided_slice_7/stackConst*
_output_shapes
:*
valueB:
         *
dtype0
f
lstm/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
f
lstm/strided_slice_7/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
 
lstm/strided_slice_7StridedSlice)lstm/TensorArrayStack/TensorArrayGatherV3lstm/strided_slice_7/stacklstm/strided_slice_7/stack_1lstm/strided_slice_7/stack_2*(
_output_shapes
:         Р*
shrink_axis_mask*
Index0*
T0
j
lstm/transpose_1/permConst*
_output_shapes
:*!
valueB"          *
dtype0
Я
lstm/transpose_1	Transpose)lstm/TensorArrayStack/TensorArrayGatherV3lstm/transpose_1/perm*5
_output_shapes#
!:                  Р*
T0
б
.lstm_1/kernel/Initializer/random_uniform/shapeConst*
valueB"Р  Р  * 
_class
loc:@lstm_1/kernel*
dtype0*
_output_shapes
:
У
,lstm_1/kernel/Initializer/random_uniform/minConst*
valueB
 *м\▒╜* 
_class
loc:@lstm_1/kernel*
dtype0*
_output_shapes
: 
У
,lstm_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *м\▒=* 
_class
loc:@lstm_1/kernel*
dtype0*
_output_shapes
: 
╤
6lstm_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform.lstm_1/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@lstm_1/kernel*
dtype0* 
_output_shapes
:
РР
╥
,lstm_1/kernel/Initializer/random_uniform/subSub,lstm_1/kernel/Initializer/random_uniform/max,lstm_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@lstm_1/kernel
ц
,lstm_1/kernel/Initializer/random_uniform/mulMul6lstm_1/kernel/Initializer/random_uniform/RandomUniform,lstm_1/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@lstm_1/kernel* 
_output_shapes
:
РР
╪
(lstm_1/kernel/Initializer/random_uniformAdd,lstm_1/kernel/Initializer/random_uniform/mul,lstm_1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@lstm_1/kernel* 
_output_shapes
:
РР
Ъ
lstm_1/kernelVarHandleOp* 
_class
loc:@lstm_1/kernel*
dtype0*
_output_shapes
: *
shape:
РР*
shared_namelstm_1/kernel
k
.lstm_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_1/kernel*
_output_shapes
: 
n
lstm_1/kernel/AssignAssignVariableOplstm_1/kernel(lstm_1/kernel/Initializer/random_uniform*
dtype0
q
!lstm_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/kernel*
dtype0* 
_output_shapes
:
РР
┤
7lstm_1/recurrent_kernel/Initializer/random_normal/shapeConst*
valueB"Р  d   **
_class 
loc:@lstm_1/recurrent_kernel*
dtype0*
_output_shapes
:
з
6lstm_1/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    **
_class 
loc:@lstm_1/recurrent_kernel*
dtype0*
_output_shapes
: 
й
8lstm_1/recurrent_kernel/Initializer/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  А?**
_class 
loc:@lstm_1/recurrent_kernel*
dtype0
·
Flstm_1/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7lstm_1/recurrent_kernel/Initializer/random_normal/shape*
_output_shapes
:	Рd*
T0**
_class 
loc:@lstm_1/recurrent_kernel*
dtype0
Ф
5lstm_1/recurrent_kernel/Initializer/random_normal/mulMulFlstm_1/recurrent_kernel/Initializer/random_normal/RandomStandardNormal8lstm_1/recurrent_kernel/Initializer/random_normal/stddev**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:	Рd*
T0
¤
1lstm_1/recurrent_kernel/Initializer/random_normalAdd5lstm_1/recurrent_kernel/Initializer/random_normal/mul6lstm_1/recurrent_kernel/Initializer/random_normal/mean**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:	Рd*
T0
┐
&lstm_1/recurrent_kernel/Initializer/QrQr1lstm_1/recurrent_kernel/Initializer/random_normal*
T0**
_class 
loc:@lstm_1/recurrent_kernel*)
_output_shapes
:	Рd:dd
│
,lstm_1/recurrent_kernel/Initializer/DiagPartDiagPart(lstm_1/recurrent_kernel/Initializer/Qr:1*
T0**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:d
п
(lstm_1/recurrent_kernel/Initializer/SignSign,lstm_1/recurrent_kernel/Initializer/DiagPart**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:d*
T0
╓
'lstm_1/recurrent_kernel/Initializer/mulMul&lstm_1/recurrent_kernel/Initializer/Qr(lstm_1/recurrent_kernel/Initializer/Sign*
_output_shapes
:	Рd*
T0**
_class 
loc:@lstm_1/recurrent_kernel
└
Clstm_1/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       **
_class 
loc:@lstm_1/recurrent_kernel*
dtype0*
_output_shapes
:
П
>lstm_1/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose'lstm_1/recurrent_kernel/Initializer/mulClstm_1/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:	dР
о
1lstm_1/recurrent_kernel/Initializer/Reshape/shapeConst*
_output_shapes
:*
valueB"d   Р  **
_class 
loc:@lstm_1/recurrent_kernel*
dtype0
 
+lstm_1/recurrent_kernel/Initializer/ReshapeReshape>lstm_1/recurrent_kernel/Initializer/matrix_transpose/transpose1lstm_1/recurrent_kernel/Initializer/Reshape/shape*
T0**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:	dР
Ь
+lstm_1/recurrent_kernel/Initializer/mul_1/xConst*
valueB
 *  А?**
_class 
loc:@lstm_1/recurrent_kernel*
dtype0*
_output_shapes
: 
р
)lstm_1/recurrent_kernel/Initializer/mul_1Mul+lstm_1/recurrent_kernel/Initializer/mul_1/x+lstm_1/recurrent_kernel/Initializer/Reshape*
T0**
_class 
loc:@lstm_1/recurrent_kernel*
_output_shapes
:	dР
╖
lstm_1/recurrent_kernelVarHandleOp*(
shared_namelstm_1/recurrent_kernel**
_class 
loc:@lstm_1/recurrent_kernel*
dtype0*
_output_shapes
: *
shape:	dР

8lstm_1/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_1/recurrent_kernel*
_output_shapes
: 
Г
lstm_1/recurrent_kernel/AssignAssignVariableOplstm_1/recurrent_kernel)lstm_1/recurrent_kernel/Initializer/mul_1*
dtype0
Д
+lstm_1/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm_1/recurrent_kernel*
dtype0*
_output_shapes
:	dР
К
lstm_1/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@lstm_1/bias*
dtype0*
_output_shapes
:d
Й
lstm_1/bias/Initializer/onesConst*
valueBd*  А?*
_class
loc:@lstm_1/bias*
dtype0*
_output_shapes
:d
О
lstm_1/bias/Initializer/zeros_1Const*
valueB╚*    *
_class
loc:@lstm_1/bias*
dtype0*
_output_shapes	
:╚
Е
#lstm_1/bias/Initializer/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : *
_class
loc:@lstm_1/bias
№
lstm_1/bias/Initializer/concatConcatV2lstm_1/bias/Initializer/zeroslstm_1/bias/Initializer/oneslstm_1/bias/Initializer/zeros_1#lstm_1/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm_1/bias*
N*
_output_shapes	
:Р
П
lstm_1/biasVarHandleOp*
_class
loc:@lstm_1/bias*
dtype0*
_output_shapes
: *
shape:Р*
shared_namelstm_1/bias
g
,lstm_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_1/bias*
_output_shapes
: 
`
lstm_1/bias/AssignAssignVariableOplstm_1/biaslstm_1/bias/Initializer/concat*
dtype0
h
lstm_1/bias/Read/ReadVariableOpReadVariableOplstm_1/bias*
dtype0*
_output_shapes	
:Р
L
lstm_1/ShapeShapelstm/transpose_1*
_output_shapes
:*
T0
d
lstm_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
f
lstm_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
lstm_1/strided_sliceStridedSlicelstm_1/Shapelstm_1/strided_slice/stacklstm_1/strided_slice/stack_1lstm_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
T
lstm_1/zeros/mul/yConst*
value	B :d*
dtype0*
_output_shapes
: 
b
lstm_1/zeros/mulMullstm_1/strided_slicelstm_1/zeros/mul/y*
T0*
_output_shapes
: 
V
lstm_1/zeros/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
a
lstm_1/zeros/LessLesslstm_1/zeros/mullstm_1/zeros/Less/y*
T0*
_output_shapes
: 
W
lstm_1/zeros/packed/1Const*
value	B :d*
dtype0*
_output_shapes
: 
v
lstm_1/zeros/packedPacklstm_1/strided_slicelstm_1/zeros/packed/1*
T0*
N*
_output_shapes
:
W
lstm_1/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
o
lstm_1/zerosFilllstm_1/zeros/packedlstm_1/zeros/Const*
T0*'
_output_shapes
:         d
V
lstm_1/zeros_1/mul/yConst*
value	B :d*
dtype0*
_output_shapes
: 
f
lstm_1/zeros_1/mulMullstm_1/strided_slicelstm_1/zeros_1/mul/y*
_output_shapes
: *
T0
X
lstm_1/zeros_1/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
g
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mullstm_1/zeros_1/Less/y*
_output_shapes
: *
T0
Y
lstm_1/zeros_1/packed/1Const*
value	B :d*
dtype0*
_output_shapes
: 
z
lstm_1/zeros_1/packedPacklstm_1/strided_slicelstm_1/zeros_1/packed/1*
T0*
N*
_output_shapes
:
Y
lstm_1/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
u
lstm_1/zeros_1Filllstm_1/zeros_1/packedlstm_1/zeros_1/Const*
T0*'
_output_shapes
:         d
j
lstm_1/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
Ж
lstm_1/transpose	Transposelstm/transpose_1lstm_1/transpose/perm*
T0*5
_output_shapes#
!:                  Р
N
lstm_1/Shape_1Shapelstm_1/transpose*
T0*
_output_shapes
:
f
lstm_1/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
h
lstm_1/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
┌
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1lstm_1/strided_slice_1/stacklstm_1/strided_slice_1/stack_1lstm_1/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
й
lstm_1/TensorArrayTensorArrayV3lstm_1/strided_slice_1*
identical_element_shapes(*!
tensor_array_name
input_ta_0*
dtype0*
_output_shapes

:: 
_
lstm_1/TensorArrayUnstack/ShapeShapelstm_1/transpose*
T0*
_output_shapes
:
w
-lstm_1/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/lstm_1/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/lstm_1/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
п
'lstm_1/TensorArrayUnstack/strided_sliceStridedSlicelstm_1/TensorArrayUnstack/Shape-lstm_1/TensorArrayUnstack/strided_slice/stack/lstm_1/TensorArrayUnstack/strided_slice/stack_1/lstm_1/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
g
%lstm_1/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%lstm_1/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
─
lstm_1/TensorArrayUnstack/rangeRange%lstm_1/TensorArrayUnstack/range/start'lstm_1/TensorArrayUnstack/strided_slice%lstm_1/TensorArrayUnstack/range/delta*#
_output_shapes
:         
№
Alstm_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_1/TensorArraylstm_1/TensorArrayUnstack/rangelstm_1/transposelstm_1/TensorArray:1*
T0*#
_class
loc:@lstm_1/transpose*
_output_shapes
: 
f
lstm_1/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
h
lstm_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
lstm_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ю
lstm_1/strided_slice_2StridedSlicelstm_1/transposelstm_1/strided_slice_2/stacklstm_1/strided_slice_2/stack_1lstm_1/strided_slice_2/stack_2*(
_output_shapes
:         Р*
shrink_axis_mask*
Index0*
T0
\
lstm_1/ones_like/ShapeShapelstm_1/strided_slice_2*
T0*
_output_shapes
:
[
lstm_1/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
{
lstm_1/ones_likeFilllstm_1/ones_like/Shapelstm_1/ones_like/Const*
T0*(
_output_shapes
:         Р
T
lstm_1/ones_like_1/ShapeShapelstm_1/zeros*
_output_shapes
:*
T0
]
lstm_1/ones_like_1/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
А
lstm_1/ones_like_1Filllstm_1/ones_like_1/Shapelstm_1/ones_like_1/Const*
T0*'
_output_shapes
:         d
n

lstm_1/mulMullstm_1/strided_slice_2lstm_1/ones_like*(
_output_shapes
:         Р*
T0
p
lstm_1/mul_1Mullstm_1/strided_slice_2lstm_1/ones_like*(
_output_shapes
:         Р*
T0
p
lstm_1/mul_2Mullstm_1/strided_slice_2lstm_1/ones_like*
T0*(
_output_shapes
:         Р
p
lstm_1/mul_3Mullstm_1/strided_slice_2lstm_1/ones_like*(
_output_shapes
:         Р*
T0
N
lstm_1/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
X
lstm_1/split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 
k
lstm_1/split/ReadVariableOpReadVariableOplstm_1/kernel*
dtype0* 
_output_shapes
:
РР
ж
lstm_1/splitSplitlstm_1/split/split_dimlstm_1/split/ReadVariableOp*
T0*@
_output_shapes.
,:	Рd:	Рd:	Рd:	Рd*
	num_split
c
lstm_1/MatMulMatMul
lstm_1/mullstm_1/split*
T0*'
_output_shapes
:         d
i
lstm_1/MatMul_1MatMullstm_1/mul_1lstm_1/split:1*
T0*'
_output_shapes
:         d
i
lstm_1/MatMul_2MatMullstm_1/mul_2lstm_1/split:2*'
_output_shapes
:         d*
T0
i
lstm_1/MatMul_3MatMullstm_1/mul_3lstm_1/split:3*
T0*'
_output_shapes
:         d
P
lstm_1/Const_1Const*
dtype0*
_output_shapes
: *
value	B :
Z
lstm_1/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
f
lstm_1/split_1/ReadVariableOpReadVariableOplstm_1/bias*
dtype0*
_output_shapes	
:Р
Ш
lstm_1/split_1Splitlstm_1/split_1/split_dimlstm_1/split_1/ReadVariableOp*
T0*,
_output_shapes
:d:d:d:d*
	num_split
j
lstm_1/BiasAddBiasAddlstm_1/MatMullstm_1/split_1*
T0*'
_output_shapes
:         d
p
lstm_1/BiasAdd_1BiasAddlstm_1/MatMul_1lstm_1/split_1:1*
T0*'
_output_shapes
:         d
p
lstm_1/BiasAdd_2BiasAddlstm_1/MatMul_2lstm_1/split_1:2*'
_output_shapes
:         d*
T0
p
lstm_1/BiasAdd_3BiasAddlstm_1/MatMul_3lstm_1/split_1:3*
T0*'
_output_shapes
:         d
g
lstm_1/mul_4Mullstm_1/zeroslstm_1/ones_like_1*
T0*'
_output_shapes
:         d
g
lstm_1/mul_5Mullstm_1/zeroslstm_1/ones_like_1*
T0*'
_output_shapes
:         d
g
lstm_1/mul_6Mullstm_1/zeroslstm_1/ones_like_1*'
_output_shapes
:         d*
T0
g
lstm_1/mul_7Mullstm_1/zeroslstm_1/ones_like_1*
T0*'
_output_shapes
:         d
n
lstm_1/ReadVariableOpReadVariableOplstm_1/recurrent_kernel*
dtype0*
_output_shapes
:	dР
m
lstm_1/strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_3/stack_1Const*
valueB"    d   *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
є
lstm_1/strided_slice_3StridedSlicelstm_1/ReadVariableOplstm_1/strided_slice_3/stacklstm_1/strided_slice_3/stack_1lstm_1/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
end_mask*
_output_shapes

:dd
q
lstm_1/MatMul_4MatMullstm_1/mul_4lstm_1/strided_slice_3*
T0*'
_output_shapes
:         d
f

lstm_1/addAddV2lstm_1/BiasAddlstm_1/MatMul_4*
T0*'
_output_shapes
:         d
S
lstm_1/Const_2Const*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
S
lstm_1/Const_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
a
lstm_1/Mul_8Mul
lstm_1/addlstm_1/Const_2*
T0*'
_output_shapes
:         d
c
lstm_1/Add_1Addlstm_1/Mul_8lstm_1/Const_3*'
_output_shapes
:         d*
T0
c
lstm_1/clip_by_value/Minimum/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
З
lstm_1/clip_by_value/MinimumMinimumlstm_1/Add_1lstm_1/clip_by_value/Minimum/y*
T0*'
_output_shapes
:         d
[
lstm_1/clip_by_value/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
З
lstm_1/clip_by_valueMaximumlstm_1/clip_by_value/Minimumlstm_1/clip_by_value/y*'
_output_shapes
:         d*
T0
p
lstm_1/ReadVariableOp_1ReadVariableOplstm_1/recurrent_kernel*
_output_shapes
:	dР*
dtype0
m
lstm_1/strided_slice_4/stackConst*
valueB"    d   *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_4/stack_1Const*
valueB"    ╚   *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ї
lstm_1/strided_slice_4StridedSlicelstm_1/ReadVariableOp_1lstm_1/strided_slice_4/stacklstm_1/strided_slice_4/stack_1lstm_1/strided_slice_4/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:dd
q
lstm_1/MatMul_5MatMullstm_1/mul_5lstm_1/strided_slice_4*'
_output_shapes
:         d*
T0
j
lstm_1/add_2AddV2lstm_1/BiasAdd_1lstm_1/MatMul_5*
T0*'
_output_shapes
:         d
S
lstm_1/Const_4Const*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
S
lstm_1/Const_5Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
c
lstm_1/Mul_9Mullstm_1/add_2lstm_1/Const_4*
T0*'
_output_shapes
:         d
c
lstm_1/Add_3Addlstm_1/Mul_9lstm_1/Const_5*
T0*'
_output_shapes
:         d
e
 lstm_1/clip_by_value_1/Minimum/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Л
lstm_1/clip_by_value_1/MinimumMinimumlstm_1/Add_3 lstm_1/clip_by_value_1/Minimum/y*
T0*'
_output_shapes
:         d
]
lstm_1/clip_by_value_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Н
lstm_1/clip_by_value_1Maximumlstm_1/clip_by_value_1/Minimumlstm_1/clip_by_value_1/y*
T0*'
_output_shapes
:         d
n
lstm_1/mul_10Mullstm_1/clip_by_value_1lstm_1/zeros_1*'
_output_shapes
:         d*
T0
p
lstm_1/ReadVariableOp_2ReadVariableOplstm_1/recurrent_kernel*
dtype0*
_output_shapes
:	dР
m
lstm_1/strided_slice_5/stackConst*
_output_shapes
:*
valueB"    ╚   *
dtype0
o
lstm_1/strided_slice_5/stack_1Const*
valueB"    ,  *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ї
lstm_1/strided_slice_5StridedSlicelstm_1/ReadVariableOp_2lstm_1/strided_slice_5/stacklstm_1/strided_slice_5/stack_1lstm_1/strided_slice_5/stack_2*
end_mask*
_output_shapes

:dd*

begin_mask*
Index0*
T0
q
lstm_1/MatMul_6MatMullstm_1/mul_6lstm_1/strided_slice_5*'
_output_shapes
:         d*
T0
j
lstm_1/add_4AddV2lstm_1/BiasAdd_2lstm_1/MatMul_6*'
_output_shapes
:         d*
T0
S
lstm_1/TanhTanhlstm_1/add_4*
T0*'
_output_shapes
:         d
i
lstm_1/mul_11Mullstm_1/clip_by_valuelstm_1/Tanh*
T0*'
_output_shapes
:         d
e
lstm_1/add_5AddV2lstm_1/mul_10lstm_1/mul_11*
T0*'
_output_shapes
:         d
p
lstm_1/ReadVariableOp_3ReadVariableOplstm_1/recurrent_kernel*
dtype0*
_output_shapes
:	dР
m
lstm_1/strided_slice_6/stackConst*
valueB"    ,  *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_1/strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ї
lstm_1/strided_slice_6StridedSlicelstm_1/ReadVariableOp_3lstm_1/strided_slice_6/stacklstm_1/strided_slice_6/stack_1lstm_1/strided_slice_6/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:dd
q
lstm_1/MatMul_7MatMullstm_1/mul_7lstm_1/strided_slice_6*
T0*'
_output_shapes
:         d
j
lstm_1/add_6AddV2lstm_1/BiasAdd_3lstm_1/MatMul_7*
T0*'
_output_shapes
:         d
S
lstm_1/Const_6Const*
_output_shapes
: *
valueB
 *═╠L>*
dtype0
S
lstm_1/Const_7Const*
_output_shapes
: *
valueB
 *   ?*
dtype0
d
lstm_1/Mul_12Mullstm_1/add_6lstm_1/Const_6*'
_output_shapes
:         d*
T0
d
lstm_1/Add_7Addlstm_1/Mul_12lstm_1/Const_7*'
_output_shapes
:         d*
T0
e
 lstm_1/clip_by_value_2/Minimum/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Л
lstm_1/clip_by_value_2/MinimumMinimumlstm_1/Add_7 lstm_1/clip_by_value_2/Minimum/y*
T0*'
_output_shapes
:         d
]
lstm_1/clip_by_value_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Н
lstm_1/clip_by_value_2Maximumlstm_1/clip_by_value_2/Minimumlstm_1/clip_by_value_2/y*'
_output_shapes
:         d*
T0
U
lstm_1/Tanh_1Tanhlstm_1/add_5*
T0*'
_output_shapes
:         d
m
lstm_1/mul_13Mullstm_1/clip_by_value_2lstm_1/Tanh_1*
T0*'
_output_shapes
:         d
╥
lstm_1/TensorArray_1TensorArrayV3lstm_1/strided_slice_1*"
tensor_array_nameoutput_ta_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: *$
element_shape:         d
M
lstm_1/timeConst*
dtype0*
_output_shapes
: *
value	B : 
Р
lstm_1/while/EnterEnterlstm_1/time*
T0*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context
Э
lstm_1/while/Enter_1Enterlstm_1/TensorArray_1:1*
T0*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context
д
lstm_1/while/Enter_2Enterlstm_1/zeros*
parallel_iterations *'
_output_shapes
:         d**

frame_namelstm_1/while/while_context*
T0
ж
lstm_1/while/Enter_3Enterlstm_1/zeros_1*
T0*
parallel_iterations *'
_output_shapes
:         d**

frame_namelstm_1/while/while_context
w
lstm_1/while/MergeMergelstm_1/while/Enterlstm_1/while/NextIteration*
T0*
N*
_output_shapes
: : 
}
lstm_1/while/Merge_1Mergelstm_1/while/Enter_1lstm_1/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
О
lstm_1/while/Merge_2Mergelstm_1/while/Enter_2lstm_1/while/NextIteration_2*
N*)
_output_shapes
:         d: *
T0
О
lstm_1/while/Merge_3Mergelstm_1/while/Enter_3lstm_1/while/NextIteration_3*
T0*
N*)
_output_shapes
:         d: 
g
lstm_1/while/LessLesslstm_1/while/Mergelstm_1/while/Less/Enter*
T0*
_output_shapes
: 
│
lstm_1/while/Less/EnterEnterlstm_1/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context
L
lstm_1/while/LoopCondLoopCondlstm_1/while/Less*
_output_shapes
: 
Т
lstm_1/while/SwitchSwitchlstm_1/while/Mergelstm_1/while/LoopCond*
T0*%
_class
loc:@lstm_1/while/Merge*
_output_shapes
: : 
Ш
lstm_1/while/Switch_1Switchlstm_1/while/Merge_1lstm_1/while/LoopCond*
T0*'
_class
loc:@lstm_1/while/Merge_1*
_output_shapes
: : 
║
lstm_1/while/Switch_2Switchlstm_1/while/Merge_2lstm_1/while/LoopCond*:
_output_shapes(
&:         d:         d*
T0*'
_class
loc:@lstm_1/while/Merge_2
║
lstm_1/while/Switch_3Switchlstm_1/while/Merge_3lstm_1/while/LoopCond*
T0*'
_class
loc:@lstm_1/while/Merge_3*:
_output_shapes(
&:         d:         d
Y
lstm_1/while/IdentityIdentitylstm_1/while/Switch:1*
T0*
_output_shapes
: 
]
lstm_1/while/Identity_1Identitylstm_1/while/Switch_1:1*
T0*
_output_shapes
: 
n
lstm_1/while/Identity_2Identitylstm_1/while/Switch_2:1*
T0*'
_output_shapes
:         d
n
lstm_1/while/Identity_3Identitylstm_1/while/Switch_3:1*
T0*'
_output_shapes
:         d
╧
lstm_1/while/TensorArrayReadV3TensorArrayReadV3$lstm_1/while/TensorArrayReadV3/Enterlstm_1/while/Identity&lstm_1/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         Р
└
$lstm_1/while/TensorArrayReadV3/EnterEnterlstm_1/TensorArray*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelstm_1/while/while_context
э
&lstm_1/while/TensorArrayReadV3/Enter_1EnterAlstm_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context*
T0
В
lstm_1/while/mulMullstm_1/while/TensorArrayReadV3lstm_1/while/mul/Enter*
T0*(
_output_shapes
:         Р
╛
lstm_1/while/mul/EnterEnterlstm_1/ones_like*
T0*
is_constant(*
parallel_iterations *(
_output_shapes
:         Р**

frame_namelstm_1/while/while_context
Д
lstm_1/while/mul_1Mullstm_1/while/TensorArrayReadV3lstm_1/while/mul/Enter*
T0*(
_output_shapes
:         Р
Д
lstm_1/while/mul_2Mullstm_1/while/TensorArrayReadV3lstm_1/while/mul/Enter*
T0*(
_output_shapes
:         Р
Д
lstm_1/while/mul_3Mullstm_1/while/TensorArrayReadV3lstm_1/while/mul/Enter*(
_output_shapes
:         Р*
T0
l
lstm_1/while/ConstConst^lstm_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
v
lstm_1/while/split/split_dimConst^lstm_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
г
!lstm_1/while/split/ReadVariableOpReadVariableOp'lstm_1/while/split/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0* 
_output_shapes
:
РР
║
'lstm_1/while/split/ReadVariableOp/EnterEnterlstm_1/kernel*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context
╕
lstm_1/while/splitSplitlstm_1/while/split/split_dim!lstm_1/while/split/ReadVariableOp*@
_output_shapes.
,:	Рd:	Рd:	Рd:	Рd*
	num_split*
T0
u
lstm_1/while/MatMulMatMullstm_1/while/mullstm_1/while/split*'
_output_shapes
:         d*
T0
{
lstm_1/while/MatMul_1MatMullstm_1/while/mul_1lstm_1/while/split:1*'
_output_shapes
:         d*
T0
{
lstm_1/while/MatMul_2MatMullstm_1/while/mul_2lstm_1/while/split:2*'
_output_shapes
:         d*
T0
{
lstm_1/while/MatMul_3MatMullstm_1/while/mul_3lstm_1/while/split:3*
T0*'
_output_shapes
:         d
n
lstm_1/while/Const_1Const^lstm_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
x
lstm_1/while/split_1/split_dimConst^lstm_1/while/Identity*
dtype0*
_output_shapes
: *
value	B : 
в
#lstm_1/while/split_1/ReadVariableOpReadVariableOp)lstm_1/while/split_1/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0*
_output_shapes	
:Р
║
)lstm_1/while/split_1/ReadVariableOp/EnterEnterlstm_1/bias*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelstm_1/while/while_context
к
lstm_1/while/split_1Splitlstm_1/while/split_1/split_dim#lstm_1/while/split_1/ReadVariableOp*
T0*,
_output_shapes
:d:d:d:d*
	num_split
|
lstm_1/while/BiasAddBiasAddlstm_1/while/MatMullstm_1/while/split_1*
T0*'
_output_shapes
:         d
В
lstm_1/while/BiasAdd_1BiasAddlstm_1/while/MatMul_1lstm_1/while/split_1:1*'
_output_shapes
:         d*
T0
В
lstm_1/while/BiasAdd_2BiasAddlstm_1/while/MatMul_2lstm_1/while/split_1:2*'
_output_shapes
:         d*
T0
В
lstm_1/while/BiasAdd_3BiasAddlstm_1/while/MatMul_3lstm_1/while/split_1:3*
T0*'
_output_shapes
:         d
~
lstm_1/while/mul_4Mullstm_1/while/Identity_2lstm_1/while/mul_4/Enter*
T0*'
_output_shapes
:         d
┴
lstm_1/while/mul_4/EnterEnterlstm_1/ones_like_1*'
_output_shapes
:         d**

frame_namelstm_1/while/while_context*
T0*
is_constant(*
parallel_iterations 
~
lstm_1/while/mul_5Mullstm_1/while/Identity_2lstm_1/while/mul_4/Enter*'
_output_shapes
:         d*
T0
~
lstm_1/while/mul_6Mullstm_1/while/Identity_2lstm_1/while/mul_4/Enter*
T0*'
_output_shapes
:         d
~
lstm_1/while/mul_7Mullstm_1/while/Identity_2lstm_1/while/mul_4/Enter*'
_output_shapes
:         d*
T0
Ц
lstm_1/while/ReadVariableOpReadVariableOp!lstm_1/while/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0*
_output_shapes
:	dР
╛
!lstm_1/while/ReadVariableOp/EnterEnterlstm_1/recurrent_kernel*
_output_shapes
: **

frame_namelstm_1/while/while_context*
T0*
is_constant(*
parallel_iterations 
Й
 lstm_1/while/strided_slice/stackConst^lstm_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:
Л
"lstm_1/while/strided_slice/stack_1Const^lstm_1/while/Identity*
valueB"    d   *
dtype0*
_output_shapes
:
Л
"lstm_1/while/strided_slice/stack_2Const^lstm_1/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Й
lstm_1/while/strided_sliceStridedSlicelstm_1/while/ReadVariableOp lstm_1/while/strided_slice/stack"lstm_1/while/strided_slice/stack_1"lstm_1/while/strided_slice/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:dd
Б
lstm_1/while/MatMul_4MatMullstm_1/while/mul_4lstm_1/while/strided_slice*
T0*'
_output_shapes
:         d
x
lstm_1/while/addAddV2lstm_1/while/BiasAddlstm_1/while/MatMul_4*
T0*'
_output_shapes
:         d
q
lstm_1/while/Const_2Const^lstm_1/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *═╠L>
q
lstm_1/while/Const_3Const^lstm_1/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
s
lstm_1/while/Mul_8Mullstm_1/while/addlstm_1/while/Const_2*'
_output_shapes
:         d*
T0
u
lstm_1/while/Add_1Addlstm_1/while/Mul_8lstm_1/while/Const_3*
T0*'
_output_shapes
:         d
Б
$lstm_1/while/clip_by_value/Minimum/yConst^lstm_1/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Щ
"lstm_1/while/clip_by_value/MinimumMinimumlstm_1/while/Add_1$lstm_1/while/clip_by_value/Minimum/y*
T0*'
_output_shapes
:         d
y
lstm_1/while/clip_by_value/yConst^lstm_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Щ
lstm_1/while/clip_by_valueMaximum"lstm_1/while/clip_by_value/Minimumlstm_1/while/clip_by_value/y*
T0*'
_output_shapes
:         d
Ш
lstm_1/while/ReadVariableOp_1ReadVariableOp!lstm_1/while/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0*
_output_shapes
:	dР
Л
"lstm_1/while/strided_slice_1/stackConst^lstm_1/while/Identity*
valueB"    d   *
dtype0*
_output_shapes
:
Н
$lstm_1/while/strided_slice_1/stack_1Const^lstm_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"    ╚   
Н
$lstm_1/while/strided_slice_1/stack_2Const^lstm_1/while/Identity*
_output_shapes
:*
valueB"      *
dtype0
У
lstm_1/while/strided_slice_1StridedSlicelstm_1/while/ReadVariableOp_1"lstm_1/while/strided_slice_1/stack$lstm_1/while/strided_slice_1/stack_1$lstm_1/while/strided_slice_1/stack_2*

begin_mask*
T0*
Index0*
end_mask*
_output_shapes

:dd
Г
lstm_1/while/MatMul_5MatMullstm_1/while/mul_5lstm_1/while/strided_slice_1*
T0*'
_output_shapes
:         d
|
lstm_1/while/add_2AddV2lstm_1/while/BiasAdd_1lstm_1/while/MatMul_5*'
_output_shapes
:         d*
T0
q
lstm_1/while/Const_4Const^lstm_1/while/Identity*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
q
lstm_1/while/Const_5Const^lstm_1/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
lstm_1/while/Mul_9Mullstm_1/while/add_2lstm_1/while/Const_4*'
_output_shapes
:         d*
T0
u
lstm_1/while/Add_3Addlstm_1/while/Mul_9lstm_1/while/Const_5*
T0*'
_output_shapes
:         d
Г
&lstm_1/while/clip_by_value_1/Minimum/yConst^lstm_1/while/Identity*
_output_shapes
: *
valueB
 *  А?*
dtype0
Э
$lstm_1/while/clip_by_value_1/MinimumMinimumlstm_1/while/Add_3&lstm_1/while/clip_by_value_1/Minimum/y*
T0*'
_output_shapes
:         d
{
lstm_1/while/clip_by_value_1/yConst^lstm_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
lstm_1/while/clip_by_value_1Maximum$lstm_1/while/clip_by_value_1/Minimumlstm_1/while/clip_by_value_1/y*
T0*'
_output_shapes
:         d
Г
lstm_1/while/mul_10Mullstm_1/while/clip_by_value_1lstm_1/while/Identity_3*'
_output_shapes
:         d*
T0
Ш
lstm_1/while/ReadVariableOp_2ReadVariableOp!lstm_1/while/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0*
_output_shapes
:	dР
Л
"lstm_1/while/strided_slice_2/stackConst^lstm_1/while/Identity*
valueB"    ╚   *
dtype0*
_output_shapes
:
Н
$lstm_1/while/strided_slice_2/stack_1Const^lstm_1/while/Identity*
valueB"    ,  *
dtype0*
_output_shapes
:
Н
$lstm_1/while/strided_slice_2/stack_2Const^lstm_1/while/Identity*
_output_shapes
:*
valueB"      *
dtype0
У
lstm_1/while/strided_slice_2StridedSlicelstm_1/while/ReadVariableOp_2"lstm_1/while/strided_slice_2/stack$lstm_1/while/strided_slice_2/stack_1$lstm_1/while/strided_slice_2/stack_2*

begin_mask*
Index0*
T0*
end_mask*
_output_shapes

:dd
Г
lstm_1/while/MatMul_6MatMullstm_1/while/mul_6lstm_1/while/strided_slice_2*
T0*'
_output_shapes
:         d
|
lstm_1/while/add_4AddV2lstm_1/while/BiasAdd_2lstm_1/while/MatMul_6*
T0*'
_output_shapes
:         d
_
lstm_1/while/TanhTanhlstm_1/while/add_4*
T0*'
_output_shapes
:         d
{
lstm_1/while/mul_11Mullstm_1/while/clip_by_valuelstm_1/while/Tanh*'
_output_shapes
:         d*
T0
w
lstm_1/while/add_5AddV2lstm_1/while/mul_10lstm_1/while/mul_11*
T0*'
_output_shapes
:         d
Ш
lstm_1/while/ReadVariableOp_3ReadVariableOp!lstm_1/while/ReadVariableOp/Enter^lstm_1/while/Identity*
dtype0*
_output_shapes
:	dР
Л
"lstm_1/while/strided_slice_3/stackConst^lstm_1/while/Identity*
valueB"    ,  *
dtype0*
_output_shapes
:
Н
$lstm_1/while/strided_slice_3/stack_1Const^lstm_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:
Н
$lstm_1/while/strided_slice_3/stack_2Const^lstm_1/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
У
lstm_1/while/strided_slice_3StridedSlicelstm_1/while/ReadVariableOp_3"lstm_1/while/strided_slice_3/stack$lstm_1/while/strided_slice_3/stack_1$lstm_1/while/strided_slice_3/stack_2*
T0*
Index0*

begin_mask*
end_mask*
_output_shapes

:dd
Г
lstm_1/while/MatMul_7MatMullstm_1/while/mul_7lstm_1/while/strided_slice_3*
T0*'
_output_shapes
:         d
|
lstm_1/while/add_6AddV2lstm_1/while/BiasAdd_3lstm_1/while/MatMul_7*
T0*'
_output_shapes
:         d
q
lstm_1/while/Const_6Const^lstm_1/while/Identity*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
q
lstm_1/while/Const_7Const^lstm_1/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
v
lstm_1/while/Mul_12Mullstm_1/while/add_6lstm_1/while/Const_6*
T0*'
_output_shapes
:         d
v
lstm_1/while/Add_7Addlstm_1/while/Mul_12lstm_1/while/Const_7*
T0*'
_output_shapes
:         d
Г
&lstm_1/while/clip_by_value_2/Minimum/yConst^lstm_1/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Э
$lstm_1/while/clip_by_value_2/MinimumMinimumlstm_1/while/Add_7&lstm_1/while/clip_by_value_2/Minimum/y*'
_output_shapes
:         d*
T0
{
lstm_1/while/clip_by_value_2/yConst^lstm_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
lstm_1/while/clip_by_value_2Maximum$lstm_1/while/clip_by_value_2/Minimumlstm_1/while/clip_by_value_2/y*'
_output_shapes
:         d*
T0
a
lstm_1/while/Tanh_1Tanhlstm_1/while/add_5*
T0*'
_output_shapes
:         d

lstm_1/while/mul_13Mullstm_1/while/clip_by_value_2lstm_1/while/Tanh_1*'
_output_shapes
:         d*
T0
М
0lstm_1/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV36lstm_1/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_1/while/Identitylstm_1/while/mul_13lstm_1/while/Identity_1*
T0*&
_class
loc:@lstm_1/while/mul_13*
_output_shapes
: 
№
6lstm_1/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_1/TensorArray_1*
T0*&
_class
loc:@lstm_1/while/mul_13*
parallel_iterations *
is_constant(**

frame_namelstm_1/while/while_context*
_output_shapes
:
n
lstm_1/while/add_8/yConst^lstm_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
lstm_1/while/add_8AddV2lstm_1/while/Identitylstm_1/while/add_8/y*
T0*
_output_shapes
: 
`
lstm_1/while/NextIterationNextIterationlstm_1/while/add_8*
T0*
_output_shapes
: 
А
lstm_1/while/NextIteration_1NextIteration0lstm_1/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
t
lstm_1/while/NextIteration_2NextIterationlstm_1/while/mul_13*
T0*'
_output_shapes
:         d
s
lstm_1/while/NextIteration_3NextIterationlstm_1/while/add_5*
T0*'
_output_shapes
:         d
O
lstm_1/while/ExitExitlstm_1/while/Switch*
T0*
_output_shapes
: 
S
lstm_1/while/Exit_1Exitlstm_1/while/Switch_1*
T0*
_output_shapes
: 
d
lstm_1/while/Exit_2Exitlstm_1/while/Switch_2*'
_output_shapes
:         d*
T0
d
lstm_1/while/Exit_3Exitlstm_1/while/Switch_3*'
_output_shapes
:         d*
T0
к
)lstm_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm_1/TensorArray_1lstm_1/while/Exit_1*
_output_shapes
: *'
_class
loc:@lstm_1/TensorArray_1
О
#lstm_1/TensorArrayStack/range/startConst*
value	B : *'
_class
loc:@lstm_1/TensorArray_1*
dtype0*
_output_shapes
: 
О
#lstm_1/TensorArrayStack/range/deltaConst*
value	B :*'
_class
loc:@lstm_1/TensorArray_1*
dtype0*
_output_shapes
: 
щ
lstm_1/TensorArrayStack/rangeRange#lstm_1/TensorArrayStack/range/start)lstm_1/TensorArrayStack/TensorArraySizeV3#lstm_1/TensorArrayStack/range/delta*'
_class
loc:@lstm_1/TensorArray_1*#
_output_shapes
:         
Ю
+lstm_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm_1/TensorArray_1lstm_1/TensorArrayStack/rangelstm_1/while/Exit_1*'
_class
loc:@lstm_1/TensorArray_1*
dtype0*4
_output_shapes"
 :                  d*$
element_shape:         d
o
lstm_1/strided_slice_7/stackConst*
valueB:
         *
dtype0*
_output_shapes
:
h
lstm_1/strided_slice_7/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
h
lstm_1/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
lstm_1/strided_slice_7StridedSlice+lstm_1/TensorArrayStack/TensorArrayGatherV3lstm_1/strided_slice_7/stacklstm_1/strided_slice_7/stack_1lstm_1/strided_slice_7/stack_2*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask
l
lstm_1/transpose_1/permConst*
dtype0*
_output_shapes
:*!
valueB"          
д
lstm_1/transpose_1	Transpose+lstm_1/TensorArrayStack/TensorArrayGatherV3lstm_1/transpose_1/perm*
T0*4
_output_shapes"
 :                  d
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"d      *
_class
loc:@dense/kernel*
dtype0
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *▐%w╛*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *▐%w>*
_class
loc:@dense/kernel
╠
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:d
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*
_class
loc:@dense/kernel
╥
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_output_shapes

:d*
T0*
_class
loc:@dense/kernel
Х
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: *
shape
:d*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:d
И
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Л

dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: *
shape:
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:d
}
dense/MatMulMatMullstm_1/strided_slice_7dense/MatMul/ReadVariableOp*'
_output_shapes
:         *
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*'
_output_shapes
:         *
T0
Y
dense/SoftmaxSoftmaxdense/BiasAdd*
T0*'
_output_shapes
:         

initNoOp
]
init_all_tablesNoOpD^string_to_index/hash_table/table_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
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
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_f6e428ece14a463082d2844f02d96ff5/part*
dtype0
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Т
save/SaveV2/tensor_namesConst"/device:CPU:0*╢
valueмBй
B
dense/biasBdense/kernelBembedding/embeddingsBglobal_stepB	lstm/biasBlstm/kernelBlstm/recurrent_kernelBlstm_1/biasBlstm_1/kernelBlstm_1/recurrent_kernel*
dtype0*
_output_shapes
:

Ж
save/SaveV2/shape_and_slicesConst"/device:CPU:0*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

с
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOpglobal_steplstm/bias/Read/ReadVariableOplstm/kernel/Read/ReadVariableOp)lstm/recurrent_kernel/Read/ReadVariableOplstm_1/bias/Read/ReadVariableOp!lstm_1/kernel/Read/ReadVariableOp+lstm_1/recurrent_kernel/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
Х
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*╢
valueмBй
B
dense/biasBdense/kernelBembedding/embeddingsBglobal_stepB	lstm/biasBlstm/kernelBlstm/recurrent_kernelBlstm_1/biasBlstm_1/kernelBlstm_1/recurrent_kernel*
dtype0
Й
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

╠
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
S
save/AssignVariableOpAssignVariableOp
dense/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
W
save/AssignVariableOp_1AssignVariableOpdense/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
_
save/AssignVariableOp_2AssignVariableOpembedding/embeddingssave/Identity_3*
dtype0
u
save/AssignAssignglobal_stepsave/RestoreV2:3*
_class
loc:@global_step*
_output_shapes
: *
T0	
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
T
save/AssignVariableOp_3AssignVariableOp	lstm/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
V
save/AssignVariableOp_4AssignVariableOplstm/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
_output_shapes
:*
T0
`
save/AssignVariableOp_5AssignVariableOplstm/recurrent_kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
_output_shapes
:*
T0
V
save/AssignVariableOp_6AssignVariableOplstm_1/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
_output_shapes
:*
T0
X
save/AssignVariableOp_7AssignVariableOplstm_1/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
_output_shapes
:*
T0
b
save/AssignVariableOp_8AssignVariableOplstm_1/recurrent_kernelsave/Identity_9*
dtype0
Р
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8
-
save/restore_allNoOp^save/restore_shard"Ж<
save/Const:0save/Identity:0save/restore_all (5 @F8"Х	
trainable_variables¤·
Ш
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08
У
lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
|
lstm_1/kernel:0lstm_1/kernel/Assign#lstm_1/kernel/Read/ReadVariableOp:0(2*lstm_1/kernel/Initializer/random_uniform:08
Ы
lstm_1/recurrent_kernel:0lstm_1/recurrent_kernel/Assign-lstm_1/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_1/recurrent_kernel/Initializer/mul_1:08
l
lstm_1/bias:0lstm_1/bias/Assign!lstm_1/bias/Read/ReadVariableOp:0(2 lstm_1/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08"НK
while_context√J°J
Л$
lstm/while/while_context  *lstm/while/LoopCond:02lstm/while/Merge:0:lstm/while/Identity:0Blstm/while/Exit:0Blstm/while/Exit_1:0Blstm/while/Exit_2:0Blstm/while/Exit_3:0J■!
lstm/TensorArray:0
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm/TensorArray_1:0
lstm/bias:0
lstm/kernel:0
lstm/ones_like:0
lstm/ones_like_1:0
lstm/recurrent_kernel:0
lstm/strided_slice_1:0
lstm/while/Add_1:0
lstm/while/Add_3:0
lstm/while/Add_7:0
lstm/while/BiasAdd:0
lstm/while/BiasAdd_1:0
lstm/while/BiasAdd_2:0
lstm/while/BiasAdd_3:0
lstm/while/Const:0
lstm/while/Const_1:0
lstm/while/Const_2:0
lstm/while/Const_3:0
lstm/while/Const_4:0
lstm/while/Const_5:0
lstm/while/Const_6:0
lstm/while/Const_7:0
lstm/while/Enter:0
lstm/while/Enter_1:0
lstm/while/Enter_2:0
lstm/while/Enter_3:0
lstm/while/Exit:0
lstm/while/Exit_1:0
lstm/while/Exit_2:0
lstm/while/Exit_3:0
lstm/while/Identity:0
lstm/while/Identity_1:0
lstm/while/Identity_2:0
lstm/while/Identity_3:0
lstm/while/Less/Enter:0
lstm/while/Less:0
lstm/while/LoopCond:0
lstm/while/MatMul:0
lstm/while/MatMul_1:0
lstm/while/MatMul_2:0
lstm/while/MatMul_3:0
lstm/while/MatMul_4:0
lstm/while/MatMul_5:0
lstm/while/MatMul_6:0
lstm/while/MatMul_7:0
lstm/while/Merge:0
lstm/while/Merge:1
lstm/while/Merge_1:0
lstm/while/Merge_1:1
lstm/while/Merge_2:0
lstm/while/Merge_2:1
lstm/while/Merge_3:0
lstm/while/Merge_3:1
lstm/while/Mul_12:0
lstm/while/Mul_8:0
lstm/while/Mul_9:0
lstm/while/NextIteration:0
lstm/while/NextIteration_1:0
lstm/while/NextIteration_2:0
lstm/while/NextIteration_3:0
!lstm/while/ReadVariableOp/Enter:0
lstm/while/ReadVariableOp:0
lstm/while/ReadVariableOp_1:0
lstm/while/ReadVariableOp_2:0
lstm/while/ReadVariableOp_3:0
lstm/while/Switch:0
lstm/while/Switch:1
lstm/while/Switch_1:0
lstm/while/Switch_1:1
lstm/while/Switch_2:0
lstm/while/Switch_2:1
lstm/while/Switch_3:0
lstm/while/Switch_3:1
lstm/while/Tanh:0
lstm/while/Tanh_1:0
$lstm/while/TensorArrayReadV3/Enter:0
&lstm/while/TensorArrayReadV3/Enter_1:0
lstm/while/TensorArrayReadV3:0
6lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
0lstm/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm/while/add:0
lstm/while/add_2:0
lstm/while/add_4:0
lstm/while/add_5:0
lstm/while/add_6:0
lstm/while/add_8/y:0
lstm/while/add_8:0
$lstm/while/clip_by_value/Minimum/y:0
"lstm/while/clip_by_value/Minimum:0
lstm/while/clip_by_value/y:0
lstm/while/clip_by_value:0
&lstm/while/clip_by_value_1/Minimum/y:0
$lstm/while/clip_by_value_1/Minimum:0
lstm/while/clip_by_value_1/y:0
lstm/while/clip_by_value_1:0
&lstm/while/clip_by_value_2/Minimum/y:0
$lstm/while/clip_by_value_2/Minimum:0
lstm/while/clip_by_value_2/y:0
lstm/while/clip_by_value_2:0
lstm/while/mul/Enter:0
lstm/while/mul:0
lstm/while/mul_10:0
lstm/while/mul_11:0
lstm/while/mul_13:0
lstm/while/mul_1:0
lstm/while/mul_2:0
lstm/while/mul_3:0
lstm/while/mul_4/Enter:0
lstm/while/mul_4:0
lstm/while/mul_5:0
lstm/while/mul_6:0
lstm/while/mul_7:0
'lstm/while/split/ReadVariableOp/Enter:0
!lstm/while/split/ReadVariableOp:0
lstm/while/split/split_dim:0
lstm/while/split:0
lstm/while/split:1
lstm/while/split:2
lstm/while/split:3
)lstm/while/split_1/ReadVariableOp/Enter:0
#lstm/while/split_1/ReadVariableOp:0
lstm/while/split_1/split_dim:0
lstm/while/split_1:0
lstm/while/split_1:1
lstm/while/split_1:2
lstm/while/split_1:3
 lstm/while/strided_slice/stack:0
"lstm/while/strided_slice/stack_1:0
"lstm/while/strided_slice/stack_2:0
lstm/while/strided_slice:0
"lstm/while/strided_slice_1/stack:0
$lstm/while/strided_slice_1/stack_1:0
$lstm/while/strided_slice_1/stack_2:0
lstm/while/strided_slice_1:0
"lstm/while/strided_slice_2/stack:0
$lstm/while/strided_slice_2/stack_1:0
$lstm/while/strided_slice_2/stack_2:0
lstm/while/strided_slice_2:0
"lstm/while/strided_slice_3/stack:0
$lstm/while/strided_slice_3/stack_1:0
$lstm/while/strided_slice_3/stack_2:0
lstm/while/strided_slice_3:0N
lstm/TensorArray_1:06lstm/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0k
Alstm/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0&lstm/while/TensorArrayReadV3/Enter_1:0.
lstm/ones_like_1:0lstm/while/mul_4/Enter:08
lstm/kernel:0'lstm/while/split/ReadVariableOp/Enter:08
lstm/bias:0)lstm/while/split_1/ReadVariableOp/Enter:0*
lstm/ones_like:0lstm/while/mul/Enter:01
lstm/strided_slice_1:0lstm/while/Less/Enter:0:
lstm/TensorArray:0$lstm/while/TensorArrayReadV3/Enter:0<
lstm/recurrent_kernel:0!lstm/while/ReadVariableOp/Enter:0Rlstm/while/Enter:0Rlstm/while/Enter_1:0Rlstm/while/Enter_2:0Rlstm/while/Enter_3:0
ч&
lstm_1/while/while_context  *lstm_1/while/LoopCond:02lstm_1/while/Merge:0:lstm_1/while/Identity:0Blstm_1/while/Exit:0Blstm_1/while/Exit_1:0Blstm_1/while/Exit_2:0Blstm_1/while/Exit_3:0J┬$
lstm_1/TensorArray:0
Clstm_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm_1/TensorArray_1:0
lstm_1/bias:0
lstm_1/kernel:0
lstm_1/ones_like:0
lstm_1/ones_like_1:0
lstm_1/recurrent_kernel:0
lstm_1/strided_slice_1:0
lstm_1/while/Add_1:0
lstm_1/while/Add_3:0
lstm_1/while/Add_7:0
lstm_1/while/BiasAdd:0
lstm_1/while/BiasAdd_1:0
lstm_1/while/BiasAdd_2:0
lstm_1/while/BiasAdd_3:0
lstm_1/while/Const:0
lstm_1/while/Const_1:0
lstm_1/while/Const_2:0
lstm_1/while/Const_3:0
lstm_1/while/Const_4:0
lstm_1/while/Const_5:0
lstm_1/while/Const_6:0
lstm_1/while/Const_7:0
lstm_1/while/Enter:0
lstm_1/while/Enter_1:0
lstm_1/while/Enter_2:0
lstm_1/while/Enter_3:0
lstm_1/while/Exit:0
lstm_1/while/Exit_1:0
lstm_1/while/Exit_2:0
lstm_1/while/Exit_3:0
lstm_1/while/Identity:0
lstm_1/while/Identity_1:0
lstm_1/while/Identity_2:0
lstm_1/while/Identity_3:0
lstm_1/while/Less/Enter:0
lstm_1/while/Less:0
lstm_1/while/LoopCond:0
lstm_1/while/MatMul:0
lstm_1/while/MatMul_1:0
lstm_1/while/MatMul_2:0
lstm_1/while/MatMul_3:0
lstm_1/while/MatMul_4:0
lstm_1/while/MatMul_5:0
lstm_1/while/MatMul_6:0
lstm_1/while/MatMul_7:0
lstm_1/while/Merge:0
lstm_1/while/Merge:1
lstm_1/while/Merge_1:0
lstm_1/while/Merge_1:1
lstm_1/while/Merge_2:0
lstm_1/while/Merge_2:1
lstm_1/while/Merge_3:0
lstm_1/while/Merge_3:1
lstm_1/while/Mul_12:0
lstm_1/while/Mul_8:0
lstm_1/while/Mul_9:0
lstm_1/while/NextIteration:0
lstm_1/while/NextIteration_1:0
lstm_1/while/NextIteration_2:0
lstm_1/while/NextIteration_3:0
#lstm_1/while/ReadVariableOp/Enter:0
lstm_1/while/ReadVariableOp:0
lstm_1/while/ReadVariableOp_1:0
lstm_1/while/ReadVariableOp_2:0
lstm_1/while/ReadVariableOp_3:0
lstm_1/while/Switch:0
lstm_1/while/Switch:1
lstm_1/while/Switch_1:0
lstm_1/while/Switch_1:1
lstm_1/while/Switch_2:0
lstm_1/while/Switch_2:1
lstm_1/while/Switch_3:0
lstm_1/while/Switch_3:1
lstm_1/while/Tanh:0
lstm_1/while/Tanh_1:0
&lstm_1/while/TensorArrayReadV3/Enter:0
(lstm_1/while/TensorArrayReadV3/Enter_1:0
 lstm_1/while/TensorArrayReadV3:0
8lstm_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
2lstm_1/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm_1/while/add:0
lstm_1/while/add_2:0
lstm_1/while/add_4:0
lstm_1/while/add_5:0
lstm_1/while/add_6:0
lstm_1/while/add_8/y:0
lstm_1/while/add_8:0
&lstm_1/while/clip_by_value/Minimum/y:0
$lstm_1/while/clip_by_value/Minimum:0
lstm_1/while/clip_by_value/y:0
lstm_1/while/clip_by_value:0
(lstm_1/while/clip_by_value_1/Minimum/y:0
&lstm_1/while/clip_by_value_1/Minimum:0
 lstm_1/while/clip_by_value_1/y:0
lstm_1/while/clip_by_value_1:0
(lstm_1/while/clip_by_value_2/Minimum/y:0
&lstm_1/while/clip_by_value_2/Minimum:0
 lstm_1/while/clip_by_value_2/y:0
lstm_1/while/clip_by_value_2:0
lstm_1/while/mul/Enter:0
lstm_1/while/mul:0
lstm_1/while/mul_10:0
lstm_1/while/mul_11:0
lstm_1/while/mul_13:0
lstm_1/while/mul_1:0
lstm_1/while/mul_2:0
lstm_1/while/mul_3:0
lstm_1/while/mul_4/Enter:0
lstm_1/while/mul_4:0
lstm_1/while/mul_5:0
lstm_1/while/mul_6:0
lstm_1/while/mul_7:0
)lstm_1/while/split/ReadVariableOp/Enter:0
#lstm_1/while/split/ReadVariableOp:0
lstm_1/while/split/split_dim:0
lstm_1/while/split:0
lstm_1/while/split:1
lstm_1/while/split:2
lstm_1/while/split:3
+lstm_1/while/split_1/ReadVariableOp/Enter:0
%lstm_1/while/split_1/ReadVariableOp:0
 lstm_1/while/split_1/split_dim:0
lstm_1/while/split_1:0
lstm_1/while/split_1:1
lstm_1/while/split_1:2
lstm_1/while/split_1:3
"lstm_1/while/strided_slice/stack:0
$lstm_1/while/strided_slice/stack_1:0
$lstm_1/while/strided_slice/stack_2:0
lstm_1/while/strided_slice:0
$lstm_1/while/strided_slice_1/stack:0
&lstm_1/while/strided_slice_1/stack_1:0
&lstm_1/while/strided_slice_1/stack_2:0
lstm_1/while/strided_slice_1:0
$lstm_1/while/strided_slice_2/stack:0
&lstm_1/while/strided_slice_2/stack_1:0
&lstm_1/while/strided_slice_2/stack_2:0
lstm_1/while/strided_slice_2:0
$lstm_1/while/strided_slice_3/stack:0
&lstm_1/while/strided_slice_3/stack_1:0
&lstm_1/while/strided_slice_3/stack_2:0
lstm_1/while/strided_slice_3:0<
lstm_1/bias:0+lstm_1/while/split_1/ReadVariableOp/Enter:0.
lstm_1/ones_like:0lstm_1/while/mul/Enter:05
lstm_1/strided_slice_1:0lstm_1/while/Less/Enter:0>
lstm_1/TensorArray:0&lstm_1/while/TensorArrayReadV3/Enter:0@
lstm_1/recurrent_kernel:0#lstm_1/while/ReadVariableOp/Enter:0R
lstm_1/TensorArray_1:08lstm_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0o
Clstm_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0(lstm_1/while/TensorArrayReadV3/Enter_1:02
lstm_1/ones_like_1:0lstm_1/while/mul_4/Enter:0<
lstm_1/kernel:0)lstm_1/while/split/ReadVariableOp/Enter:0Rlstm_1/while/Enter:0Rlstm_1/while/Enter_1:0Rlstm_1/while/Enter_2:0Rlstm_1/while/Enter_3:0"ч	
	variables┘	╓	
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
Ш
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
t
lstm/kernel:0lstm/kernel/Assign!lstm/kernel/Read/ReadVariableOp:0(2(lstm/kernel/Initializer/random_uniform:08
У
lstm/recurrent_kernel:0lstm/recurrent_kernel/Assign+lstm/recurrent_kernel/Read/ReadVariableOp:0(2)lstm/recurrent_kernel/Initializer/mul_1:08
d
lstm/bias:0lstm/bias/Assignlstm/bias/Read/ReadVariableOp:0(2lstm/bias/Initializer/concat:08
|
lstm_1/kernel:0lstm_1/kernel/Assign#lstm_1/kernel/Read/ReadVariableOp:0(2*lstm_1/kernel/Initializer/random_uniform:08
Ы
lstm_1/recurrent_kernel:0lstm_1/recurrent_kernel/Assign-lstm_1/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_1/recurrent_kernel/Initializer/mul_1:08
l
lstm_1/bias:0lstm_1/bias/Assign!lstm_1/bias/Read/ReadVariableOp:0(2 lstm_1/bias/Initializer/concat:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08">
asset_filepaths+
)
'string_to_index/hash_table/asset_path:0"\
table_initializerG
E
Cstring_to_index/hash_table/table_init/InitializeTableFromTextFileV2"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"
saved_model_assetsi*g
e
+type.googleapis.com/tensorflow.AssetFileDef6
)
'string_to_index/hash_table/asset_path:0	vocab.txt"%
saved_model_main_op


group_deps*Л
serving_defaultx
)
input 
Placeholder:0         /
dense&
dense/Softmax:0         tensorflow/serving/predict