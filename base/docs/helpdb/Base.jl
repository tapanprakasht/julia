# This file is a part of Julia. License is MIT: http://julialang.org/license

# Base

"""
    systemerror(sysfunc, iftrue)

Raises a `SystemError` for `errno` with the descriptive string `sysfunc` if `iftrue` is `true`
"""
systemerror

"""
    fill!(A, x)

Fill array `A` with the value `x`. If `x` is an object reference, all elements will refer to
the same object. `fill!(A, Foo())` will return `A` filled with the result of evaluating
`Foo()` once.
"""
fill!

"""
    read!(stream::IO, array::Union{Array, BitArray})
    read!(filename::AbstractString, array::Union{Array, BitArray})

Read binary data from an I/O stream or file, filling in `array`.
"""
read!

"""
    empty!(collection) -> collection

Remove all elements from a `collection`.
"""
empty!

"""
    asin(x)

Compute the inverse sine of `x`, where the output is in radians.
"""
asin

"""
    <:(T1, T2)

Subtype operator, equivalent to `issubtype(T1,T2)`.
"""
Base.:(<:)

"""
    takebuf_array(b::IOBuffer)

Obtain the contents of an `IOBuffer` as an array, without copying. Afterwards, the
`IOBuffer` is reset to its initial state.
"""
takebuf_array

"""
    download(url,[localfile])

Download a file from the given url, optionally renaming it to the given local file name.
Note that this function relies on the availability of external tools such as `curl`, `wget`
or `fetch` to download the file and is provided for convenience. For production use or
situations in which more options are needed, please use a package that provides the desired
functionality instead.
"""
download

"""
    lstrip(string, [chars])

Return `string` with any leading whitespace removed. If `chars` (a character, or vector or
set of characters) is provided, instead remove characters contained in it.
"""
lstrip

"""
    powermod(x, p, m)

Compute ``x^p \\pmod m``.
"""
powermod

"""
    typeintersect(T, S)

Compute a type that contains the intersection of `T` and `S`. Usually this will be the
smallest such type or one close to it.
"""
typeintersect

"""
    pointer(array [, index])

Get the native address of an array or string element. Be careful to ensure that a Julia
reference to `a` exists as long as this pointer will be used. This function is "unsafe" like
`unsafe_convert`.

Calling `Ref(array[, index])` is generally preferable to this function.
"""
pointer

"""
    isnan(f) -> Bool

Test whether a floating point number is not a number (NaN).
"""
isnan

"""
    println(x)

Print (using [`print`](:func:`print`)) `x` followed by a newline.
"""
println

"""
    //(num, den)

Divide two integers or rational numbers, giving a `Rational` result.
"""
Base.:(//)

"""
    At_mul_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ⋅B``.
"""
At_mul_B

"""
    methods(f, [types])

Returns the method table for `f`.

If `types` is specified, returns an array of methods whose types match.
"""
methods

"""
    isinteger(x) -> Bool

Test whether `x` or all its elements are numerically equal to some integer
"""
isinteger

"""
    sortrows(A, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Sort the rows of matrix `A` lexicographically.
"""
sortrows

"""
    ./(x, y)

Element-wise right division operator.
"""
Base.:(./)

"""
    IPv6(host::Integer) -> IPv6

Returns IPv6 object from ip address formatted as Integer
"""
IPv6

"""
    prod!(r, A)

Multiply elements of `A` over the singleton dimensions of `r`, and write results to `r`.
"""
prod!

"""
    gensym([tag])

Generates a symbol which will not conflict with other variable names.
"""
gensym

"""
    cummin(A, [dim])

Cumulative minimum along a dimension. The dimension defaults to 1.
"""
cummin

"""
    minabs!(r, A)

Compute the minimum absolute values over the singleton dimensions of `r`, and write values to `r`.
"""
minabs!

"""
    @evalpoly(z, c...)

Evaluate the polynomial ``\\sum_k c[k] z^{k-1}`` for the coefficients `c[1]`, `c[2]`, ...;
that is, the coefficients are given in ascending order by power of `z`.  This macro expands
to efficient inline code that uses either Horner's method or, for complex `z`, a more
efficient Goertzel-like algorithm.
"""
:@evalpoly

"""
    eigfact!(A, [B])

Same as [`eigfact`](:func:`eigfact`), but saves space by overwriting the input `A` (and
`B`), instead of creating a copy.
"""
eigfact!

"""
    cosh(x)

Compute hyperbolic cosine of `x`.
"""
cosh

"""
    ipermutedims(A, perm)

Like [`permutedims`](:func:`permutedims`), except the inverse of the given permutation is applied.
"""
ipermutedims

"""
    dirname(path::AbstractString) -> AbstractString

Get the directory part of a path.
"""
dirname

"""
    isfile(path) -> Bool

Returns `true` if `path` is a regular file, `false` otherwise.
"""
isfile

"""
    diff(A, [dim])

Finite difference operator of matrix or vector.
"""
diff

"""
    precision(num::AbstractFloat)

Get the precision of a floating point number, as defined by the effective number of bits in
the mantissa.
"""
precision

"""
    readlines(stream::IO)
    readlines(filename::AbstractString)

Read all lines of an I/O stream or a file as a vector of strings.
The text is assumed to be encoded in UTF-8.
"""
readlines

"""
    foldl(op, v0, itr)

Like [`reduce`](:func:`reduce`), but with guaranteed left associativity. `v0` will be used
exactly once.
"""
foldl(op, v0, itr)

"""
    foldl(op, itr)

Like `foldl(op, v0, itr)`, but using the first element of `itr` as `v0`. In general, this
cannot be used with empty collections (see `reduce(op, itr)`).
"""
foldl(op, itr)

"""
    Ac_rdiv_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ / B``.
"""
Ac_rdiv_B


"""
    linspace(start, stop, n=50)

Construct a range of `n` linearly spaced elements from `start` to `stop`.
"""
linspace

"""
    promote_type(type1, type2)

Determine a type big enough to hold values of each argument type without loss, whenever
possible. In some cases, where no type exists to which both types can be promoted
losslessly, some loss is tolerated; for example, `promote_type(Int64,Float64)` returns
`Float64` even though strictly, not all `Int64` values can be represented exactly as
`Float64` values.
"""
promote_type

"""
    ind2sub(dims, index) -> subscripts

Returns a tuple of subscripts into an array with dimensions `dims`,
corresponding to the linear index `index`.

**Example**:

```
i, j, ... = ind2sub(size(A), indmax(A))
```

provides the indices of the maximum element.
"""
ind2sub(dims::Tuple, index::Int)

"""
    ind2sub(a, index) -> subscripts

Returns a tuple of subscripts into array `a` corresponding to the linear index `index`.
"""
ind2sub(a, index)

"""
```
.*(x, y)
```

Element-wise multiplication operator.
"""
Base.:(.*)

"""
    range(start, [step], length)

Construct a range by length, given a starting value and optional step (defaults to 1).
"""
range

"""
    eltype(type)

Determine the type of the elements generated by iterating a collection of the given `type`.
For associative collection types, this will be a `Pair{KeyType,ValType}`. The definition
`eltype(x) = eltype(typeof(x))` is provided for convenience so that instances can be passed
instead of types. However the form that accepts a type argument should be defined for new
types.
"""
eltype

"""
    keytype(type)

Get the key type of an associative collection type. Behaves similarly to `eltype`.
"""
keytype

"""
    valtype(type)

Get the value type of an associative collection type. Behaves similarly to `eltype`.
"""
valtype

"""
    edit(path::AbstractString, [line])

Edit a file or directory optionally providing a line number to edit the file at. Returns to
the `julia` prompt when you quit the editor.
"""
edit(path::AbstractString, line=?)

"""
    edit(function, [types])

Edit the definition of a function, optionally specifying a tuple of types to indicate which
method to edit.
"""
edit(::Function, types=?)

"""
    backtrace()

Get a backtrace object for the current program point.
"""
backtrace

"""
    -(x)

Unary minus operator.
"""
-(x)

"""
    -(x, y)

Subtraction operator.
"""
-(x, y)

"""
    mapfoldr(f, op, v0, itr)

Like [`mapreduce`](:func:`mapreduce`), but with guaranteed right associativity. `v0` will be
used exactly once.
"""
mapfoldr(f, op, v0, itr)

"""
    mapfoldr(f, op, itr)

Like `mapfoldr(f, op, v0, itr)`, but using the first element of `itr` as `v0`. In general,
this cannot be used with empty collections (see `reduce(op, itr)`).
"""
mapfoldr(f, op, itr)

"""
    broadcast_setindex!(A, X, inds...)

Broadcasts the `X` and `inds` arrays to a common size and stores the value from each
position in `X` at the indices given by the same positions in `inds`.
"""
broadcast_setindex!

"""
    Nullable(x)

Wrap value `x` in an object of type `Nullable`, which indicates whether a value is present.
`Nullable(x)` yields a non-empty wrapper, and `Nullable{T}()` yields an empty instance of a
wrapper that might contain a value of type `T`.
"""
Nullable

"""
    bits(n)

A string giving the literal bit representation of a number.
"""
bits

"""
    getindex(type[, elements...])

Construct a 1-d array of the specified type. This is usually called with the syntax
`Type[]`. Element values can be specified using `Type[a,b,c,...]`.
"""
getindex(::Type, elements...)

"""
    getindex(A, inds...)

Returns a subset of array `A` as specified by `inds`, where each `ind` may be an
`Int`, a `Range`, or a `Vector`. See the manual section on
[array indexing](:ref:`array indexing <man-array-indexing>`) for details.
"""
getindex(::AbstractArray, inds...)

"""
    getindex(collection, key...)

Retrieve the value(s) stored at the given key or index within a collection. The syntax
`a[i,j,...]` is converted by the compiler to `getindex(a, i, j, ...)`.
"""
getindex(collection, key...)

"""
    cconvert(T,x)

Convert `x` to a value of type `T`, typically by calling `convert(T,x)`

In cases where `x` cannot be safely converted to `T`, unlike `convert`, `cconvert` may
return an object of a type different from `T`, which however is suitable for
`unsafe_convert` to handle.

Neither `convert` nor `cconvert` should take a Julia object and turn it into a `Ptr`.
"""
cconvert

"""
    |>(x, f)

Applies a function to the preceding argument. This allows for easy function chaining.

```jldoctest
julia> [1:5;] |> x->x.^2 |> sum |> inv
0.01818181818181818
```
"""
Base.:(|>)

"""
    assert(cond)

Throw an `AssertionError` if `cond` is `false`. Also available as the macro `@assert expr`.
"""
assert

"""
    sech(x)

Compute the hyperbolic secant of `x`
"""
sech

"""
    filemode(file)

Equivalent to `stat(file).mode`
"""
filemode

"""
    join(io, items, delim, [last])

Print elements of `items` to `io` with `delim` between them. If `last` is specified, it is
used as the final delimiter instead of `delim`.
"""
join(io, items, delim, last)

"""
    deconv(b,a)

Construct vector `c` such that `b = conv(a,c) + r`. Equivalent to polynomial division.
"""
deconv

"""
    insert!(collection, index, item)

Insert an `item` into `collection` at the given `index`. `index` is the index of `item` in
the resulting `collection`.

```jldoctest
julia> insert!([6, 5, 4, 2, 1], 4, 3)
6-element Array{Int64,1}:
 6
 5
 4
 3
 2
 1
```
"""
insert!

"""
    repmat(A, n, m)

Construct a matrix by repeating the given matrix `n` times in dimension 1 and `m` times in
dimension 2.
"""
repmat

"""
    acos(x)

Compute the inverse cosine of `x`, where the output is in radians
"""
acos

"""
    ispath(path) -> Bool

Returns `true` if `path` is a valid filesystem path, `false` otherwise.
"""
ispath

"""
    fdio([name::AbstractString, ]fd::Integer[, own::Bool]) -> IOStream

Create an `IOStream` object from an integer file descriptor. If `own` is `true`, closing
this object will close the underlying descriptor. By default, an `IOStream` is closed when
it is garbage collected. `name` allows you to associate the descriptor with a named file.
"""
fdio

"""
    unsafe_copy!(dest::Ptr{T}, src::Ptr{T}, N)

Copy `N` elements from a source pointer to a destination, with no checking. The size of an
element is determined by the type of the pointers.

The `unsafe` prefix on this function indicates that no validation is performed on the
pointers `dest` and `src` to ensure that they are valid. Incorrect usage may corrupt or
segfault your program, in the same manner as C.
"""
unsafe_copy!{T}(dest::Ptr{T}, src::Ptr{T}, N)

"""
    unsafe_copy!(dest::Array, do, src::Array, so, N)

Copy `N` elements from a source array to a destination, starting at offset `so` in the
source and `do` in the destination (1-indexed).

The `unsafe` prefix on this function indicates that no validation is performed to ensure
that N is inbounds on either array. Incorrect usage may corrupt or segfault your program, in
the same manner as C.
"""
unsafe_copy!(dest::Array, d, src::Array, so, N)

"""
    diag(M[, k])

The `k`th diagonal of a matrix, as a vector. Use `diagm` to construct a diagonal matrix.
"""
diag

"""
    .^(x, y)

Element-wise exponentiation operator.
"""
Base.:(.^)

"""
    isspace(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is any whitespace character. Includes ASCII characters '\\t',
'\\n', '\\v', '\\f', '\\r', and ' ', Latin-1 character U+0085, and characters in Unicode
category Zs. For strings, tests whether this is true for all elements of the string.
"""
isspace

"""
    splitext(path::AbstractString) -> (AbstractString,AbstractString)

If the last component of a path contains a dot, split the path into everything before the
dot and everything including and after the dot. Otherwise, return a tuple of the argument
unmodified and the empty string.
"""
splitext

"""
    gethostname() -> AbstractString

Get the local machine's host name.
"""
gethostname

"""
    replace(string, pat, r[, n])

Search for the given pattern `pat`, and replace each occurrence with `r`. If `n` is
provided, replace at most `n` occurrences. As with search, the second argument may be a
single character, a vector or a set of characters, a string, or a regular expression. If `r`
is a function, each occurrence is replaced with `r(s)` where `s` is the matched substring.
If `pat` is a regular expression and `r` is a `SubstitutionString`, then capture group
references in `r` are replaced with the corresponding matched text.
"""
replace

"""
    chop(string)

Remove the last character from a string.
"""
chop

"""
    Float32(x [, mode::RoundingMode])

Create a Float32 from `x`. If `x` is not exactly representable then `mode` determines how
`x` is rounded.

```jldoctest
julia> Float32(1/3, RoundDown)
0.3333333f0

julia> Float32(1/3, RoundUp)
0.33333334f0
```

See [`RoundingMode`](:obj:`RoundingMode`) for available rounding modes.
"""
Float32

"""
    readuntil(stream::IO, delim)
    readuntil(filename::AbstractString, delim)

Read a string from an I/O stream or a file, up to and including the given delimiter byte.
The text is assumed to be encoded in UTF-8.
"""
readuntil

"""
    isimmutable(v)

Return `true` iff value `v` is immutable.  See [manual](:ref:`man-immutable-composite-types`)
for a discussion of immutability. Note that this function works on values, so if you give it
a type, it will tell you that a value of `DataType` is mutable.
"""
isimmutable

"""
    macroexpand(x)

Takes the expression `x` and returns an equivalent expression with all macros removed (expanded).
"""
macroexpand

"""
    issticky(path) -> Bool

Returns `true` if `path` has the sticky bit set, `false` otherwise.
"""
issticky

"""
    Mmap.mmap(io::Union{IOStream,AbstractString,Mmap.AnonymousMmap}[, type::Type{Array{T,N}}, dims, offset]; grow::Bool=true, shared::Bool=true)
           Mmap.mmap(type::Type{Array{T,N}}, dims)

Create an `Array` whose values are linked to a file, using memory-mapping. This provides a
convenient way of working with data too large to fit in the computer's memory.

The type is an `Array{T,N}` with a bits-type element of `T` and dimension `N` that
determines how the bytes of the array are interpreted. Note that the file must be stored in
binary format, and no format conversions are possible (this is a limitation of operating
systems, not Julia).

`dims` is a tuple or single `Integer` specifying the size or length of the array.

The file is passed via the stream argument, either as an open `IOStream` or filename string.
When you initialize the stream, use `"r"` for a "read-only" array, and `"w+"` to create a
new array used to write values to disk.

If no `type` argument is specified, the default is `Vector{UInt8}`.

Optionally, you can specify an offset (in bytes) if, for example, you want to skip over a
header in the file. The default value for the offset is the current stream position for an
`IOStream`.

The `grow` keyword argument specifies whether the disk file should be grown to accommodate
the requested size of array (if the total file size is < requested array size). Write
privileges are required to grow the file.

The `shared` keyword argument specifies whether the resulting `Array` and changes made to it
will be visible to other processes mapping the same file.

For example, the following code

```julia
# Create a file for mmapping
# (you could alternatively use mmap to do this step, too)
A = rand(1:20, 5, 30)
s = open("/tmp/mmap.bin", "w+")
# We'll write the dimensions of the array as the first two Ints in the file
write(s, size(A,1))
write(s, size(A,2))
# Now write the data
write(s, A)
close(s)

# Test by reading it back in
s = open("/tmp/mmap.bin")   # default is read-only
m = read(s, Int)
n = read(s, Int)
A2 = Mmap.mmap(s, Matrix{Int}, (m,n))
```

creates a `m`-by-`n` `Matrix{Int}`, linked to the file associated with stream `s`.

A more portable file would need to encode the word size -- 32 bit or 64 bit -- and endianness
information in the header. In practice, consider encoding binary data using standard formats
like HDF5 (which can be used with memory-mapping).
"""
Mmap.mmap(io, ::Type, dims, offset)

"""
    Mmap.mmap(io, BitArray, [dims, offset])

Create a `BitArray` whose values are linked to a file, using memory-mapping; it has the same
purpose, works in the same way, and has the same arguments, as [`mmap`](:func:`mmap`), but
the byte representation is different.

**Example**: `B = Mmap.mmap(s, BitArray, (25,30000))`

This would create a 25-by-30000 `BitArray`, linked to the file associated with stream `s`.
"""
Mmap.mmap(io, ::BitArray, dims = ?, offset = ?)

"""
    bessely0(x)

Bessel function of the second kind of order 0, ``Y_0(x)``.
"""
bessely0

"""
    any!(r, A)

Test whether any values in `A` along the singleton dimensions of `r` are `true`, and write
results to `r`.
"""
any!

"""
    filter!(function, collection)

Update `collection`, removing elements for which `function` is `false`. For associative
collections, the function is passed two arguments (key and value).
"""
filter!

"""
    base64decode(string)

Decodes the base64-encoded `string` and returns a `Vector{UInt8}` of the decoded bytes.
"""
base64decode

"""
    oct(n, [pad])

Convert an integer to an octal string, optionally specifying a number of digits to pad to.
"""
oct

"""
    sizeof(T)

Size, in bytes, of the canonical binary representation of the given DataType `T`, if any.
"""
sizeof(::Type)

"""
    sizeof(s::AbstractString)

The number of bytes in string `s`.
"""
sizeof(::AbstractString)

"""
    ===(x, y)
    ≡(x,y)

See the [`is`](:func:`is`) operator.
"""
Base.:(===)

"""
    ReadOnlyMemoryError()

An operation tried to write to memory that is read-only.
"""
ReadOnlyMemoryError

"""
    startswith(string, prefix)

Returns `true` if `string` starts with `prefix`. If `prefix` is a vector or set
of characters, tests whether the first character of `string` belongs to that set.
"""
startswith

"""
    permutedims!(dest, src, perm)

Permute the dimensions of array `src` and store the result in the array `dest`. `perm` is a
vector specifying a permutation of length `ndims(src)`. The preallocated array `dest` should
have `size(dest) == size(src)[perm]` and is completely overwritten. No in-place permutation
is supported and unexpected results will happen if `src` and `dest` have overlapping memory
regions.
"""
permutedims!

"""
    functionloc(f::Function, types)

Returns a tuple `(filename,line)` giving the location of a generic `Function` definition.
"""
functionloc(f, types)

"""
    functionloc(m::Method)

Returns a tuple `(filename,line)` giving the location of a `Method` definition.
"""
functionloc(m)

"""
    last(coll)

Get the last element of an ordered collection, if it can be computed in O(1) time. This is
accomplished by calling [`endof`](:func:`endof`) to get the last index. Returns the end
point of a [`Range`](:obj:`Range`) even if it is empty.
"""
last

"""
    islink(path) -> Bool

Returns `true` if `path` is a symbolic link, `false` otherwise.
"""
islink

"""
    istril(A) -> Bool

Test whether a matrix is lower triangular.
"""
istril

"""
    bin(n, [pad])

Convert an integer to a binary string, optionally specifying a number of digits to pad to.
"""
bin

"""
    cis(z)

Return ``\\exp(iz)``.
"""
cis

"""
    sinh(x)

Compute hyperbolic sine of `x`.
"""
sinh

"""
    ceil([T,] x, [digits, [base]])

`ceil(x)` returns the nearest integral value of the same type as `x` that is greater than or
equal to `x`.

`ceil(T, x)` converts the result to type `T`, throwing an `InexactError` if the value is not
representable.

`digits` and `base` work as for [`round`](:func:`round`).
"""
ceil

"""
    issocket(path) -> Bool

Returns `true` if `path` is a socket, `false` otherwise.
"""
issocket

"""
    srand([rng], [seed])

Reseed the random number generator. If a `seed` is provided, the RNG will give a
reproducible sequence of numbers, otherwise Julia will get entropy from the system. For
`MersenneTwister`, the `seed` may be a non-negative integer, a vector of `UInt32` integers
or a filename, in which case the seed is read from a file. `RandomDevice` does not support
seeding.
"""
srand

"""
    oftype(x, y)

Convert `y` to the type of `x` (`convert(typeof(x), y)`).
"""
oftype

"""
    maxabs!(r, A)

Compute the maximum absolute values over the singleton dimensions of `r`, and write values to `r`.
"""
maxabs!

"""
    nullspace(M)

Basis for nullspace of `M`.
"""
nullspace

"""
    isfinite(f) -> Bool

Test whether a number is finite
"""
isfinite

"""
    push!(collection, items...) -> collection

Insert one or more `items` at the end of `collection`.

```jldoctest
julia> push!([1, 2, 3], 4, 5, 6)
6-element Array{Int64,1}:
 1
 2
 3
 4
 5
 6
```

Use [`append!`](:func:`append!`) to add all the elements of another collection to
`collection`. The result of the preceding example is equivalent to `append!([1, 2, 3], [4,
5, 6])`.
"""
push!

"""
    prevpow(a, x)

The largest `a^n` not greater than `x`, where `n` is a non-negative integer. `a` must be
greater than 1, and `x` must not be less than 1.
"""
prevpow

"""
    permutedims(A, perm)

Permute the dimensions of array `A`. `perm` is a vector specifying a permutation of length
`ndims(A)`. This is a generalization of transpose for multi-dimensional arrays. Transpose is
equivalent to `permutedims(A, [2,1])`.
"""
permutedims

"""
    shuffle!([rng,] v)

In-place version of [`shuffle`](:func:`shuffle`): randomly permute the array `v` in-place,
optionally supplying the random-number generator `rng`.
"""
shuffle!

"""
    fldmod(x, y)

The floored quotient and modulus after division. Equivalent to `(fld(x,y), mod(x,y))`.
"""
fldmod

"""
    promote(xs...)

Convert all arguments to their common promotion type (if any), and return them all (as a tuple).
"""
promote

"""
    gradient(F, [h])

Compute differences along vector `F`, using `h` as the spacing between points. The default
spacing is one.
"""
gradient

"""
    tan(x)

Compute tangent of `x`, where `x` is in radians.
"""
tan

"""
    sprint(f::Function, args...)

Call the given function with an I/O stream and the supplied extra arguments. Everything
written to this I/O stream is returned as a string.
"""
sprint

"""
    fd(stream)

Returns the file descriptor backing the stream or file. Note that this function only applies
to synchronous `File`'s and `IOStream`'s not to any of the asynchronous streams.
"""
fd

"""
    require(module::Symbol)

This function is part of the implementation of `using` / `import`, if a module is not
already defined in `Main`. It can also be called directly to force reloading a module,
regardless of whether it has been loaded before (for example, when interactively developing
libraries).

Loads a source files, in the context of the `Main` module, on every active node, searching
standard locations for files. `require` is considered a top-level operation, so it sets the
current `include` path but does not use it to search for files (see help for `include`).
This function is typically used to load library code, and is implicitly called by `using` to
load packages.

When searching for files, `require` first looks for package code under `Pkg.dir()`,
then tries paths in the global array `LOAD_PATH`. `require` is case-sensitive on
all platforms, including those with case-insensitive filesystems like macOS and
Windows.
"""
require

"""
    expand(x)

Takes the expression `x` and returns an equivalent expression in lowered form.
"""
expand

"""
    peakflops(n; parallel=false)

`peakflops` computes the peak flop rate of the computer by using double precision
[`gemm!`](:func:`Base.LinAlg.BLAS.gemm!`). By default, if no arguments are specified, it
multiplies a matrix of size `n x n`, where `n = 2000`. If the underlying BLAS is using
multiple threads, higher flop rates are realized. The number of BLAS threads can be set with
`BLAS.set_num_threads(n)`.

If the keyword argument `parallel` is set to `true`, `peakflops` is run in parallel on all
the worker processors. The flop rate of the entire parallel computer is returned. When
running in parallel, only 1 BLAS thread is used. The argument `n` still refers to the size
of the problem that is solved on each processor.
"""
peakflops

"""
    ones(type, dims)

Create an array of all ones of specified type. The type defaults to `Float64` if not specified.
"""
ones(t,dims)

"""
    ones(A)

Create an array of all ones with the same element type and shape as `A`.
"""
ones(A)

"""
    ind2chr(string, i)

Convert a byte index to a character index.
"""
ind2chr

"""
    reshape(A, dims)

Create an array with the same data as the given array, but with different dimensions.
"""
reshape

"""
    randsubseq!(S, A, p)

Like `randsubseq`, but the results are stored in `S` (which is resized as needed).
"""
randsubseq!

"""
    maximum(A, dims)

Compute the maximum value of an array over the given dimensions.
"""
maximum(A,dims)

"""
    redisplay(x)
    redisplay(d::Display, x)
    redisplay(mime, x)
    redisplay(d::Display, mime, x)

By default, the `redisplay` functions simply call `display`. However, some display backends
may override `redisplay` to modify an existing display of `x` (if any). Using `redisplay` is
also a hint to the backend that `x` may be redisplayed several times, and the backend may
choose to defer the display until (for example) the next interactive prompt.
"""
redisplay

"""
    A_mul_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A⋅Bᴴ``.
"""
A_mul_Bc

"""
    searchsorted(a, x, [by=<transform>,] [lt=<comparison>,] [rev=false])

Returns the range of indices of `a` which compare as equal to `x` according to the order
specified by the `by`, `lt` and `rev` keywords, assuming that `a` is already sorted in that
order. Returns an empty range located at the insertion point if `a` does not contain values
equal to `x`.
"""
searchsorted

"""
    /(x, y)

Right division operator: multiplication of `x` by the inverse of `y` on the right. Gives
floating-point results for integer arguments.
"""
Base.:(/)

"""
    connect([host],port) -> TCPSocket

Connect to the host `host` on port `port`.
"""
connect(host=?, port)

"""
    connect(path) -> PipeEndpoint

Connect to the named pipe / UNIX domain socket at `path`.
"""
connect(path)

"""
    split(string, [chars]; limit=0, keep=true)

Return an array of substrings by splitting the given string on occurrences of the given
character delimiters, which may be specified in any of the formats allowed by `search`'s
second argument (i.e. a single character, collection of characters, string, or regular
expression). If `chars` is omitted, it defaults to the set of all space characters, and
`keep` is taken to be `false`. The two keyword arguments are optional: they are a
maximum size for the result and a flag determining whether empty fields should be kept in
the result.
"""
split

"""
    dump(x)

Show every part of the representation of a value.
"""
dump

"""
    sumabs(itr)

Sum absolute values of all elements in a collection. This is equivalent to `sum(abs(itr))` but faster.
"""
sumabs(itr)

"""
    sumabs(A, dims)

Sum absolute values of elements of an array over the given dimensions.
"""
sumabs(A, dims)

"""
    consume(task, values...)

Receive the next value passed to `produce` by the specified task. Additional arguments may
be passed, to be returned from the last `produce` call in the producer.
"""
consume

"""
    ndigits(n, b = 10)

Compute the number of digits in number `n` written in base `b`.
"""
ndigits

"""
    cummax(A, [dim])

Cumulative maximum along a dimension. The dimension defaults to 1.
"""
cummax

"""
    watch_file(path, timeout_s::Real)

Watch file or directory `path` for changes until a change occurs or `timeout_s` seconds have
elapsed.

The returned value is an object with boolean fields `changed`, `renamed`, and `timedout`,
giving the result of watching the file.

This behavior of this function varies slightly across platforms. See
<https://nodejs.org/api/fs.html#fs_caveats> for more detailed information.
"""
watch_file

"""
    At_rdiv_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ / Bᵀ``.
"""
At_rdiv_Bt

"""
    isinteractive() -> Bool

Determine whether Julia is running an interactive session.
"""
isinteractive

"""
    At_mul_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ⋅Bᵀ``.
"""
At_mul_Bt

"""
    sum!(r, A)

Sum elements of `A` over the singleton dimensions of `r`, and write results to `r`.
"""
sum!

"""
    close(stream)

Close an I/O stream. Performs a `flush` first.
"""
close(stream::IO)

"""
    parentindexes(A)

From an array view `A`, returns the corresponding indexes in the parent.
"""
parentindexes

"""
    display(x)
    display(d::Display, x)
    display(mime, x)
    display(d::Display, mime, x)

Display `x` using the topmost applicable display in the display stack, typically using the
richest supported multimedia output for `x`, with plain-text `STDOUT` output as a fallback.
The `display(d, x)` variant attempts to display `x` on the given display `d` only, throwing
a `MethodError` if `d` cannot display objects of this type.

There are also two variants with a `mime` argument (a MIME type string, such as
`"image/png"`), which attempt to display `x` using the requested MIME type *only*, throwing
a `MethodError` if this type is not supported by either the display(s) or by `x`. With these
variants, one can also supply the "raw" data in the requested MIME type by passing
`x::AbstractString` (for MIME types with text-based storage, such as text/html or
application/postscript) or `x::Vector{UInt8}` (for binary MIME types).
"""
display

"""
    @spawnat

Accepts two arguments, `p` and an expression. A closure is created around the expression and
run asynchronously on process `p`. Returns a `Future` to the result.
"""
:@spawnat

"""
    print_shortest(io, x)

Print the shortest possible representation, with the minimum number of consecutive non-zero
digits, of number `x`, ensuring that it would parse to the exact same number.
"""
print_shortest

"""
    merge(collection, others...)

Construct a merged collection from the given collections. If necessary, the
types of the resulting collection will be promoted to accommodate the types of
the merged collections. If the same key is present in another collection, the
value for that key will be the value it has in the last collection listed.

```jldoctest
julia> a = Dict("foo" => 0.0, "bar" => 42.0)
Dict{String,Float64} with 2 entries:
  "bar" => 42.0
  "foo" => 0.0

julia> b = Dict("baz" => 17, "bar" => 4711)
Dict{String,Int64} with 2 entries:
  "bar" => 4711
  "baz" => 17

julia> merge(a, b)
Dict{String,Float64} with 3 entries:
  "bar" => 4711.0
  "baz" => 17.0
  "foo" => 0.0

julia> merge(b, a)
Dict{String,Float64} with 3 entries:
  "bar" => 42.0
  "baz" => 17.0
  "foo" => 0.0
```
"""
merge

"""
    transpose!(dest,src)

Transpose array `src` and store the result in the preallocated array `dest`, which should
have a size corresponding to `(size(src,2),size(src,1))`. No in-place transposition is
supported and unexpected results will happen if `src` and `dest` have overlapping memory
regions.
"""
transpose!

"""
    isconst([m::Module], s::Symbol) -> Bool

Determine whether a global is declared `const` in a given `Module`. The default `Module`
argument is `current_module()`.
"""
isconst

"""
    open(command, mode::AbstractString="r", stdio=DevNull)

Start running `command` asynchronously, and return a tuple `(stream,process)`.  If `mode` is
`"r"`, then `stream` reads from the process's standard output and `stdio` optionally
specifies the process's standard input stream.  If `mode` is `"w"`, then `stream` writes to
the process's standard input and `stdio` optionally specifies the process's standard output
stream.
"""
open(command::Cmd, mod::AbstractString="r", stdio=DevNull)

"""
    open(f::Function, command, mode::AbstractString="r", stdio=DevNull)

Similar to `open(command, mode, stdio)`, but calls `f(stream)` on the resulting read or
write stream, then closes the stream and waits for the process to complete.  Returns the
value returned by `f`.
"""
open(f::Function, command::Cmd, mod::AbstractString="r", stdio=DevNull)

"""
    open(filename, [read, write, create, truncate, append]) -> IOStream

Open a file in a mode specified by five boolean arguments. The default is to open files for
reading only. Returns a stream for accessing the file.
"""
open(filename, ::Bool, ::Bool, ::Bool, ::Bool, ::Bool)

"""
    open(filename, [mode]) -> IOStream

Alternate syntax for open, where a string-based mode specifier is used instead of the five
booleans. The values of `mode` correspond to those from `fopen(3)` or Perl `open`, and are
equivalent to setting the following boolean groups:

| Mode | Description                   |
|:-----|:------------------------------|
| r    | read                          |
| r+   | read, write                   |
| w    | write, create, truncate       |
| w+   | read, write, create, truncate |
| a    | write, create, append         |
| a+   | read, write, create, append   |
"""
open(filename, mode="r")

"""
    open(f::Function, args...)

Apply the function `f` to the result of `open(args...)` and close the resulting file
descriptor upon completion.

**Example**: `open(readstring, "file.txt")`
"""
open(f::Function, args...)

"""
    sort(v, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Variant of `sort!` that returns a sorted copy of `v` leaving `v` itself unmodified.
"""
sort(v,?,?,?,?)

"""
    sort(A, dim, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Sort a multidimensional array `A` along the given dimension.
"""
sort(A,dim,?,?,?,?)

"""
    kron(A, B)

Kronecker tensor product of two vectors or two matrices.
"""
kron

"""
    process_exited(p::Process)

Determine whether a process has exited.
"""
process_exited

"""
    tuple(xs...)

Construct a tuple of the given objects.
"""
tuple

"""
    eachmatch(r::Regex, s::AbstractString[, overlap::Bool=false])

Search for all matches of a the regular expression `r` in `s` and return a iterator over the
matches. If overlap is `true`, the matching sequences are allowed to overlap indices in the
original string, otherwise they must be from distinct character ranges.
"""
eachmatch

"""
    log10(x)

Compute the logarithm of `x` to base 10. Throws `DomainError` for negative `Real` arguments.
"""
log10

"""
    @profile

`@profile <expression>` runs your expression while taking periodic backtraces. These are
appended to an internal buffer of backtraces.
"""
:@profile

"""
    isdigit(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is a numeric digit (0-9), or whether this is true for all elements
of a string.
"""
isdigit

"""
    num2hex(f)

Get a hexadecimal string of the binary representation of a floating point number.
"""
num2hex

"""
    count_ones(x::Integer) -> Integer

Number of ones in the binary representation of `x`.

```jldoctest
julia> count_ones(7)
3
```
"""
count_ones

"""
    reim(z)

Return both the real and imaginary parts of the complex number `z`.
"""
reim

"""
    displayable(mime) -> Bool
    displayable(d::Display, mime) -> Bool

Returns a boolean value indicating whether the given `mime` type (string) is displayable by
any of the displays in the current display stack, or specifically by the display `d` in the
second variant.
"""
displayable

"""
    sdata(S::SharedArray)

Returns the actual `Array` object backing `S`.
"""
sdata

"""
    truncate(file,n)

Resize the file or buffer given by the first argument to exactly `n` bytes, filling
previously unallocated space with '\\0' if the file or buffer is grown.
"""
truncate

"""
    stat(file)

Returns a structure whose fields contain information about the file. The fields of the
structure are:

| Name    | Description                                                        |
|:--------|:-------------------------------------------------------------------|
| size    | The size (in bytes) of the file                                    |
| device  | ID of the device that contains the file                            |
| inode   | The inode number of the file                                       |
| mode    | The protection mode of the file                                    |
| nlink   | The number of hard links to the file                               |
| uid     | The user id of the owner of the file                               |
| gid     | The group id of the file owner                                     |
| rdev    | If this file refers to a device, the ID of the device it refers to |
| blksize | The file-system preferred block size for the file                  |
| blocks  | The number of such blocks allocated                                |
| mtime   | Unix timestamp of when the file was last modified                  |
| ctime   | Unix timestamp of when the file was created                        |

"""
stat

"""
    exp10(x)

Compute ``10^x``.
"""
exp10

"""
    &(x, y)

Bitwise and.
"""
&

"""
    PipeBuffer()

An IOBuffer that allows reading and performs writes by appending. Seeking and truncating are
not supported. See IOBuffer for the available constructors.
"""
PipeBuffer()

"""
    PipeBuffer(data::Vector{UInt8},[maxsize])

Create a PipeBuffer to operate on a data vector, optionally specifying a size beyond which
the underlying Array may not be grown.
"""
PipeBuffer(data)

"""
    sortperm(v, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Return a permutation vector of indices of `v` that puts it in sorted order. Specify `alg` to
choose a particular sorting algorithm (see Sorting Algorithms). `MergeSort` is used by
default, and since it is stable, the resulting permutation will be the lexicographically
first one that puts the input array into sorted order – i.e. indices of equal elements
appear in ascending order. If you choose a non-stable sorting algorithm such as `QuickSort`,
a different permutation that puts the array into order may be returned. The order is
specified using the same keywords as `sort!`.

See also [`sortperm!`](:func:`sortperm!`).
"""
sortperm

"""
    cumsum!(B, A, [dim])

Cumulative sum of `A` along a dimension, storing the result in `B`. The dimension defaults
to 1.
"""
cumsum!

"""
    logdet(M)

Log of matrix determinant. Equivalent to `log(det(M))`, but may provide increased accuracy
and/or speed.
"""
logdet

"""
    select(v, k, [by=<transform>,] [lt=<comparison>,] [rev=false])

Variant of `select!` which copies `v` before partially sorting it, thereby returning the
same thing as `select!` but leaving `v` unmodified.
"""
select

"""
    lpad(string, n, p)

Make a string at least `n` columns wide when printed, by padding on the left with copies of `p`.
"""
lpad

"""
    mapreduce(f, op, v0, itr)

Apply function `f` to each element in `itr`, and then reduce the result using the binary
function `op`. `v0` must be a neutral element for `op` that will be returned for empty
collections. It is unspecified whether `v0` is used for non-empty collections.

[`mapreduce`](:func:`mapreduce`) is functionally equivalent to calling `reduce(op, v0,
map(f, itr))`, but will in general execute faster since no intermediate collection needs to
be created. See documentation for [`reduce`](:func:`reduce`) and [`map`](:func:`map`).

```jldoctest
julia> mapreduce(x->x^2, +, [1:3;]) # == 1 + 4 + 9
14
```

The associativity of the reduction is implementation-dependent. Additionally, some
implementations may reuse the return value of `f` for elements that appear multiple times in
`itr`. Use [`mapfoldl`](:func:`mapfoldl`) or [`mapfoldr`](:func:`mapfoldr`) instead for
guaranteed left or right associativity and invocation of `f` for every value.
"""
mapreduce(f, op, v0, itr)

"""
    mapreduce(f, op, itr)

Like `mapreduce(f, op, v0, itr)`. In general, this cannot be used with empty collections
(see `reduce(op, itr)`).
"""
mapreduce(f, op, itr)

"""
    accept(server[,client])

Accepts a connection on the given server and returns a connection to the client. An
uninitialized client stream may be provided, in which case it will be used instead of
creating a new stream.
"""
accept

"""
    triu!(M)

Upper triangle of a matrix, overwriting `M` in the process.
"""
triu!(M)

"""
    triu!(M, k)

Returns the upper triangle of `M` starting from the `k`th superdiagonal, overwriting `M` in
the process.
"""
triu!(M, k)

"""
    readstring(stream::IO)
    readstring(filename::AbstractString)

Read the entire contents of an I/O stream or a file as a string.
The text is assumed to be encoded in UTF-8.
"""
readstring

"""
    poll_file(path, interval_s::Real, timeout_s::Real) -> (previous::StatStruct, current::StatStruct)

Monitor a file for changes by polling every `interval_s` seconds until a change occurs or
`timeout_s` seconds have elapsed. The `interval_s` should be a long period; the default is
5.007 seconds.

Returns a pair of `StatStruct` objects `(previous, current)` when a change is detected.

To determine when a file was modified, compare `mtime(prev) != mtime(current)` to detect
notification of changes. However, using `watch_file` for this operation is preferred, since
it is more reliable and efficient, although in some situations it may not be available.
"""
poll_file

"""
    eachline(stream::IO)
    eachline(filename::AbstractString)

Create an iterable object that will yield each line from an I/O stream or a file.
The text is assumed to be encoded in UTF-8.
"""
eachline

"""
    isposdef!(A) -> Bool

Test whether a matrix is positive definite, overwriting `A` in the processes.
"""
isposdef!

"""
    complex(r, [i])

Convert real numbers or arrays to complex. `i` defaults to zero.
"""
complex

"""
    setopt(sock::UDPSocket; multicast_loop = nothing, multicast_ttl=nothing, enable_broadcast=nothing, ttl=nothing)

Set UDP socket options. `multicast_loop`: loopback for multicast packets (default: `true`).
`multicast_ttl`: TTL for multicast packets. `enable_broadcast`: flag must be set to `true`
if socket will be used for broadcast messages, or else the UDP system will return an access
error (default: `false`). `ttl`: Time-to-live of packets sent on the socket.
"""
setopt

"""
    Mmap.Anonymous(name, readonly, create)

Create an `IO`-like object for creating zeroed-out mmapped-memory that is not tied to a file
for use in `Mmap.mmap`. Used by `SharedArray` for creating shared memory arrays.
"""
Mmap.Anonymous

"""
    A_rdiv_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A / Bᴴ``.
"""
A_rdiv_Bc

"""
    strwidth(s)

Gives the number of columns needed to print a string.
"""
strwidth

"""
    hex(n, [pad])

Convert an integer to a hexadecimal string, optionally specifying a number of digits to pad to.
"""
hex

"""
    workspace()

Replace the top-level module (`Main`) with a new one, providing a clean workspace. The
previous `Main` module is made available as `LastMain`. A previously-loaded package can be
accessed using a statement such as `using LastMain.Package`.

This function should only be used interactively.
"""
workspace

"""
    tempdir()

Obtain the path of a temporary directory (possibly shared with other processes).
"""
tempdir

"""
    reduce(op, v0, itr)

Reduce the given collection `ìtr` with the given binary operator `op`. `v0` must be a
neutral element for `op` that will be returned for empty collections. It is unspecified
whether `v0` is used for non-empty collections.

Reductions for certain commonly-used operators have special implementations which should be
used instead: `maximum(itr)`, `minimum(itr)`, `sum(itr)`, `prod(itr)`, `any(itr)`,
`all(itr)`.

The associativity of the reduction is implementation dependent. This means that you can't
use non-associative operations like `-` because it is undefined whether `reduce(-,[1,2,3])`
should be evaluated as `(1-2)-3` or `1-(2-3)`. Use `foldl` or `foldr` instead for guaranteed
left or right associativity.

Some operations accumulate error, and parallelism will also be easier if the reduction can
be executed in groups. Future versions of Julia might change the algorithm. Note that the
elements are not reordered if you use an ordered collection.
"""
reduce(op, v0, itr)

"""
    reduce(op, itr)

Like `reduce(op, v0, itr)`. This cannot be used with empty collections, except for some
special cases (e.g. when `op` is one of `+`, `*`, `max`, `min`, `&`, `|`) when Julia can
determine the neutral element of `op`.
"""
reduce(op, itr)

"""
    .>=(x, y)
    .≥(x,y)

Element-wise greater-than-or-equals comparison operator.
"""
Base.:(.>=)

"""
    mv(src::AbstractString,dst::AbstractString; remove_destination::Bool=false)

Move the file, link, or directory from `src` to `dst`. `remove_destination=true` will first
remove an existing `dst`.
"""
mv

"""
    erfi(x)

Compute the imaginary error function of `x`, defined by ``-i \\operatorname{erf}(ix)``.
"""
erfi

"""
    floor([T,] x, [digits, [base]])

`floor(x)` returns the nearest integral value of the same type as `x` that is less than or
equal to `x`.

`floor(T, x)` converts the result to type `T`, throwing an `InexactError` if the value is
not representable.

`digits` and `base` work as for [`round`](:func:`round`).
"""
floor

"""
    tril!(M)

Lower triangle of a matrix, overwriting `M` in the process.
"""
tril!(M)

"""
    tril!(M, k)

Returns the lower triangle of `M` starting from the `k`th superdiagonal, overwriting `M` in
the process.
"""
tril!(M, k)

"""
    divrem(x, y)

The quotient and remainder from Euclidean division. Equivalent to `(div(x,y), rem(x,y))` or
`(x÷y, x%y)`.
"""
divrem

"""
    ErrorException(msg)

Generic error type. The error message, in the `.msg` field, may provide more specific details.
"""
ErrorException

"""
    reverse(v [, start=1 [, stop=length(v) ]] )

Return a copy of `v` reversed from start to stop.
"""
reverse

"""
    reverse(s::AbstractString) -> AbstractString

Reverses a string.
"""
reverse(s::AbstractString)

"""
    reverse!(v [, start=1 [, stop=length(v) ]]) -> v

In-place version of [`reverse`](:func:`reverse`).
"""
reverse!

"""
    num(x)

Numerator of the rational representation of `x`.
"""
num

"""
    eachindex(A...)

Creates an iterable object for visiting each index of an AbstractArray `A` in an efficient
manner. For array types that have opted into fast linear indexing (like `Array`), this is
simply the range `1:length(A)`. For other array types, this returns a specialized Cartesian
range to efficiently index into the array with indices specified for every dimension. For
other iterables, including strings and dictionaries, this returns an iterator object
supporting arbitrary index types (e.g. unevenly spaced or non-integer indices).

Example for a sparse 2-d array:

```jldoctest
julia> A = sparse([1, 1, 2], [1, 3, 1], [1, 2, -5])
2×3 sparse matrix with 3 Int64 nonzero entries:
        [1, 1]  =  1
        [2, 1]  =  -5
        [1, 3]  =  2

julia> for iter in eachindex(A)
           @show iter.I[1], iter.I[2]
           @show A[iter]
       end
(iter.I[1],iter.I[2]) = (1,1)
A[iter] = 1
(iter.I[1],iter.I[2]) = (2,1)
A[iter] = -5
(iter.I[1],iter.I[2]) = (1,2)
A[iter] = 0
(iter.I[1],iter.I[2]) = (2,2)
A[iter] = 0
(iter.I[1],iter.I[2]) = (1,3)
A[iter] = 2
(iter.I[1],iter.I[2]) = (2,3)
A[iter] = 0
```

If you supply more than one `AbstractArray` argument, `eachindex` will create an
iterable object that is fast for all arguments (a `UnitRange` if all inputs have fast
linear indexing, a CartesianRange otherwise).  If the arrays have different sizes and/or
dimensionalities, `eachindex` returns an iterable that spans the largest range along each
dimension.
"""
eachindex

"""
    .<(x, y)

Element-wise less-than comparison operator.
"""
Base.:(.<)

"""
    UndefRefError()

The item or field is not defined for the given object.
"""
UndefRefError

"""
    bessely1(x)

Bessel function of the second kind of order 1, ``Y_1(x)``.
"""
bessely1

"""
    print(x)

Write (to the default output stream) a canonical (un-decorated) text representation of a
value if there is one, otherwise call `show`. The representation used by `print` includes
minimal formatting and tries to avoid Julia-specific details.
"""
print

"""
    filt(b, a, x, [si])

Apply filter described by vectors `a` and `b` to vector `x`, with an optional initial filter
state vector `si` (defaults to zeros).
"""
filt

"""
    indexpids(S::SharedArray)

Returns the index of the current worker into the `pids` vector, i.e., the list of workers
mapping the SharedArray
"""
indexpids

"""
    append!(collection, collection2) -> collection.

Add the elements of `collection2` to the end of `collection`.

```jldoctest
julia> append!([1],[2,3])
3-element Array{Int64,1}:
 1
 2
 3
```

```jldoctest
julia> append!([1, 2, 3], [4, 5, 6])
6-element Array{Int64,1}:
 1
 2
 3
 4
 5
 6
```

Use [`push!`](:func:`push!`) to add individual items to `collection` which are not already
themselves in another collection. The result is of the preceding example is equivalent to
`push!([1, 2, 3], 4, 5, 6)`.
"""
append!


"""
    ctranspose(A)

The conjugate transposition operator (`'`).
"""
ctranspose

"""
    skip(s, offset)

Seek a stream relative to the current position.
"""
skip

"""
    lu(A) -> L, U, p

Compute the LU factorization of `A`, such that `A[p,:] = L*U`.
"""
lu

"""
    fld(x, y)

Largest integer less than or equal to `x/y`.
"""
fld

"""
    setdiff!(s, iterable)

Remove each element of `iterable` from set `s` in-place.
"""
setdiff!

"""
    isascii(c::Union{Char,AbstractString}) -> Bool

Tests whether a character belongs to the ASCII character set, or whether this is true for
all elements of a string.
"""
isascii

"""
    ucfirst(string)

Returns `string` with the first character converted to uppercase.
"""
ucfirst

"""
    copysign(x, y)

Return `x` such that it has the same sign as `y`
"""
copysign

"""
    getaddrinfo(host)

Gets the IP address of the `host` (may have to do a DNS lookup)
"""
getaddrinfo

"""
    @show

Show an expression and result, returning the result.
"""
:@show

"""
    showcompact(x)

Show a compact representation of a value.

This is used for printing array elements without repeating type information (which would
be redundant with that printed once for the whole array), and without line breaks inside
the representation of an element.

To offer a compact representation different from its standard one, a custom type should
test `get(io, :compact, false)` in its normal `show` method.
"""
showcompact

"""
    isleaftype(T)

Determine whether `T` is a concrete type that can have instances, meaning its only subtypes
are itself and `Union{}` (but `T` itself is not `Union{}`).
"""
isleaftype

"""
    string(xs...)

Create a string from any values using the `print` function.
"""
string

"""
    erfc(x)

Compute the complementary error function of `x`, defined by ``1 - \\operatorname{erf}(x)``.
"""
erfc

"""
    rest(iter, state)

An iterator that yields the same elements as `iter`, but starting at the given `state`.
"""
rest

"""
    getfield(value, name::Symbol)

Extract a named field from a `value` of composite type. The syntax `a.b` calls
`getfield(a, :b)`.
"""
getfield

"""
    besselj1(x)

Bessel function of the first kind of order 1, ``J_1(x)``.
"""
besselj1

"""
    select!(v, k, [by=<transform>,] [lt=<comparison>,] [rev=false])

Partially sort the vector `v` in place, according to the order specified by `by`, `lt` and
`rev` so that the value at index `k` (or range of adjacent values if `k` is a range) occurs
at the position where it would appear if the array were fully sorted via a non-stable
algorithm. If `k` is a single index, that value is returned; if `k` is a range, an array of
values at those indices is returned. Note that `select!` does not fully sort the input
array.
"""
select!

"""
    maximum!(r, A)

Compute the maximum value of `A` over the singleton dimensions of `r`, and write results to `r`.
"""
maximum!

"""
    prod(itr)

Returns the product of all elements of a collection.
"""
prod(itr)

"""
    prod(A, dims)

Multiply elements of an array over the given dimensions.
"""
prod(A, dims)

"""
    isqrt(n)

Integer square root: the largest integer `m` such that `m*m <= n`.
"""
isqrt

"""
    log1p(x)

Accurate natural logarithm of `1+x`. Throws `DomainError` for `Real` arguments less than -1.

There is an experimental variant in the `Base.Math.JuliaLibm` module, which is typically
faster and more accurate.
"""
log1p

"""
    flipsign(x, y)

Return `x` with its sign flipped if `y` is negative. For example `abs(x) = flipsign(x,x)`.
"""
flipsign

"""
    lbeta(x, y)

Natural logarithm of the absolute value of the beta function ``\\log(|\\operatorname{B}(x,y)|)``.
"""
lbeta

"""
    randstring([rng,] len=8)

Create a random ASCII string of length `len`, consisting of upper- and
lower-case letters and the digits 0-9. The optional `rng` argument
specifies a random number generator, see [Random Numbers](:ref:`Random Numbers <random-numbers>`).
"""
randstring

"""
    Float64(x [, mode::RoundingMode])

Create a Float64 from `x`. If `x` is not exactly representable then `mode` determines how
`x` is rounded.

```jldoctest
julia> Float64(pi, RoundDown)
3.141592653589793

julia> Float64(pi, RoundUp)
3.1415926535897936
```

See [`RoundingMode`](:obj:`RoundingMode`) for available rounding modes.
"""
Float64

"""
    mkpath(path, [mode])

Create all directories in the given `path`, with permissions `mode`. `mode` defaults to
`0o777`, modified by the current file creation mask.
"""
mkpath

"""
    union(s1,s2...)
    ∪(s1,s2...)

Construct the union of two or more sets. Maintains order with arrays.
"""
union

"""
    lstat(file)

Like stat, but for symbolic links gets the info for the link itself rather than the file it
refers to. This function must be called on a file path rather than a file object or a file
descriptor.
"""
lstat

"""
    mapfoldl(f, op, v0, itr)

Like [`mapreduce`](:func:`mapreduce`), but with guaranteed left associativity. `v0` will be
used exactly once.
"""
mapfoldl(f, op, v0, itr)

"""
    mapfoldl(f, op, itr)

Like `mapfoldl(f, op, v0, itr)`, but using the first element of `itr` as `v0`. In general,
this cannot be used with empty collections (see `reduce(op, itr)`).
"""
mapfoldl(f, op, itr)

"""
    realmax(T)

The highest finite value representable by the given floating-point DataType `T`.
"""
realmax

"""
    takebuf_string(b::IOBuffer)

Obtain the contents of an `IOBuffer` as a string, without copying. Afterwards, the IOBuffer
is reset to its initial state.
"""
takebuf_string

"""
    pipeline(from, to, ...)

Create a pipeline from a data source to a destination. The source and destination can be
commands, I/O streams, strings, or results of other `pipeline` calls. At least one argument
must be a command. Strings refer to filenames. When called with more than two arguments,
they are chained together from left to right. For example `pipeline(a,b,c)` is equivalent to
`pipeline(pipeline(a,b),c)`. This provides a more concise way to specify multi-stage
pipelines.

**Examples**:

```julia
run(pipeline(`ls`, `grep xyz`))
run(pipeline(`ls`, "out.txt"))
run(pipeline("out.txt", `grep xyz`))
```
"""
pipeline(from, to, rest...)

"""
    pipeline(command; stdin, stdout, stderr, append=false)

Redirect I/O to or from the given `command`. Keyword arguments specify which of the
command's streams should be redirected. `append` controls whether file output appends to the
file. This is a more general version of the 2-argument `pipeline` function.
`pipeline(from, to)` is equivalent to `pipeline(from, stdout=to)` when `from` is a command,
and to `pipeline(to, stdin=from)` when `from` is another kind of data source.

**Examples**:

```julia
run(pipeline(`dothings`, stdout="out.txt", stderr="errs.txt"))
run(pipeline(`update`, stdout="log.txt", append=true))
```
"""
pipeline(command)

"""
    serialize(stream, value)

Write an arbitrary value to a stream in an opaque format, such that it can be read back by
`deserialize`. The read-back value will be as identical as possible to the original. In
general, this process will not work if the reading and writing are done by different
versions of Julia, or an instance of Julia with a different system image. `Ptr` values are
serialized as all-zero bit patterns (`NULL`).
"""
serialize

"""
    sum(itr)

Returns the sum of all elements in a collection.
"""
sum(itr)

"""
    sum(A, dims)

Sum elements of an array over the given dimensions.
"""
sum(A, dims)

"""
    sum(f, itr)

Sum the results of calling function `f` on each element of `itr`.
"""
sum(f::Function, itr)

"""
    typemin(T)

The lowest value representable by the given (real) numeric DataType `T`.
"""
typemin

"""
    countfrom(start=1, step=1)

An iterator that counts forever, starting at `start` and incrementing by `step`.
"""
countfrom

"""
    eof(stream) -> Bool

Tests whether an I/O stream is at end-of-file. If the stream is not yet exhausted, this
function will block to wait for more data if necessary, and then return `false`. Therefore
it is always safe to read one byte after seeing `eof` return `false`. `eof` will return
`false` as long as buffered data is still available, even if the remote end of a connection
is closed.
"""
eof

"""
    mktempdir([parent=tempdir()])

Create a temporary directory in the `parent` directory and return its path.
"""
mktempdir()

"""
    mktempdir(f::Function, [parent=tempdir()])

Apply the function `f` to the result of `mktempdir(parent)` and remove the temporary
directory upon completion.
"""
mktempdir(f::Function)

"""
    tril(M)

Lower triangle of a matrix.
"""
tril(M)

"""
    tril(M, k)

Returns the lower triangle of `M` starting from the `k`th superdiagonal.
"""
tril(M,k)


"""
    subtypes(T::DataType)

Return a list of immediate subtypes of DataType `T`. Note that all currently loaded subtypes
are included, including those not visible in the current module.
"""
subtypes

"""
    digits([T], n, [base], [pad])

Returns an array with element type `T` (default `Int`) of the digits of `n` in the given
base, optionally padded with zeros to a specified size. More significant digits are at
higher indexes, such that `n == sum([digits[k]*base^(k-1) for k=1:length(digits)])`.
"""
digits

"""
    bytes2hex(bin_arr::Array{UInt8, 1})

Convert an array of bytes to its hexadecimal representation. All characters are in
lower-case. Returns a `String`.
"""
bytes2hex

"""
    BigFloat(x)

Create an arbitrary precision floating point number. `x` may be an `Integer`, a `Float64` or
a `BigInt`. The usual mathematical operators are defined for this type, and results are
promoted to a `BigFloat`.

Note that because decimal literals are converted to floating point numbers when parsed,
`BigFloat(2.1)` may not yield what you expect. You may instead prefer to initialize
constants from strings via [`parse`](:func:`parse`), or using the `big` string literal.

```jldoctest
julia> BigFloat(2.1)
2.100000000000000088817841970012523233890533447265625000000000000000000000000000

julia> big"2.1"
2.099999999999999999999999999999999999999999999999999999999999999999999999999986
```
"""
BigFloat

"""
    xcorr(u,v)

Compute the cross-correlation of two vectors.
"""
xcorr

"""
    typeof(x)

Get the concrete type of `x`.
"""
typeof

"""
    log(x)

Compute the natural logarithm of `x`. Throws `DomainError` for negative `Real` arguments.
Use complex negative arguments to obtain complex results.

There is an experimental variant in the `Base.Math.JuliaLibm` module, which is typically
faster and more accurate.
"""
log(x)

"""
    trunc([T,] x, [digits, [base]])

`trunc(x)` returns the nearest integral value of the same type as `x` whose absolute value
is less than or equal to `x`.

`trunc(T, x)` converts the result to type `T`, throwing an `InexactError` if the value is
not representable.

`digits` and `base` work as for [`round`](:func:`round`).
"""
trunc

"""
    unsafe_convert(T,x)

Convert `x` to a value of type `T`

In cases where `convert` would need to take a Julia object and turn it into a `Ptr`, this
function should be used to define and perform that conversion.

Be careful to ensure that a Julia reference to `x` exists as long as the result of this
function will be used. Accordingly, the argument `x` to this function should never be an
expression, only a variable name or field reference. For example, `x=a.b.c` is acceptable,
but `x=[a,b,c]` is not.

The `unsafe` prefix on this function indicates that using the result of this function after
the `x` argument to this function is no longer accessible to the program may cause undefined
behavior, including program corruption or segfaults, at any later time.
"""
unsafe_convert

"""
    warn(msg)

Display a warning. Argument `msg` is a string describing the warning to be displayed.
"""
warn

"""
    erfinv(x)

Compute the inverse error function of a real `x`, defined by ``\\operatorname{erf}(\\operatorname{erfinv}(x)) = x``.
"""
erfinv

"""
    readdir([dir]) -> Vector{String}

Returns the files and directories in the directory `dir` (or the current working directory if not given).
"""
readdir

"""
    seek(s, pos)

Seek a stream to the given position.
"""
seek

"""
    triu(M)

Upper triangle of a matrix.
"""
triu(M)

"""
    triu(M, k)

Returns the upper triangle of `M` starting from the `k`th superdiagonal.
"""
triu(M, k)

"""
    instances(T::Type)

Return a collection of all instances of the given type, if applicable. Mostly used for
enumerated types (see `@enum`).
"""
instances

"""
    besselj0(x)

Bessel function of the first kind of order 0, ``J_0(x)``.
"""
besselj0

"""
    erfcinv(x)

Compute the inverse error complementary function of a real `x`, defined by
``\\operatorname{erfc}(\\operatorname{erfcinv}(x)) = x``.
"""
erfcinv

"""
    minabs(A, dims)

Compute the minimum absolute values over given dimensions.
"""
minabs(A, dims)

"""
    popdisplay()
    popdisplay(d::Display)

Pop the topmost backend off of the display-backend stack, or the topmost copy of `d` in the
second variant.
"""
popdisplay

"""
    filesize(path...)

Equivalent to `stat(file).size`.
"""
filesize

"""
    cglobal((symbol, library) [, type=Void])

Obtain a pointer to a global variable in a C-exported shared library, specified exactly as
in `ccall`. Returns a `Ptr{Type}`, defaulting to `Ptr{Void}` if no Type argument is
supplied. The values can be read or written by `unsafe_load` or `unsafe_store!`,
respectively.
"""
cglobal

"""
    one(x)

Get the multiplicative identity element for the type of `x` (`x` can also specify the type
itself). For matrices, returns an identity matrix of the appropriate size and type.
"""
one

"""
    splice!(collection, index, [replacement]) -> item

Remove the item at the given index, and return the removed item. Subsequent items are
shifted down to fill the resulting gap. If specified, replacement values from an ordered
collection will be spliced in place of the removed item.

```jldoctest
julia> A = [6, 5, 4, 3, 2, 1]; splice!(A, 5)
2

julia> A
5-element Array{Int64,1}:
 6
 5
 4
 3
 1

julia> splice!(A, 5, -1)
1

julia> A
5-element Array{Int64,1}:
  6
  5
  4
  3
 -1

julia> splice!(A, 1, [-1, -2, -3])
6

julia> A
7-element Array{Int64,1}:
 -1
 -2
 -3
  5
  4
  3
 -1
```

To insert `replacement` before an index `n` without removing any items, use
`splice!(collection, n:n-1, replacement)`.
"""
splice!(collection, index, replacement = ?)

"""
    splice!(collection, range, [replacement]) -> items

Remove items in the specified index range, and return a collection containing the removed
items. Subsequent items are shifted down to fill the resulting gap. If specified,
replacement values from an ordered collection will be spliced in place of the removed items.

To insert `replacement` before an index `n` without removing any items, use
`splice!(collection, n:n-1, replacement)`.

```jldoctest
julia> splice!(A, 4:3, 2)
0-element Array{Int64,1}

julia> A
8-element Array{Int64,1}:
 -1
 -2
 -3
  2
  5
  4
  3
 -1
```
"""
splice!(collection, range::Range, replacement)

"""
    endof(collection) -> Integer

Returns the last index of the collection.

```jldoctest
julia> endof([1,2,4])
3
```
"""
endof

"""
    isfifo(path) -> Bool

Returns `true` if `path` is a FIFO, `false` otherwise.
"""
isfifo

"""
    Channel{T}(sz::Int)

Constructs a `Channel` that can hold a maximum of `sz` objects of type `T`. `put!` calls on
a full channel block till an object is removed with `take!`.

Other constructors:

- `Channel()` - equivalent to `Channel{Any}(32)`
- `Channel(sz::Int)` equivalent to `Channel{Any}(sz)`
"""
Channel

"""
    next(iter, state) -> item, state

For a given iterable object and iteration state, return the current item and the next iteration state.
"""
next

"""
    unshift!(collection, items...) -> collection

Insert one or more `items` at the beginning of `collection`.

```jldoctest
  julia> unshift!([1, 2, 3, 4], 5, 6)
  6-element Array{Int64,1}:
   5
   6
   1
   2
   3
   4
```
"""
unshift!

"""
    log2(x)

Compute the logarithm of `x` to base 2. Throws `DomainError` for negative `Real` arguments.
"""
log2

"""
    colon(start, [step], stop)

Called by `:` syntax for constructing ranges.
"""
colon

"""
    Base64EncodePipe(ostream)

Returns a new write-only I/O stream, which converts any bytes written to it into
base64-encoded ASCII bytes written to `ostream`. Calling `close` on the `Base64EncodePipe` stream
is necessary to complete the encoding (but does not close `ostream`).
"""
Base64EncodePipe

"""
    issetgid(path) -> Bool

Returns `true` if `path` has the setgid flag set, `false` otherwise.
"""
issetgid

"""
    isnull(x)

Is the `Nullable` object `x` null, i.e. missing a value?
"""
isnull

"""
    abs2(x)

Squared absolute value of `x`.
"""
abs2

"""
    sizehint!(s, n)

Suggest that collection `s` reserve capacity for at least `n` elements. This can improve performance.
"""
sizehint!

"""
    ifelse(condition::Bool, x, y)

Return `x` if `condition` is `true`, otherwise return `y`. This differs from `?` or `if` in
that it is an ordinary function, so all the arguments are evaluated first. In some cases,
using `ifelse` instead of an `if` statement can eliminate the branch in generated code and
provide higher performance in tight loops.
"""
ifelse

"""
    ispow2(n) -> Bool

Test whether `n` is a power of two.
"""
ispow2

"""
    isgraph(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is printable, and not a space, or whether this is true for all
elements of a string. Any character that would cause a printer to use ink should be
classified with `isgraph(c)==true`.
"""
isgraph

"""
    OutOfMemoryError()

An operation allocated too much memory for either the system or the garbage collector to
handle properly.
"""
OutOfMemoryError


"""
    binomial(n,k)

Number of ways to choose `k` out of `n` items.
"""
binomial

"""
    .<=(x, y)
    .≤(x,y)

Element-wise less-than-or-equals comparison operator.
"""
Base.:(.<=)

"""
    rank(M)

Compute the rank of a matrix.
"""
rank

"""
    max(x, y, ...)

Return the maximum of the arguments. Operates elementwise over arrays.
"""
max

"""
    versioninfo([verbose::Bool])

Print information about the version of Julia in use. If the `verbose` argument is `true`,
detailed system information is shown as well.
"""
versioninfo

"""
    sort!(v, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Sort the vector `v` in place. `QuickSort` is used by default for numeric arrays while
`MergeSort` is used for other arrays. You can specify an algorithm to use via the `alg`
keyword (see Sorting Algorithms for available algorithms). The `by` keyword lets you provide
a function that will be applied to each element before comparison; the `lt` keyword allows
providing a custom "less than" function; use `rev=true` to reverse the sorting order. These
options are independent and can be used together in all possible combinations: if both `by`
and `lt` are specified, the `lt` function is applied to the result of the `by` function;
`rev=true` reverses whatever ordering specified via the `by` and `lt` keywords.
"""
sort!

"""
    kill(p::Process, signum=SIGTERM)

Send a signal to a process. The default is to terminate the process.
"""
kill(p::Process, signum=SIGTERM)

"""
    sylvester(A, B, C)

Computes the solution `X` to the Sylvester equation `AX + XB + C = 0`, where `A`, `B` and
`C` have compatible dimensions and `A` and `-B` have no eigenvalues with equal real part.
"""
sylvester

"""
    broadcast!(f, dest, As...)

Like `broadcast`, but store the result of `broadcast(f, As...)` in the `dest` array. Note
that `dest` is only used to store the result, and does not supply arguments to `f` unless it
is also listed in the `As`, as in `broadcast!(f, A, A, B)` to perform `A[:] = broadcast(f, A, B)`.
"""
broadcast!

"""
    cross(x, y)
    ×(x,y)

Compute the cross product of two 3-vectors.
"""
cross

"""
    keys(collection)

Return an iterator over all keys in a collection. `collect(keys(d))` returns an array of keys.
"""
keys

"""
    real(z)

Return the real part of the complex number `z`.
"""
real

"""
    gperm(file)

Like uperm but gets the permissions of the group owning the file.
"""
gperm

"""
    nb_available(stream)

Returns the number of bytes available for reading before a read from this stream or buffer will block.
"""
nb_available

"""
    finalize(x)

Immediately run finalizers registered for object `x`.
"""
finalize

"""
    rand([rng], [S], [dims...])

Pick a random element or array of random elements from the set of values specified by `S`; `S` can be

* an indexable collection (for example `1:n` or `['x','y','z']`), or
* a type: the set of values to pick from is then equivalent to `typemin(S):typemax(S)` for
  integers (this is not applicable to `BigInt`), and to ``[0, 1)`` for floating point numbers;

`S` defaults to `Float64`.
"""
rand

"""
    base(base, n, [pad])

Convert an integer to a string in the given base, optionally specifying a number of digits to pad to.
"""
base

"""
    BoundsError([a],[i])

An indexing operation into an array, `a`, tried to access an out-of-bounds element, `i`.
"""
BoundsError

"""
    which(f, types)

Returns the method of `f` (a `Method` object) that would be called for arguments of the given `types`.

If `types` is an abstract type, then the method that would be called by `invoke` is returned.
"""
which(f, types)

"""
    which(symbol)

Return the module in which the binding for the variable referenced by `symbol` was created.
"""
which(symbol)

"""
    conv2(u,v,A)

2-D convolution of the matrix `A` with the 2-D separable kernel generated by the vectors `u`
and `v`. Uses 2-D FFT algorithm.
"""
conv2(u, v, A)

"""
    conv2(B,A)

2-D convolution of the matrix `B` with the matrix `A`. Uses 2-D FFT algorithm.
"""
conv2(B, A)

"""
    broadcast_getindex(A, inds...)

Broadcasts the `inds` arrays to a common size like `broadcast`, and returns an array of the
results `A[ks...]`, where `ks` goes over the positions in the broadcast.
"""
broadcast_getindex

"""
    invoke(f, (types...), args...)

Invoke a method for the given generic function matching the specified types (as a tuple), on
the specified arguments. The arguments must be compatible with the specified types. This
allows invoking a method other than the most specific matching method, which is useful when
the behavior of a more general definition is explicitly needed (often as part of the
implementation of a more specific method of the same function).
"""
invoke

"""
    parse(str, start; greedy=true, raise=true)

Parse the expression string and return an expression (which could later be passed to eval
for execution). `start` is the index of the first character to start parsing. If `greedy` is
`true` (default), `parse` will try to consume as much input as it can; otherwise, it will
stop as soon as it has parsed a valid expression. Incomplete but otherwise syntactically
valid expressions will return `Expr(:incomplete, "(error message)")`. If `raise` is `true`
(default), syntax errors other than incomplete expressions will raise an error. If `raise`
is `false`, `parse` will return an expression that will raise an error upon evaluation.
"""
parse(str, start)

"""
    parse(str; raise=true)

Parse the expression string greedily, returning a single expression. An error is thrown if
there are additional characters after the first expression. If `raise` is `true` (default),
syntax errors will raise an error; otherwise, `parse` will return an expression that will
raise an error upon evaluation.
"""
parse(str)

"""
    parse(type, str, [base])

Parse a string as a number. If the type is an integer type, then a base can be specified
(the default is 10). If the type is a floating point type, the string is parsed as a decimal
floating point number. If the string does not contain a valid number, an error is raised.
"""
parse(T::Type, str, base=Int)

"""
    touch(path::AbstractString)

Update the last-modified timestamp on a file to the current time.
"""
touch

"""
    bkfact!(A) -> BunchKaufman

`bkfact!` is the same as [`bkfact`](:func:`bkfact`), but saves space by overwriting the
input `A`, instead of creating a copy.
"""
bkfact!

"""
    ^(x, y)

Exponentiation operator.
"""
Base.:(^)(x, y)

"""
    ^(s, n)

Repeat `n` times the string `s`. The `repeat` function is an alias to this operator.

```jldoctest
julia> "Test "^3
"Test Test Test "
```
"""
Base.:(^)(s::AbstractString, n::Int)

"""
    position(s)

Get the current position of a stream.
"""
position

"""
    selectperm(v, k, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Return a partial permutation of the vector `v`, according to the order specified by
`by`, `lt` and `rev`, so that `v[output]` returns the first `k` (or range of adjacent values
if `k` is a range) values of a fully sorted version of `v`. If `k` is a single index
(Integer), an array of the first `k` indices is returned; if `k` is a range, an array of
those indices is returned. Note that the handling of integer values for `k` is different
from `select` in that it returns a vector of `k` elements instead of just the `k` th
element. Also note that this is equivalent to, but more efficient than, calling
`sortperm(...)[k]`
"""
selectperm

"""
    isabspath(path::AbstractString) -> Bool

Determines whether a path is absolute (begins at the root directory).
"""
isabspath

"""
    hex2bytes(s::AbstractString)

Convert an arbitrarily long hexadecimal string to its binary representation. Returns an
`Array{UInt8,1}`, i.e. an array of bytes.
"""
hex2bytes

"""
    isdir(path) -> Bool

Returns `true` if `path` is a directory, `false` otherwise.
"""
isdir

"""
    reinterpret(type, A)

Change the type-interpretation of a block of memory. For example,
`reinterpret(Float32, UInt32(7))` interprets the 4 bytes corresponding to `UInt32(7)` as a
`Float32`. For arrays, this constructs an array with the same binary data as the given
array, but with the specified element type.
"""
reinterpret

"""
    ~(x)

Bitwise not.
"""
~

"""
    rem(x, y)
    %(x, y)

Remainder from Euclidean division, returning a value of the same sign as `x`, and smaller in
magnitude than `y`. This value is always exact.

```julia
x == div(x,y)*y + rem(x,y)
```
"""
rem

"""
    info(msg)

Display an informational message. Argument `msg` is a string describing the information to be displayed.
"""
info

"""
    ltoh(x)

Converts the endianness of a value from Little-endian to that used by the Host.
"""
ltoh

"""
    evalfile(path::AbstractString)

Load the file using `include`, evaluate all expressions, and return the value of the last one.
"""
evalfile

"""
    success(command)

Run a command object, constructed with backticks, and tell whether it was successful (exited
with a code of 0). An exception is raised if the process cannot be started.
"""
success

"""
    sortperm!(ix, v, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false,] [initialized=false])

Like `sortperm`, but accepts a preallocated index vector `ix`.  If `initialized` is `false`
(the default), ix is initialized to contain the values `1:length(v)`.

See also [`sortperm`](:func:`sortperm`).
"""
sortperm!

"""
    isodd(x::Integer) -> Bool

Returns `true` if `x` is odd (that is, not divisible by 2), and `false` otherwise.

```jldoctest
julia> isodd(9)
true

julia> isodd(10)
false
```
"""
isodd

"""
    normalize_string(s, normalform::Symbol)

Normalize the string `s` according to one of the four "normal forms" of the Unicode
standard: `normalform` can be `:NFC`, `:NFD`, `:NFKC`, or `:NFKD`.  Normal forms C
(canonical composition) and D (canonical decomposition) convert different visually identical
representations of the same abstract string into a single canonical form, with form C being
more compact.  Normal forms KC and KD additionally canonicalize "compatibility equivalents":
they convert characters that are abstractly similar but visually distinct into a single
canonical choice (e.g. they expand ligatures into the individual characters), with form KC
being more compact.

Alternatively, finer control and additional transformations may be be obtained by calling
`normalize_string(s; keywords...)`, where any number of the following boolean keywords
options (which all default to `false` except for `compose`) are specified:

* `compose=false`: do not perform canonical composition
* `decompose=true`: do canonical decomposition instead of canonical composition (`compose=true`
  is ignored if present)
* `compat=true`: compatibility equivalents are canonicalized
* `casefold=true`: perform Unicode case folding, e.g. for case-insensitive string comparison
* `newline2lf=true`, `newline2ls=true`, or `newline2ps=true`: convert various newline sequences
  (LF, CRLF, CR, NEL) into a linefeed (LF), line-separation (LS), or paragraph-separation (PS)
  character, respectively
* `stripmark=true`: strip diacritical marks (e.g. accents)
* `stripignore=true`: strip Unicode's "default ignorable" characters (e.g. the soft hyphen
  or the left-to-right marker)
* `stripcc=true`: strip control characters; horizontal tabs and form feeds are converted to
  spaces; newlines are also converted to spaces unless a newline-conversion flag was specified
* `rejectna=true`: throw an error if unassigned code points are found
* `stable=true`: enforce Unicode Versioning Stability

For example, NFKC corresponds to the options `compose=true, compat=true, stable=true`.
"""
normalize_string

"""
    cd([dir::AbstractString=homedir()])

Set the current working directory.
"""
cd(dir::AbstractString)

"""
    cd(f, [dir=homedir()])

Temporarily changes the current working directory and applies function `f` before returning.
"""
cd(f, dir=?)

"""
    hton(x)

Converts the endianness of a value from that used by the Host to Network byte order (big-endian).
"""
hton

"""
    is(x, y) -> Bool
    ===(x,y) -> Bool
    ≡(x,y) -> Bool

Determine whether `x` and `y` are identical, in the sense that no program could distinguish
them. Compares mutable objects by address in memory, and compares immutable objects (such as
numbers) by contents at the bit level. This function is sometimes called `egal`.
"""
is(x,y)

"""
    mark(s)

Add a mark at the current position of stream `s`. Returns the marked position.

See also [`unmark`](:func:`unmark`), [`reset`](:func:`reset`), [`ismarked`](:func:`ismarked`).
"""
mark

"""
    cp(src::AbstractString, dst::AbstractString; remove_destination::Bool=false, follow_symlinks::Bool=false)

Copy the file, link, or directory from *src* to *dest*. `remove_destination=true` will first
remove an existing `dst`.

If `follow_symlinks=false`, and `src` is a symbolic link, `dst` will be created as a
symbolic link. If `follow_symlinks=true` and `src` is a symbolic link, `dst` will be a copy
of the file or directory `src` refers to.
"""
cp

"""
    bswap(n)

Byte-swap an integer.
"""
bswap

"""
    resize!(collection, n) -> collection

Resize `collection` to contain `n` elements. If `n` is smaller than the current collection
length, the first `n` elements will be retained. If `n` is larger, the new elements are not
guaranteed to be initialized.

```jldoctest
julia> resize!([6, 5, 4, 3, 2, 1], 3)
3-element Array{Int64,1}:
 6
 5
 4
```

```julia
julia> resize!([6, 5, 4, 3, 2, 1], 8)
8-element Array{Int64,1}:
 6
 5
 4
 3
 2
 1
 0
 0
```
"""
resize!

"""
    sumabs2!(r, A)

Sum squared absolute values of elements of `A` over the singleton dimensions of `r`, and
write results to `r`.
"""
sumabs2!

"""
    IPv4(host::Integer) -> IPv4

Returns IPv4 object from ip address formatted as Integer.
"""
IPv4

"""
    trailing_zeros(x::Integer) -> Integer

Number of zeros trailing the binary representation of `x`.

```jldoctest
julia> trailing_zeros(2)
1
```
"""
trailing_zeros

"""
    isalnum(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is alphanumeric, or whether this is true for all elements of a
string. A character is classified as alphabetic if it belongs to the Unicode general
category Letter or Number, i.e. a character whose category code begins with 'L' or 'N'.
"""
isalnum

"""
    @sprintf("%Fmt", args...)

Return `@printf` formatted output as string.

    julia> s = @sprintf "this is a %s %15.1f" "test" 34.567;

    julia> println(s)
    this is a test            34.6
"""
:@sprintf

"""
    tanh(x)

Compute hyperbolic tangent of `x`.
"""
tanh

"""
    repr(x)

Create a string from any value using the `showall` function.
"""
repr

"""
    maxintfloat(T)

The largest integer losslessly representable by the given floating-point DataType `T`.
"""
maxintfloat

"""
    promote_shape(s1, s2)

Check two array shapes for compatibility, allowing trailing singleton dimensions, and return
whichever shape has more dimensions.
"""
promote_shape

"""
    foldr(op, v0, itr)

Like [`reduce`](:func:`reduce`), but with guaranteed right associativity. `v0` will be used
exactly once.
"""
foldr(op, v0, itr)

"""
    foldr(op, itr)

Like `foldr(op, v0, itr)`, but using the last element of `itr` as `v0`. In general, this
cannot be used with empty collections (see `reduce(op, itr)`).
"""
foldr(op, itr)

"""
    delete!(collection, key)

Delete the mapping for the given key in a collection, and return the collection.
"""
delete!

"""
    chr2ind(string, i)

Convert a character index to a byte index.
"""
chr2ind

"""
    fullname(m::Module)

Get the fully-qualified name of a module as a tuple of symbols. For example,
`fullname(Base.Pkg)` gives `(:Base,:Pkg)`, and `fullname(Main)` gives `()`.
"""
fullname

"""
    isreadable(io) -> Bool

Returns `true` if the specified IO object is readable (if that can be determined).
"""
isreadable

"""
    eps(T)

The distance between 1.0 and the next larger representable floating-point value of
`DataType` `T`. Only floating-point types are sensible arguments.
"""
eps(::Union{Type{BigFloat},Type{Float64},Type{Float32},Type{Float16}})

"""
    eps()

The distance between 1.0 and the next larger representable floating-point value of `Float64`.
"""
eps()

"""
    eps(x)

The distance between `x` and the next larger representable floating-point value of the same
`DataType` as `x`.
"""
eps(::AbstractFloat)

"""
    isalpha(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is alphabetic, or whether this is true for all elements of a
string. A character is classified as alphabetic if it belongs to the Unicode general
category Letter, i.e. a character whose category code begins with 'L'.
"""
isalpha

"""
    transpose(A)

The transposition operator (`.'`).
"""
transpose

"""
    searchsortedfirst(a, x, [by=<transform>,] [lt=<comparison>,] [rev=false])

Returns the index of the first value in `a` greater than or equal to `x`, according to the
specified order. Returns `length(a)+1` if `x` is greater than all values in `a`.
"""
searchsortedfirst

"""
    big(x)

Convert a number to a maximum precision representation (typically `BigInt` or `BigFloat`).
See `BigFloat` for information about some pitfalls with floating-point numbers.
"""
big

"""
    names(x::Module[, all=false[, imported=false]])

Get an array of the names exported by a `Module`, with optionally more `Module` globals
according to the additional parameters.
"""
names

"""
    quit()

Quit the program indicating that the processes completed successfully. This function calls
`exit(0)` (see [`exit`](:func:`exit`)).
"""
quit

"""
    escape_string(io, str::AbstractString, esc::AbstractString)

General escaping of traditional C and Unicode escape sequences, plus any characters in esc
are also escaped (with a backslash).
"""
escape_string(io, str, esc)

"""
    typejoin(T, S)

Compute a type that contains both `T` and `S`.
"""
typejoin

"""
    Base64DecodePipe(istream)

Returns a new read-only I/O stream, which decodes base64-encoded data read from `istream`.
"""
Base64DecodePipe

"""
    module_parent(m::Module) -> Module

Get a module's enclosing `Module`. `Main` is its own parent, as is `LastMain` after `workspace()`.
"""
module_parent

"""
    prepend!(collection, items) -> collection

Insert the elements of `items` to the beginning of `collection`.

```jldoctest
julia> prepend!([3],[1,2])
3-element Array{Int64,1}:
 1
 2
 3
```
"""
prepend!

"""
    sum_kbn(A)

Returns the sum of all array elements, using the Kahan-Babuska-Neumaier compensated
summation algorithm for additional accuracy.
"""
sum_kbn

"""
    beta(x, y)

Euler integral of the first kind ``\\operatorname{B}(x,y) = \\Gamma(x)\\Gamma(y)/\\Gamma(x+y)``.
"""
beta

"""
    eye(n)

`n`-by-`n` identity matrix.
"""
eye(n::Int)

"""
    eye(m, n)

`m`-by-`n` identity matrix.
"""
eye(m, n)

"""
    diagind(M[, k])

A `Range` giving the indices of the `k`th diagonal of the matrix `M`.
"""
diagind

"""
    include_string(code::AbstractString, [filename])

Like `include`, except reads code from the given string rather than from a file. Since there
is no file path involved, no path processing or fetching from node 1 is done.
"""
include_string

"""
    chmod(path, mode; recursive=false)

Change the permissions mode of `path` to `mode`. Only integer `mode`s (e.g. `0o777`) are
currently supported. If `recursive=true` and the path is a directory all permissions in
that directory will be recursively changed.
"""
chmod

"""
    chown(path, owner, group=-1)

Change the owner and/or group of `path` to `owner` and/or `group`. If the value entered for `owner` or `group`
is `-1` the corresponding ID will not change. Only integer `owner`s and `group`s are currently supported.
"""
chown

"""
    sin(x)

Compute sine of `x`, where `x` is in radians.
"""
sin

"""
    Base.compilecache(module::String)

Creates a precompiled cache file for module (see help for `require`) and all of its
dependencies. This can be used to reduce package load times. Cache files are stored in
`LOAD_CACHE_PATH[1]`, which defaults to `~/.julia/lib/VERSION`. See
[Module initialization and precompilation](:ref:`Module initialization and precompilation <man-modules-initialization-precompilation>`)
for important notes.
"""
compilecache

"""
    clipboard() -> AbstractString

Return a string with the contents of the operating system clipboard ("paste").
"""
clipboard

"""
    clipboard(x)

Send a printed form of `x` to the operating system clipboard ("copy").
"""
clipboard(x)

"""
    values(collection)

Return an iterator over all values in a collection. `collect(values(d))` returns an array of values.
"""
values

"""
    A_mul_B!(Y, A, B) -> Y

Calculates the matrix-matrix or matrix-vector product ``A⋅B`` and stores the result in `Y`,
overwriting the existing value of `Y`. Note that `Y` must not be aliased with either `A` or
`B`.

```jldoctest
julia> A=[1.0 2.0; 3.0 4.0]; B=[1.0 1.0; 1.0 1.0]; Y = similar(B); A_mul_B!(Y, A, B);

julia> Y
2×2 Array{Float64,2}:
 3.0  3.0
 7.0  7.0
```
"""
A_mul_B!

"""
    ntuple(f::Function, n)

Create a tuple of length `n`, computing each element as `f(i)`, where `i` is the index of the element.
"""
ntuple

"""
    Ac_rdiv_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ / Bᴴ``.
"""
Ac_rdiv_Bc

"""
    selectperm!(ix, v, k, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false,] [initialized=false])

Like `selectperm`, but accepts a preallocated index vector `ix`. If `initialized` is `false`
(the default), ix is initialized to contain the values `1:length(ix)`.
"""
selectperm!

"""
    .>(x, y)

Element-wise greater-than comparison operator.
"""
Base.:(.>)

"""
    search(string, chars, [start])

Search for the first occurrence of the given characters within the given string. The second
argument may be a single character, a vector or a set of characters, a string, or a regular
expression (though regular expressions are only allowed on contiguous strings, such as ASCII
or UTF-8 strings). The third argument optionally specifies a starting index. The return
value is a range of indexes where the matching sequence is found, such that `s[search(s,x)] == x`:

`search(string, "substring")` = `start:end` such that `string[start:end] == "substring"`, or
`0:-1` if unmatched.

`search(string, 'c')` = `index` such that `string[index] == 'c'`, or `0` if unmatched.
"""
search

"""
    contains(haystack, needle)

Determine whether the second argument is a substring of the first.
"""
contains

"""
    flush(stream)

Commit all currently buffered writes to the given stream.
"""
flush

"""
    precompile(f,args::Tuple{Vararg{Any}})

Compile the given function `f` for the argument tuple (of types) `args`, but do not execute it.
"""
precompile

"""
    asinh(x)

Compute the inverse hyperbolic sine of `x`.
"""
asinh

"""
    atreplinit(f)

Register a one-argument function to be called before the REPL interface is initialized in
interactive sessions; this is useful to customize the interface. The argument of `f` is the
REPL object. This function should be called from within the `.juliarc.jl` initialization
file.
"""
atreplinit

"""
    strip(string, [chars])

Return `string` with any leading and trailing whitespace removed. If `chars` (a character,
or vector or set of characters) is provided, instead remove characters contained in it.
"""
strip

"""
    minimum(A, dims)

Compute the minimum value of an array over the given dimensions.
"""
minimum(A,dims)

"""
    var(v[, region])

Compute the sample variance of a vector or array `v`, optionally along dimensions in
`region`. The algorithm will return an estimator of the generative distribution's variance
under the assumption that each entry of `v` is an IID drawn from that generative
distribution. This computation is equivalent to calculating `sumabs2(v - mean(v)) /
(length(v) - 1)`. Note: Julia does not ignore `NaN` values in the computation. For
applications requiring the handling of missing data, the `DataArray` package is recommended.
"""
var

"""
    lcfirst(string)

Returns `string` with the first character converted to lowercase.
"""
lcfirst

"""
    readlink(path) -> AbstractString

Returns the value of a symbolic link `path`.
"""
readlink

"""
    deg2rad(x)

Convert `x` from degrees to radians.
"""
deg2rad

"""
    redirect_stdin([stream])

Like redirect_stdout, but for STDIN. Note that the order of the return tuple is still
(rd,wr), i.e. data to be read from STDIN, may be written to wr.
"""
redirect_stdin

"""
    mktemp([parent=tempdir()])

Returns `(path, io)`, where `path` is the path of a new temporary file in `parent` and `io`
is an open file object for this path.
"""
mktemp(?)

"""
    mktemp(f::Function, [parent=tempdir()])

Apply the function `f` to the result of `mktemp(parent)` and remove the temporary file upon completion.
"""
mktemp(::Function, ?)

"""
    isreadonly(stream) -> Bool

Determine whether a stream is read-only.
"""
isreadonly

"""
    view(A, inds...)

Like [`getindex`](:func:`getindex`), but returns a view into the parent array `A` with the
given indices instead of making a copy.  Calling [`getindex`](:func:`getindex`) or
[`setindex!`](:func:`setindex!`) on the returned [`SubArray`](:obj:`SubArray`) computes the
indices to the parent array on the fly without checking bounds.
"""
view

"""
    expanduser(path::AbstractString) -> AbstractString

On Unix systems, replace a tilde character at the start of a path with the current user's home directory.
"""
expanduser

"""
    haskey(collection, key) -> Bool

Determine whether a collection has a mapping for a given key.
"""
haskey

"""
    cot(x)

Compute the cotangent of `x`, where `x` is in radians.
"""
cot

"""
    get(collection, key, default)

Return the value stored for the given key, or the given default value if no mapping for the
key is present.
"""
get(collection,key,default)

"""
    get(f::Function, collection, key)

Return the value stored for the given key, or if no mapping for the key is present, return
`f()`.  Use [`get!`](:func:`get!`) to also store the default value in the dictionary.

This is intended to be called using `do` block syntax

```julia
get(dict, key) do
    # default value calculated here
    time()
end
```
"""
get

"""
    .!=(x, y)
    .≠(x,y)

Element-wise not-equals comparison operator.
"""
Base.:(.!=)

"""
    lufact!(A) -> LU

`lufact!` is the same as [`lufact`](:func:`lufact`), but saves space by overwriting the
input `A`, instead of creating a copy. An `InexactError` exception is thrown if the
factorisation produces a number not representable by the element type of `A`, e.g. for
integer types.
"""
lufact!

"""
    IOBuffer() -> IOBuffer

Create an in-memory I/O stream.
"""
IOBuffer()

"""
    IOBuffer(size::Int)

Create a fixed size IOBuffer. The buffer will not grow dynamically.
"""
IOBuffer(size::Int)

"""
    IOBuffer(string)

Create a read-only IOBuffer on the data underlying the given string.
"""
IOBuffer(::AbstractString)

"""
    IOBuffer([data,],[readable,writable,[maxsize]])

Create an IOBuffer, which may optionally operate on a pre-existing array. If the
readable/writable arguments are given, they restrict whether or not the buffer may be read
from or written to respectively. By default the buffer is readable but not writable. The
last argument optionally specifies a size beyond which the buffer may not be grown.
"""
IOBuffer(data=?)

"""
    tempname()

Generate a unique temporary file path.
"""
tempname

"""
    poll_fd(fd, timeout_s::Real; readable=false, writable=false)

Monitor a file descriptor `fd` for changes in the read or write availability, and with a
timeout given by `timeout_s` seconds.

The keyword arguments determine which of read and/or write status should be monitored; at
least one of them must be set to `true`.

The returned value is an object with boolean fields `readable`, `writable`, and `timedout`,
giving the result of the polling.
"""
poll_fd

"""
    prevpow2(n)

The largest power of two not greater than `n`. Returns 0 for `n==0`, and returns
`-prevpow2(-n)` for negative arguments.
"""
prevpow2

"""
    Mmap.sync!(array)

Forces synchronization between the in-memory version of a memory-mapped `Array` or
`BitArray` and the on-disk version.
"""
Mmap.sync!

"""
    csc(x)

Compute the cosecant of `x`, where `x` is in radians.
"""
csc

"""
    hash(x[, h::UInt])

Compute an integer hash code such that `isequal(x,y)` implies `hash(x)==hash(y)`. The
optional second argument `h` is a hash code to be mixed with the result.

New types should implement the 2-argument form, typically by calling the 2-argument `hash`
method recursively in order to mix hashes of the contents with each other (and with `h`).
Typically, any type that implements `hash` should also implement its own `==` (hence
`isequal`) to guarantee the property mentioned above.
"""
hash

"""
    atan2(y, x)

Compute the inverse tangent of `y/x`, using the signs of both `x` and `y` to determine the
quadrant of the return value.
"""
atan2

"""
    send(socket::UDPSocket, host::IPv4, port::Integer, msg)

Send `msg` over `socket` to `host:port`.
"""
send

"""
    atanh(x)

Compute the inverse hyperbolic tangent of `x`.
"""
atanh

"""
    read(stream::IO, T)

Read a single value of type `T` from `stream`, in canonical binary representation.
"""
read(stream, t)

"""
    read(stream::IO, T, dims)

Read a series of values of type `T` from `stream`, in canonical binary representation.
`dims` is either a tuple or a series of integer arguments specifying the size of the `Array{T}`
to return.
"""
read(stream, t, dims)

"""
    read(filename::AbstractString, args...)

Open a file and read its contents. `args` is passed to `read`: this is equivalent to
`open(io->read(io, args...), filename)`.
"""
read(filename, args...)

"""
    isopen(object) -> Bool

Determine whether an object - such as a stream, timer, or mmap -- is not yet closed. Once an
object is closed, it will never produce a new event. However, a closed stream may still have
data to read in its buffer, use `eof` to check for the ability to read data. Use `poll_fd`
to be notified when a stream might be writable or readable.
"""
isopen

"""
    shift!(collection) -> item

Remove the first `item` from `collection`.

```jldoctest
julia> A = [1, 2, 3, 4, 5, 6]
6-element Array{Int64,1}:
 1
 2
 3
 4
 5
 6

julia> shift!(A)
1

julia> A
5-element Array{Int64,1}:
 2
 3
 4
 5
 6
```
"""
shift!

"""
    spawn(command)

Run a command object asynchronously, returning the resulting `Process` object.
"""
spawn

"""
    isposdef(A) -> Bool

Test whether a matrix is positive definite.
"""
isposdef

"""
    nextind(str, i)

Get the next valid string index after `i`. Returns a value greater than `endof(str)` at or
after the end of the string.
"""
nextind

"""
    eta(x)

Dirichlet eta function ``\\eta(s) = \\sum^\\infty_{n=1}(-1)^{n-1}/n^{s}``.
"""
eta

"""
    isdefined([m::Module,] s::Symbol)
    isdefined(object, s::Symbol)
    isdefined(object, index::Int)
    isdefined(a::Array, index::Int)

Tests whether an assignable location is defined. The arguments can be a module and a symbol,
a composite object and field name (as a symbol) or index, or an `Array` and index.
With a single symbol argument, tests whether a global variable with that name is defined in
`current_module()`.

Note: For `AbstractArray`s other than `Array`, `isdefined` tests whether the given field
index is defined, not the given array index. To test whether an array index is defined, use
[`isassigned`](:func:`isassigned`).
"""
isdefined

"""
    cotd(x)

Compute the cotangent of `x`, where `x` is in degrees.
"""
cotd

"""
    dec(n, [pad])

Convert an integer to a decimal string, optionally specifying a number of digits to pad to.
"""
dec

"""
    wait([x])

Block the current task until some event occurs, depending on the type of the argument:

* `RemoteChannel` : Wait for a value to become available on the specified remote channel.
* `Future` : Wait for a value to become available for the specified future.
* `Channel`: Wait for a value to be appended to the channel.
* `Condition`: Wait for `notify` on a condition.
* `Process`: Wait for a process or process chain to exit. The `exitcode` field of a process
  can be used to determine success or failure.
* `Task`: Wait for a `Task` to finish, returning its result value. If the task fails with an
  exception, the exception is propagated (re-thrown in the task that called `wait`).
* `RawFD`: Wait for changes on a file descriptor (see `poll_fd` for keyword arguments and return code)

If no argument is passed, the task blocks for an undefined period. A task can only be
restarted by an explicit call to `schedule` or `yieldto`.

Often `wait` is called within a `while` loop to ensure a waited-for condition is met before proceeding.
"""
wait

"""
    shuffle([rng,] v)

Return a randomly permuted copy of `v`. The optional `rng` argument specifies a random
number generator (see [Random Numbers](:ref:`Random Numbers <random-numbers>`)).
To permute `v` in-place, see [`shuffle!`](:func:`shuffle!`).  To obtain randomly permuted
indices, see [`randperm`](:func:`randperm`).
"""
shuffle

"""
    Dict([itr])

`Dict{K,V}()` constructs a hash table with keys of type `K` and values of type `V`.

Given a single iterable argument, constructs a [`Dict`](:obj:`Dict`) whose key-value pairs
are taken from 2-tuples `(key,value)` generated by the argument.

```jldoctest
julia> Dict([("A", 1), ("B", 2)])
Dict{String,Int64} with 2 entries:
  "B" => 2
  "A" => 1
```

Alternatively, a sequence of pair arguments may be passed.

```jldoctest
julia> Dict("A"=>1, "B"=>2)
Dict{String,Int64} with 2 entries:
  "B" => 2
  "A" => 1
```
"""
Dict

"""
    sqrt(x)

Return ``\\sqrt{x}``. Throws `DomainError` for negative `Real` arguments. Use complex
negative arguments instead.  The prefix operator `√` is equivalent to `sqrt`.
"""
sqrt

"""
    atexit(f)

Register a zero-argument function `f()` to be called at process exit. `atexit()` hooks are
called in last in first out (LIFO) order and run before object finalizers.
"""
atexit

"""
    readchomp(x)

Read the entirety of `x` as a string and remove a single trailing newline. Equivalent to `chomp(readstring(x))`.
"""
readchomp

"""
    pinv(M[, tol])

Computes the Moore-Penrose pseudoinverse.

For matrices `M` with floating point elements, it is convenient to compute
the pseudoinverse by inverting only singular values above a given threshold,
`tol`.

The optimal choice of `tol` varies both with the value of `M` and the intended application
of the pseudoinverse. The default value of `tol` is
`eps(real(float(one(eltype(M)))))*maximum(size(A))`, which is essentially machine epsilon
for the real part of a matrix element multiplied by the larger matrix dimension. For
inverting dense ill-conditioned matrices in a least-squares sense,
`tol = sqrt(eps(real(float(one(eltype(M))))))` is recommended.

For more information, see [^issue8859], [^B96], [^S84], [^KY88].

[^issue8859]: Issue 8859, "Fix least squares", https://github.com/JuliaLang/julia/pull/8859

[^B96]: Åke Björck, "Numerical Methods for Least Squares Problems",  SIAM Press, Philadelphia, 1996, "Other Titles in Applied Mathematics", Vol. 51. [doi:10.1137/1.9781611971484](http://epubs.siam.org/doi/book/10.1137/1.9781611971484)

[^S84]: G. W. Stewart, "Rank Degeneracy", SIAM Journal on Scientific and Statistical Computing, 5(2), 1984, 403-413. [doi:10.1137/0905030](http://epubs.siam.org/doi/abs/10.1137/0905030)

[^KY88]: Konstantinos Konstantinides and Kung Yao, "Statistical analysis of effective singular values in matrix rank determination", IEEE Transactions on Acoustics, Speech and Signal Processing, 36(5), 1988, 757-763. [doi:10.1109/29.1585](http://dx.doi.org/10.1109/29.1585)
"""
pinv

"""
    readbytes!(stream::IO, b::AbstractVector{UInt8}, nb=length(b); all=true)

Read at most `nb` bytes from `stream` into `b`, returning the number of bytes read.
The size of `b` will be increased if needed (i.e. if `nb` is greater than `length(b)`
and enough bytes could be read), but it will never be decreased.

See `read` for a description of the `all` option.
"""
readbytes!

"""
    basename(path::AbstractString) -> AbstractString

Get the file name part of a path.
"""
basename

"""
    isdiag(A) -> Bool

Test whether a matrix is diagonal.
"""
isdiag

"""
    !==(x, y)
    ≢(x,y)

Equivalent to `!is(x, y)`.
"""
Base.:(!==)

"""
    trailing_ones(x::Integer) -> Integer

Number of ones trailing the binary representation of `x`.

```jldoctest
julia> trailing_ones(3)
2
```
"""
trailing_ones

"""
    repeated(x[, n::Int])

An iterator that generates the value `x` forever. If `n` is specified, generates `x` that
many times (equivalent to `take(repeated(x), n)`).
"""
repeated

"""
    isnumber(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is numeric, or whether this is true for all elements of a string.
A character is classified as numeric if it belongs to the Unicode general category Number,
i.e. a character whose category code begins with 'N'.
"""
isnumber

"""
    copy(x)

Create a shallow copy of `x`: the outer structure is copied, but not all internal values.
For example, copying an array produces a new array with identically-same elements as the
original.
"""
copy

"""
    isempty(collection) -> Bool

Determine whether a collection is empty (has no elements).

```jldoctest
julia> isempty([])
true

julia> isempty([1 2 3])
false
```
"""
isempty

"""
    sumabs!(r, A)

Sum absolute values of elements of `A` over the singleton dimensions of `r`, and write
results to `r`.
"""
sumabs!

"""
    Sys.set_process_title(title::AbstractString)

Set the process title. No-op on some operating systems. (not exported)
"""
Sys.set_process_title

"""
    htol(x)

Converts the endianness of a value from that used by the Host to Little-endian.
"""
htol

"""
    ctime(file)

Equivalent to `stat(file).ctime`
"""
ctime

"""
    normpath(path::AbstractString) -> AbstractString

Normalize a path, removing "." and ".." entries.
"""
normpath

"""
    unmark(s)

Remove a mark from stream `s`. Returns `true` if the stream was marked, `false` otherwise.

See also [`mark`](:func:`mark`), [`reset`](:func:`reset`), [`ismarked`](:func:`ismarked`).
"""
unmark

"""
    module_name(m::Module) -> Symbol

Get the name of a `Module` as a `Symbol`.
"""
module_name

"""
    reset(s)

Reset a stream `s` to a previously marked position, and remove the mark. Returns the
previously marked position. Throws an error if the stream is not marked.

See also [`mark`](:func:`mark`), [`unmark`](:func:`unmark`), [`ismarked`](:func:`ismarked`).
"""
reset

"""
    modf(x)

Return a tuple (fpart,ipart) of the fractional and integral parts of a number. Both parts
have the same sign as the argument.
"""
modf

"""
    hex2num(str)

Convert a hexadecimal string to the floating point number it represents.
"""
hex2num

"""
    ishermitian(A) -> Bool

Test whether a matrix is Hermitian.
"""
ishermitian

"""
    min(x, y, ...)

Return the minimum of the arguments. Operates elementwise over arrays.
"""
min

"""
    InexactError()

Type conversion cannot be done exactly.
"""
InexactError

"""
    typemax(T)

The highest value representable by the given (real) numeric `DataType`.
"""
typemax

"""
    all(A, dims)

Test whether all values along the given dimensions of an array are `true`.
"""
all(A::AbstractArray, dims)

"""
    bind(socket::Union{UDPSocket, TCPSocket}, host::IPAddr, port::Integer; ipv6only=false)

Bind `socket` to the given `host:port`. Note that `0.0.0.0` will listen on all devices.
`ipv6only` parameter disables dual stack mode. If it's `true`, only IPv6 stack is created.
"""
bind

"""
    cld(x, y)

Smallest integer larger than or equal to `x/y`.
"""
cld

"""
    issetuid(path) -> Bool

Returns `true` if `path` has the setuid flag set, `false` otherwise.
"""
issetuid

"""
    scale!(A, b)
    scale!(b, A)

Scale an array `A` by a scalar `b` overwriting `A` in-place.

If `A` is a matrix and `b` is a vector, then `scale!(A,b)` scales each column `i` of `A` by
`b[i]` (similar to `A*Diagonal(b)`), while `scale!(b,A)` scales each row `i` of `A` by `b[i]`
(similar to `Diagonal(b)*A`), again operating in-place on `A`. An `InexactError` exception is
thrown if the scaling produces a number not representable by the element type of `A`,
e.g. for integer types.
"""
scale!

"""
    DomainError()

The arguments to a function or constructor are outside the valid domain.
"""
DomainError

"""
    issymmetric(A) -> Bool

Test whether a matrix is symmetric.
"""
issymmetric

"""
    acosh(x)

Compute the inverse hyperbolic cosine of `x`.
"""
acosh

"""
    IntSet([itr])

Construct a sorted set of positive `Int`s generated by the given iterable object, or an
empty set. Implemented as a bit string, and therefore designed for dense integer sets. Only
`Int`s greater than 0 can be stored. If the set will be sparse (for example holding a few
very large integers), use [`Set`](:obj:`Set`) instead.
"""
IntSet

"""
    Task(func)

Create a `Task` (i.e. coroutine) to execute the given function (which must be
callable with no arguments). The task exits when this function returns.
"""
Task

"""
    pushdisplay(d::Display)

Pushes a new display `d` on top of the global display-backend stack. Calling `display(x)` or
`display(mime, x)` will display `x` on the topmost compatible backend in the stack (i.e.,
the topmost backend that does not throw a `MethodError`).
"""
pushdisplay

"""
    prevind(str, i)

Get the previous valid string index before `i`. Returns a value less than `1` at the
beginning of the string.
"""
prevind

"""
    setenv(command, env; dir=working_dir)

Set environment variables to use when running the given `command`. `env` is either a
dictionary mapping strings to strings, an array of strings of the form `"var=val"`, or zero
or more `"var"=>val` pair arguments. In order to modify (rather than replace) the existing
environment, create `env` by `copy(ENV)` and then setting `env["var"]=val` as desired, or
use `withenv`.

The `dir` keyword argument can be used to specify a working directory for the command.
"""
setenv

"""
    lowercase(string)

Returns `string` with all characters converted to lowercase.
"""
lowercase

"""
    produce(value)

Send the given value to the last `consume` call, switching to the consumer task. If the next
`consume` call passes any values, they are returned by `produce`.
"""
produce

"""
    StackOverflowError()

The function call grew beyond the size of the call stack. This usually happens when a call
recurses infinitely.
"""
StackOverflowError

"""
    process_running(p::Process)

Determine whether a process is currently running.
"""
process_running

"""
    BigInt(x)

Create an arbitrary precision integer. `x` may be an `Int` (or anything that can be
converted to an `Int`).  The usual mathematical operators are defined for this type, and
results are promoted to a `BigInt`.

Instances can be constructed from strings via [`parse`](:func:`parse`), or using the `big`
string literal.
"""
BigInt

"""
    rsearch(string, chars, [start])

Similar to `search`, but returning the last occurrence of the given characters within the
given string, searching in reverse from `start`.
"""
rsearch

"""
    isdirpath(path::AbstractString) -> Bool

Determines whether a path refers to a directory (for example, ends with a path separator).
"""
isdirpath

"""
    in(item, collection) -> Bool
    ∈(item,collection) -> Bool
    ∋(collection,item) -> Bool
    ∉(item,collection) -> Bool
    ∌(collection,item) -> Bool

Determine whether an item is in the given collection, in the sense that it is `==` to one of
the values generated by iterating over the collection. Some collections need a slightly
different definition; for example [`Set`](:obj:`Set`)s check whether the item
[`isequal`](:func:`isequal`) to one of the elements. [`Dict`](:obj:`Dict`)s look for
`(key,value)` pairs, and the key is compared using [`isequal`](:func:`isequal`). To test for
the presence of a key in a dictionary, use [`haskey`](:func:`haskey`) or `k in keys(dict)`.
"""
Base.in

"""
    isblockdev(path) -> Bool

Returns `true` if `path` is a block device, `false` otherwise.
"""
isblockdev

"""
    ==(x, y)

Generic equality operator, giving a single `Bool` result. Falls back to `===`. Should be
implemented for all types with a notion of equality, based on the abstract value that an
instance represents. For example, all numeric types are compared by numeric value, ignoring
type. Strings are compared as sequences of characters, ignoring encoding.

Follows IEEE semantics for floating-point numbers.

Collections should generally implement `==` by calling `==` recursively on all contents.

New numeric types should implement this function for two arguments of the new type, and
handle comparison to other types via promotion rules where possible.
"""
Base.:(==)

"""
    seekstart(s)

Seek a stream to its beginning.
"""
seekstart

"""
    nfields(x::DataType) -> Int

Get the number of fields of a `DataType`.
"""
nfields

"""
    show(stream, mime, x)

The `display` functions ultimately call `show` in order to write an object `x` as a
given `mime` type to a given I/O `stream` (usually a memory buffer), if possible. In order
to provide a rich multimedia representation of a user-defined type `T`, it is only necessary
to define a new `show` method for `T`, via: `show(stream, ::MIME"mime", x::T) = ...`,
where `mime` is a MIME-type string and the function body calls `write` (or similar) to write
that representation of `x` to `stream`. (Note that the `MIME""` notation only supports
literal strings; to construct `MIME` types in a more flexible manner use
`MIME{Symbol("")}`.)

For example, if you define a `MyImage` type and know how to write it to a PNG file, you
could define a function `show(stream, ::MIME"image/png", x::MyImage) = ...` to allow
your images to be displayed on any PNG-capable `Display` (such as IJulia). As usual, be sure
to `import Base.show` in order to add new methods to the built-in Julia function
`show`.

The default MIME type is `MIME"text/plain"`. There is a fallback definition for `text/plain`
output that calls `show` with 2 arguments. Therefore, this case should be handled by
defining a 2-argument `show(stream::IO, x::MyType)` method.

Technically, the `MIME"mime"` macro defines a singleton type for the given `mime` string,
which allows us to exploit Julia's dispatch mechanisms in determining how to display objects
of any given type.

The first argument to `show` can be an `IOContext` specifying output format properties.
See `IOContext` for details.
"""
show(stream, mime, x)

"""
    mean!(r, v)

Compute the mean of `v` over the singleton dimensions of `r`, and write results to `r`.
"""
mean!

"""
    join(strings, delim, [last])

Join an array of `strings` into a single string, inserting the given delimiter between
adjacent strings. If `last` is given, it will be used instead of `delim` between the last
two strings. For example

    join(["apples", "bananas", "pineapples"], ", ", " and ") == "apples, bananas and pineapples"

`strings` can be any iterable over elements `x` which are convertible to strings via `print(io::IOBuffer, x)`.
"""
join(strings, delim, last)

"""
    isless(x, y)

Test whether `x` is less than `y`, according to a canonical total order. Values that are
normally unordered, such as `NaN`, are ordered in an arbitrary but consistent fashion. This
is the default comparison used by `sort`. Non-numeric types with a canonical total order
should implement this function. Numeric types only need to implement it if they have special
values such as `NaN`.
"""
isless

"""
    expm1(x)

Accurately compute ``e^x-1``.
"""
expm1

"""
    showerror(io, e)

Show a descriptive representation of an exception object.
"""
showerror

"""
    error(message::AbstractString)

Raise an `ErrorException` with the given message.
"""
error

"""
    less(file::AbstractString, [line])

Show a file using the default pager, optionally providing a starting line number. Returns to
the `julia` prompt when you quit the pager.
"""
less(f::AbstractString, ?)

"""
    less(function, [types])

Show the definition of a function using the default pager, optionally specifying a tuple of
types to indicate which method to see.
"""
less(func, ?)

"""
    sqrtm(A)

If `A` has no negative real eigenvalues, compute the principal matrix square root of `A`,
that is the unique matrix ``X`` with eigenvalues having positive real part such that
``X^2 = A``. Otherwise, a nonprincipal square root is returned.

If `A` is symmetric or Hermitian, its eigendecomposition ([`eigfact`](:func:`eigfact`)) is
used to compute the square root. Otherwise, the square root is determined by means of the
Björck-Hammarling method, which computes the complex Schur form ([`schur`](:func:`schur`))
and then the complex square root of the triangular factor.

[^BH83]: Åke Björck and Sven Hammarling, "A Schur method for the square root of a matrix", Linear Algebra and its Applications, 52-53, 1983, 127-140. [doi:10.1016/0024-3795(83)80010-X](http://dx.doi.org/10.1016/0024-3795(83)80010-X)

"""
sqrtm

"""
    conv(u,v)

Convolution of two vectors. Uses FFT algorithm.
"""
conv

"""
    unsafe_store!(p::Ptr{T}, x, [i::Integer=1])

Store a value of type `T` to the address of the ith element (1-indexed) starting at `p`.
This is equivalent to the C expression `p[i-1] = x`.

The `unsafe` prefix on this function indicates that no validation is performed on the
pointer `p` to ensure that it is valid. Incorrect usage may corrupt or segfault your
program, in the same manner as C.
"""
unsafe_store!

"""
    expm(A)

Compute the matrix exponential of `A`, defined by

```math
e^A = \\sum_{n=0}^{\\infty} \\frac{A^n}{n!}.
```

For symmetric or Hermitian `A`, an eigendecomposition ([`eigfact`](:func:`eigfact`)) is
used, otherwise the scaling and squaring algorithm (see [^H05]) is chosen.

[^H05]: Nicholas J. Higham, "The squaring and scaling method for the matrix exponential revisited", SIAM Journal on Matrix Analysis and Applications, 26(4), 2005, 1179-1193. [doi:10.1137/090768539](http://dx.doi.org/10.1137/090768539)

"""
expm

"""
    hessfact!(A)

`hessfact!` is the same as [`hessfact`](:func:`hessfact`), but saves space by overwriting
the input `A`, instead of creating a copy.
"""
hessfact!

"""
    Sys.get_process_title()

Get the process title. On some systems, will always return empty string. (not exported)
"""
Sys.get_process_title

"""
    readcsv(source, [T::Type]; options...)

Equivalent to `readdlm` with `delim` set to comma, and type optionally defined by `T`.
"""
readcsv

"""
    current_module() -> Module

Get the *dynamically* current `Module`, which is the `Module` code is currently being read
from. In general, this is not the same as the module containing the call to this function.
"""
current_module

"""
    erfcx(x)

Compute the scaled complementary error function of `x`, defined by ``e^{x^2} \\operatorname{erfc}(x)``.
Note also that ``\\operatorname{erfcx}(-ix)`` computes the Faddeeva function ``w(x)``.
"""
erfcx

"""
    UndefVarError(var::Symbol)

A symbol in the current scope is not defined.
"""
UndefVarError

"""
    gc()

Perform garbage collection. This should not generally be used.
"""
gc

"""
    iscntrl(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is a control character, or whether this is true for all elements
of a string. Control characters are the non-printing characters of the Latin-1 subset of Unicode.
"""
iscntrl

"""
    minimum!(r, A)

Compute the minimum value of `A` over the singleton dimensions of `r`, and write results to `r`.
"""
minimum!

"""
    diagm(v[, k])

Construct a diagonal matrix and place `v` on the `k`th diagonal.
"""
diagm

"""
    .-(x, y)

Element-wise subtraction operator.
"""
Base.:(.-)

"""
    imag(z)

Return the imaginary part of the complex number `z`.
"""
imag

"""
    unsafe_trunc(T, x)

`unsafe_trunc(T, x)` returns the nearest integral value of type `T` whose absolute value is
less than or equal to `x`. If the value is not representable by `T`, an arbitrary value will
be returned.
"""
unsafe_trunc

"""
    parent(A)

Returns the "parent array" of an array view type (e.g., `SubArray`), or the array itself if
it is not a view.
"""
parent

"""
    <(x, y)

Less-than comparison operator. New numeric types should implement this function for two
arguments of the new type. Because of the behavior of floating-point NaN values, `<`
implements a partial order. Types with a canonical partial order should implement `<`, and
types with a canonical total order should implement `isless`.
"""
Base.:(<)

"""
    EnvHash() -> EnvHash

A singleton of this type provides a hash table interface to environment variables.
"""
EnvHash

"""
    method_exists(f, Tuple type) -> Bool

Determine whether the given generic function has a method matching the given
[`Tuple`](:obj:`Tuple`) of argument types.

```jldoctest
julia> method_exists(length, Tuple{Array})
true
```
"""
method_exists

"""
    nextpow(a, x)

The smallest `a^n` not less than `x`, where `n` is a non-negative integer. `a` must be
greater than 1, and `x` must be greater than 0.
"""
nextpow

"""
    rad2deg(x)

Convert `x` from radians to degrees.
"""
rad2deg

"""
    gc_enable(on::Bool)

Control whether garbage collection is enabled using a boolean argument (`true` for enabled,
`false` for disabled). Returns previous GC state. Disabling garbage collection should be
used only with extreme caution, as it can cause memory use to grow without bound.
"""
gc_enable

"""
    sub2ind(dims, i, j, k...) -> index

The inverse of `ind2sub`, returns the linear index corresponding to the provided subscripts.
"""
sub2ind

"""
    supertype(T::DataType)

Return the supertype of DataType `T`.
"""
supertype

"""
    readline(stream::IO=STDIN)
    readline(filename::AbstractString)

Read a single line of text, including a trailing newline character (if one is reached before
the end of the input), from the given I/O stream or file (defaults to `STDIN`).
When reading from a file, the text is assumed to be encoded in UTF-8.
"""
readline

"""
    atan(x)

Compute the inverse tangent of `x`, where the output is in radians.
"""
atan

"""
    logabsdet(M)

Log of absolute value of determinant of real matrix. Equivalent to `(log(abs(det(M))), sign(det(M)))`,
but may provide increased accuracy and/or speed.
"""
logabsdet

"""
    joinpath(parts...) -> AbstractString

Join path components into a full path. If some argument is an absolute path, then prior
components are dropped.
"""
joinpath

"""
    precision(BigFloat)

Get the precision (in bits) currently used for `BigFloat` arithmetic.
"""
precision(::Type{BigFloat})

"""
    homedir() -> AbstractString

Return the current user's home directory.
"""
homedir

"""
    count_zeros(x::Integer) -> Integer

Number of zeros in the binary representation of `x`.

```jldoctest
julia> count_zeros(Int32(2 ^ 16 - 1))
16
```
"""
count_zeros

"""
    isinf(f) -> Bool

Test whether a number is infinite.
"""
isinf

"""
    secd(x)

Compute the secant of `x`, where `x` is in degrees.
"""
secd

"""
    OverflowError()

The result of an expression is too large for the specified type and will cause a wraparound.
"""
OverflowError

"""
    redirect_stderr([stream])

Like `redirect_stdout`, but for `STDERR`.
"""
redirect_stderr

"""
    ctranspose!(dest,src)

Conjugate transpose array `src` and store the result in the preallocated array `dest`, which
should have a size corresponding to `(size(src,2),size(src,1))`. No in-place transposition
is supported and unexpected results will happen if `src` and `dest` have overlapping memory
regions.
"""
ctranspose!

"""
    object_id(x)

Get a hash value for `x` based on object identity. `object_id(x)==object_id(y)` if `x === y`.
"""
object_id

"""
    norm(A, [p])

Compute the `p`-norm of a vector or the operator norm of a matrix `A`, defaulting to the `p=2`-norm.

For vectors, `p` can assume any numeric value (even though not all values produce a
mathematically valid vector norm). In particular, `norm(A, Inf)` returns the largest value
in `abs(A)`, whereas `norm(A, -Inf)` returns the smallest.

For matrices, the matrix norm induced by the vector `p`-norm is used, where valid values of
`p` are `1`, `2`, or `Inf`. (Note that for sparse matrices, `p=2` is currently not
implemented.) Use [`vecnorm`](:func:`vecnorm`) to compute the Frobenius norm.
"""
norm

"""
    unescape_string(io, s::AbstractString)

General unescaping of traditional C and Unicode escape sequences. Reverse of [`escape_string`](:func:`escape_string`).
"""
unescape_string(io, s)

"""
    digits!(array, n, [base])

Fills an array of the digits of `n` in the given base. More significant digits are at higher
indexes. If the array length is insufficient, the least significant digits are filled up to
the array length. If the array length is excessive, the excess portion is filled with zeros.
"""
digits!

"""
    cat(dims, A...)

Concatenate the input arrays along the specified dimensions in the iterable `dims`. For
dimensions not in `dims`, all input arrays should have the same size, which will also be the
size of the output array along that dimension. For dimensions in `dims`, the size of the
output array is the sum of the sizes of the input arrays along that dimension. If `dims` is
a single number, the different arrays are tightly stacked along that dimension. If `dims` is
an iterable containing several dimensions, this allows one to construct block diagonal
matrices and their higher-dimensional analogues by simultaneously increasing several
dimensions for every new input array and putting zero blocks elsewhere. For example,
`cat([1,2], matrices...)` builds a block diagonal matrix, i.e. a block matrix with
`matrices[1]`, `matrices[2]`, ... as diagonal blocks and matching zero blocks away from the
diagonal.
"""
cat

"""
    factorial(n)

Factorial of `n`.  If `n` is an [`Integer`](:obj:`Integer`), the factorial is computed as an
integer (promoted to at least 64 bits).  Note that this may overflow if `n` is not small,
but you can use `factorial(big(n))` to compute the result exactly in arbitrary precision.
If `n` is not an `Integer`, `factorial(n)` is equivalent to [`gamma(n+1)`](:func:`gamma(n+1) <gamma>`).
"""
factorial(n)

"""
    bitrand([rng], [dims...])

Generate a `BitArray` of random boolean values.
"""
bitrand

"""
    randcycle([rng,] n)

Construct a random cyclic permutation of length `n`. The optional `rng`
argument specifies a random number generator, see [Random Numbers](:ref:`Random Numbers <random-numbers>`).
"""
randcycle

"""
    leading_zeros(x::Integer) -> Integer

Number of zeros leading the binary representation of `x`.

```jldoctest
julia> leading_zeros(Int32(1))
31
```
"""
leading_zeros

"""
    lexcmp(x, y)

Compare `x` and `y` lexicographically and return -1, 0, or 1 depending on whether `x` is
less than, equal to, or greater than `y`, respectively. This function should be defined for
lexicographically comparable types, and `lexless` will call `lexcmp` by default.
"""
lexcmp

"""
    isupper(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is an uppercase letter, or whether this is true for all elements
of a string. A character is classified as uppercase if it belongs to Unicode category Lu,
Letter: Uppercase, or Lt, Letter: Titlecase.
"""
isupper

"""
    show(x)

Write an informative text representation of a value to the current output stream. New types
should overload `show(io, x)` where the first argument is a stream. The representation used
by `show` generally includes Julia-specific formatting and type information.
"""
show(x)


"""
    Array(dims)

`Array{T}(dims)` constructs an uninitialized dense array with element type `T`. `dims` may
be a tuple or a series of integer arguments. The syntax `Array(T, dims)` is also available,
but deprecated.
"""
Array

"""
    isreal(x) -> Bool

Test whether `x` or all its elements are numerically equal to some real number.
"""
isreal

"""
    randsubseq(A, p) -> Vector

Return a vector consisting of a random subsequence of the given array `A`, where each
element of `A` is included (in order) with independent probability `p`. (Complexity is
linear in `p*length(A)`, so this function is efficient even if `p` is small and `A` is
large.) Technically, this process is known as "Bernoulli sampling" of `A`.
"""
randsubseq

"""
    issubtype(type1, type2)

Return `true` if and only if all values of `type1` are also of `type2`. Can also be written
using the `<:` infix operator as `type1 <: type2`.
"""
issubtype(type1, type2)

"""
    finalizer(x, function)

Register a function `f(x)` to be called when there are no program-accessible references to
`x`. The behavior of this function is unpredictable if `x` is of a bits type.
"""
finalizer

"""
    csch(x)

Compute the hyperbolic cosecant of `x`.
"""
csch

"""
    isequal(x, y)

Similar to `==`, except treats all floating-point `NaN` values as equal to each other, and
treats `-0.0` as unequal to `0.0`. The default implementation of `isequal` calls `==`, so if
you have a type that doesn't have these floating-point subtleties then you probably only
need to define `==`.

`isequal` is the comparison function used by hash tables (`Dict`). `isequal(x,y)` must imply
that `hash(x) == hash(y)`.

This typically means that if you define your own `==` function then you must define a
corresponding `hash` (and vice versa). Collections typically implement `isequal` by calling
`isequal` recursively on all contents.

Scalar types generally do not need to implement `isequal` separate from `==`, unless they
represent floating-point numbers amenable to a more efficient implementation than that
provided as a generic fallback (based on `isnan`, `signbit`, and `==`).
"""
isequal

"""
    lyap(A, C)

Computes the solution `X` to the continuous Lyapunov equation `AX + XA' + C = 0`, where no
eigenvalue of `A` has a zero real part and no two eigenvalues are negative complex
conjugates of each other.
"""
lyap

"""
    condskeel(M, [x, p])

```math
\\kappa_S(M, p) & = \\left\\Vert \\left\\vert M \\right\\vert \\left\\vert M^{-1} \\right\\vert  \\right\\Vert_p \\\\
\\kappa_S(M, x, p) & = \\left\\Vert \\left\\vert M \\right\\vert \\left\\vert M^{-1} \\right\\vert \\left\\vert x \\right\\vert \\right\\Vert_p
```

Skeel condition number ``\\kappa_S`` of the matrix `M`, optionally with respect to the
vector `x`, as computed using the operator `p`-norm. `p` is `Inf` by default, if not
provided. Valid values for `p` are `1`, `2`, or `Inf`.

This quantity is also known in the literature as the Bauer condition number, relative
condition number, or componentwise relative condition number.
"""
condskeel

"""
    sec(x)

Compute the secant of `x`, where `x` is in radians.
"""
sec

"""
    recv(socket::UDPSocket)

Read a UDP packet from the specified socket, and return the bytes received. This call blocks.
"""
recv

"""
    det(M)

Matrix determinant.
"""
det

"""
    TypeError(func::Symbol, context::AbstractString, expected::Type, got)

A type assertion failure, or calling an intrinsic function with an incorrect argument type.
"""
TypeError

"""
    A_rdiv_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A / Bᵀ``.
"""
A_rdiv_Bt

"""
    pwd() -> AbstractString

Get the current working directory.
"""
pwd

"""
    getipaddr() -> IPAddr

Get the IP address of the local machine.
"""
getipaddr

"""
    uppercase(string)

Returns `string` with all characters converted to uppercase.
"""
uppercase

"""
    cycle(iter)

An iterator that cycles through `iter` forever.
"""
cycle

"""
    operm(file)

Like uperm but gets the permissions for people who neither own the file nor are a member of
the group owning the file
"""
operm

"""
    rpad(string, n, p)

Make a string at least `n` columns wide when printed, by padding on the right with copies of `p`.
"""
rpad

"""
    setfield!(value, name::Symbol, x)

Assign `x` to a named field in `value` of composite type. The syntax `a.b = c` calls
`setfield!(a, :b, c)`.
"""
setfield!

"""
    @printf([io::IOStream], "%Fmt", args...)

Print `args` using C `printf()` style format specification string. Optionally, an `IOStream`
may be passed as the first argument to redirect output.
"""
:@printf

"""
    rstrip(string, [chars])

Return `string` with any trailing whitespace removed. If `chars` (a character, or vector or
set of characters) is provided, instead remove characters contained in it.
"""
rstrip

"""
    countlines(io,[eol::Char])

Read `io` until the end of the stream/file and count the number of lines. To specify a file
pass the filename as the first argument. EOL markers other than '\\n' are supported by
passing them as the second argument.
"""
countlines

"""
```
*(A, B)
```

Matrix multiplication.
"""
Base.:(*)(::AbstractMatrix, ::AbstractMatrix)

"""
    .\\(x, y)

Element-wise left division operator.
"""
Base.:(.\)(x,y)

"""
    \\(x, y)

Left division operator: multiplication of `y` by the inverse of `x` on the left. Gives
floating-point results for integer arguments.
"""
Base.:(\)(x::Number,y::Number)


"""
```
*(x, y...)
```

Multiplication operator. `x*y*z*...` calls this function with all arguments, i.e. `*(x, y, z, ...)`.
"""
Base.:(*)(x, y...)

"""
```
*(s, t)
```

Concatenate strings. The `*` operator is an alias to this function.

```jldoctest
julia> "Hello " * "world"
"Hello world"
```
"""
Base.:(*)(s::AbstractString, t::AbstractString)

"""
    time()

Get the system time in seconds since the epoch, with fairly high (typically, microsecond) resolution.
"""
time()

"""
    procs(S::SharedArray)

Get the vector of processes that have mapped the shared array.
"""
procs(::SharedArray)

"""
    qr(A [,pivot=Val{false}][;thin=true]) -> Q, R, [p]

Compute the (pivoted) QR factorization of `A` such that either `A = Q*R` or `A[:,p] = Q*R`.
Also see `qrfact`. The default is to compute a thin factorization. Note that `R` is not
extended with zeros when the full `Q` is requested.
"""
qr

"""
    invmod(x,m)

Take the inverse of `x` modulo `m`: `y` such that ``x y = 1 \\pmod m``,
with ``div(x,y) = 0``. This is undefined for ``m = 0``, or if
``gcd(x,m) \\neq 1``.
"""
invmod

"""
    TextDisplay(stream)

Returns a `TextDisplay <: Display`, which can display any object as the text/plain MIME type
(only), writing the text representation to the given I/O stream. (The text representation is
the same as the way an object is printed in the Julia REPL.)
"""
TextDisplay

"""
    ismatch(r::Regex, s::AbstractString) -> Bool

Test whether a string contains a match of the given regular expression.
"""
ismatch

"""
    exp(x)

Compute ``e^x``.
"""
exp

"""
    searchindex(string, substring, [start])

Similar to `search`, but return only the start index at which the substring is found, or `0` if it is not.
"""
searchindex

"""
    listenany(port_hint) -> (UInt16,TCPServer)

Create a `TCPServer` on any port, using hint as a starting point. Returns a tuple of the
actual port that the server was created on and the server itself.
"""
listenany

"""
    getpid() -> Int32

Get Julia's process ID.
"""
getpid

"""
    cbrt(x)

Return ``x^{1/3}``.  The prefix operator `∛` is equivalent to `cbrt`.
"""
cbrt

"""
    matchall(r::Regex, s::AbstractString[, overlap::Bool=false]) -> Vector{AbstractString}

Return a vector of the matching substrings from eachmatch.
"""
matchall

"""
    get!(collection, key, default)

Return the value stored for the given key, or if no mapping for the key is present, store
`key => default`, and return `default`.
"""
get!(collection,key,default)

"""
    get!(f::Function, collection, key)

Return the value stored for the given key, or if no mapping for the key is present, store
`key => f()`, and return `f()`.

This is intended to be called using `do` block syntax:

    get!(dict, key) do
        # default value calculated here
        time()
    end
"""
get!(f::Function,collection,key)

"""
    inv(M)

Matrix inverse.
"""
inv

"""
    @assert cond [text]

Throw an `AssertionError` if `cond` is `false`. Preferred syntax for writing assertions.
Message `text` is optionally displayed upon assertion failure.
"""
:@assert

"""
    intersect!(s1, s2)

Intersects sets `s1` and `s2` and overwrites the set `s1` with the result. If needed, `s1`
will be expanded to the size of `s2`.
"""
intersect!

"""
    listen([addr,]port) -> TCPServer

Listen on port on the address specified by `addr`. By default this listens on localhost
only. To listen on all interfaces pass `IPv4(0)` or `IPv6(0)` as appropriate.
"""
listen(addr,port)

"""
    listen(path) -> PipeServer

Create and listen on a named pipe / UNIX domain socket.
"""
listen(path)

"""
    leading_ones(x::Integer) -> Integer

Number of ones leading the binary representation of `x`.

```jldoctest
julia> leading_ones(UInt32(2 ^ 32 - 2))
31
```
"""
leading_ones

"""
    deserialize(stream)

Read a value written by `serialize`. `deserialize` assumes the binary data read from
`stream` is correct and has been serialized by a compatible implementation of `serialize`.
It has been designed with simplicity and performance as a goal and does not validate
the data read. Malformed data can result in process termination. The caller has to ensure
the integrity and correctness of data read from `stream`.
"""
deserialize

"""
    ismarked(s)

Returns `true` if stream `s` is marked.

See also [`mark`](:func:`mark`), [`unmark`](:func:`unmark`), [`reset`](:func:`reset`).
"""
ismarked

"""
    first(coll)

Get the first element of an iterable collection. Returns the start point of a
[`Range`](:obj:`Range`) even if it is empty.
"""
first

"""
    median!(v)

Like `median`, but may overwrite the input vector.
"""
median!

"""
    cumprod!(B, A, [dim])

Cumulative product of `A` along a dimension, storing the result in `B`. The dimension defaults to 1.
"""
cumprod!

"""
    rethrow([e])

Throw an object without changing the current exception backtrace. The default argument is
the current exception (if called within a `catch` block).
"""
rethrow

"""
    reprmime(mime, x)

Returns an `AbstractString` or `Vector{UInt8}` containing the representation of `x` in the
requested `mime` type, as written by `show` (throwing a `MethodError` if no appropriate
`show` is available). An `AbstractString` is returned for MIME types with textual
representations (such as `"text/html"` or `"application/postscript"`), whereas binary data
is returned as `Vector{UInt8}`. (The function `istextmime(mime)` returns whether or not Julia
treats a given `mime` type as text.)

As a special case, if `x` is an `AbstractString` (for textual MIME types) or a
`Vector{UInt8}` (for binary MIME types), the `reprmime` function assumes that `x` is already
in the requested `mime` format and simply returns `x`.
"""
reprmime

"""
    rm(path::AbstractString; force=false, recursive=false)

Delete the file, link, or empty directory at the given path. If `force=true` is passed, a
non-existing path is not treated as error. If `recursive=true` is passed and the path is a
directory, then all contents are removed recursively.
"""
rm

"""
    MersenneTwister([seed])

Create a `MersenneTwister` RNG object. Different RNG objects can have their own seeds, which
may be useful for generating different streams of random numbers.
"""
MersenneTwister

"""
    graphemes(s) -> iterator over substrings of s

Returns an iterator over substrings of `s` that correspond to the extended graphemes in the
string, as defined by Unicode UAX #29. (Roughly, these are what users would perceive as
single characters, even though they may contain more than one codepoint; for example a
letter combined with an accent mark is a single grapheme.)
"""
graphemes

"""
    @__FILE__ -> AbstractString

`@__FILE__` expands to a string with the absolute file path of the file containing the
macro. Returns `nothing` if run from a REPL or an empty string if evaluated by
`julia -e <expr>`. Alternatively see [`PROGRAM_FILE`](:data:`PROGRAM_FILE`).
"""
:@__FILE__

"""
    charwidth(c)

Gives the number of columns needed to print a character.
"""
charwidth

"""
    abspath(path::AbstractString) -> AbstractString

Convert a path to an absolute path by adding the current directory if necessary.
"""
abspath

"""
    ispunct(c::Union{Char,AbstractString}) -> Bool

Tests whether a character belongs to the Unicode general category Punctuation, i.e. a
character whose category code begins with 'P'. For strings, tests whether this is true for
all elements of the string.
"""
ispunct

"""
    ismount(path) -> Bool

Returns `true` if `path` is a mount point, `false` otherwise.
"""
ismount

"""
    endswith(string, suffix)

Returns `true` if `string` ends with `suffix`. If `suffix` is a vector or set of
characters, tests whether the last character of `string` belongs to that set.
"""
endswith

"""
    !(x)

Boolean not.
"""
Base.:(!)

"""
    length(collection) -> Integer

For ordered, indexable collections, the maximum index `i` for which `getindex(collection, i)`
is valid. For unordered collections, the number of elements.
"""
length(collection)

"""
    length(s)

The number of characters in string `s`.
"""
length(::AbstractString)

"""
    rand!([rng], A, [coll])

Populate the array `A` with random values. If the indexable collection `coll` is specified,
the values are picked randomly from `coll`. This is equivalent to `copy!(A, rand(rng, coll, size(A)))`
or `copy!(A, rand(rng, eltype(A), size(A)))` but without allocating a new array.
"""
rand!

"""
    bkfact(A) -> BunchKaufman

Compute the Bunch-Kaufman [^Bunch1977] factorization of a real symmetric or complex Hermitian
matrix `A` and return a `BunchKaufman` object. The following functions are available for
`BunchKaufman` objects: `size`, `\\`, `inv`, `issymmetric`, `ishermitian`.

[^Bunch1977]: J R Bunch and L Kaufman, Some stable methods for calculating inertia and solving symmetric linear systems, Mathematics of Computation 31:137 (1977), 163-179. [url](http://www.ams.org/journals/mcom/1977-31-137/S0025-5718-1977-0428694-0).

"""
bkfact

"""
    searchsortedlast(a, x, [by=<transform>,] [lt=<comparison>,] [rev=false])

Returns the index of the last value in `a` less than or equal to `x`, according to the
specified order. Returns `0` if `x` is less than all values in `a`.
"""
searchsortedlast

"""
    InterruptException()

The process was stopped by a terminal interrupt (CTRL+C).
"""
InterruptException

"""
    den(x)

Denominator of the rational representation of `x`.
"""
den

"""
    issubnormal(f) -> Bool

Test whether a floating point number is subnormal.
"""
issubnormal

"""
    Ac_ldiv_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ`` \\ ``B``.
"""
Ac_ldiv_B

"""
    NullException()

An attempted access to a `Nullable` with no defined value.
"""
NullException

"""
    .==(x, y)

Element-wise equality comparison operator.
"""
Base.:(.==)

"""
    cfunction(function::Function, ReturnType::Type, (ArgumentTypes...))

Generate C-callable function pointer from Julia function. Type annotation of the return
value in the callback function is a must for situations where Julia cannot infer the return
type automatically.

For example:

    function foo()
        # body

        retval::Float64
    end

    bar = cfunction(foo, Float64, ())
"""
cfunction

"""
    recvfrom(socket::UDPSocket) -> (address, data)

Read a UDP packet from the specified socket, returning a tuple of (address, data), where
address will be either IPv4 or IPv6 as appropriate.
"""
recvfrom

"""
    intersect(s1,s2...)
    ∩(s1,s2)

Construct the intersection of two or more sets. Maintains order and multiplicity of the
first argument for arrays and ranges.
"""
intersect

"""
    !=(x, y)
    ≠(x,y)

Not-equals comparison operator. Always gives the opposite answer as `==`. New types should
generally not implement this, and rely on the fallback definition `!=(x,y) = !(x==y)` instead.
"""
Base.:(!=)

"""
    @spawn

Creates a closure around an expression and runs it on an automatically-chosen process,
returning a `Future` to the result.
"""
:@spawn

"""
    promote_rule(type1, type2)

Specifies what type should be used by `promote` when given values of types `type1` and
`type2`. This function should not be called directly, but should have definitions added to
it for new types as appropriate.
"""
promote_rule

"""
    mtime(file)

Equivalent to `stat(file).mtime`.
"""
mtime

"""
    logspace(start, stop, n=50)

Construct a vector of `n` logarithmically spaced numbers from `10^start` to `10^stop`.
"""
logspace

"""
    @gensym

Generates a gensym symbol for a variable. For example, `@gensym x y` is transformed into
`x = gensym("x"); y = gensym("y")`.
"""
:@gensym

"""
    sumabs2(itr)

Sum squared absolute values of all elements in a collection. This is equivalent to `sum(abs2(itr))` but faster.
"""
sumabs2(itr)

"""
    sumabs2(A, dims)

Sum squared absolute values of elements of an array over the given dimensions.
"""
sumabs2(A,dims)

"""
    uperm(file)

Gets the permissions of the owner of the file as a bitfield of

| Value | Description        |
|:------|:-------------------|
| 01    | Execute Permission |
| 02    | Write Permission   |
| 04    | Read Permission    |

For allowed arguments, see `stat`.
"""
uperm

"""
    run(command)

Run a command object, constructed with backticks. Throws an error if anything goes wrong,
including the process exiting with a non-zero status.
"""
run

"""
    showall(x)

Similar to `show`, except shows all elements of arrays.
"""
showall

"""
    mimewritable(mime, x)

Returns a boolean value indicating whether or not the object `x` can be written as the given
`mime` type. (By default, this is determined automatically by the existence of the
corresponding `show` function for `typeof(x)`.)
"""
mimewritable

"""
    vecdot(x, y)

For any iterable containers `x` and `y` (including arrays of any dimension) of numbers (or
any element type for which `dot` is defined), compute the Euclidean dot product (the sum of
`dot(x[i],y[i])`) as if they were vectors.
"""
vecdot

"""
    >(x, y)

Greater-than comparison operator. Generally, new types should implement `<` instead of this
function, and rely on the fallback definition `>(x,y) = y<x`.
"""
Base.:(>)

"""
    match(r::Regex, s::AbstractString[, idx::Integer[, addopts]])

Search for the first match of the regular expression `r` in `s` and return a `RegexMatch`
object containing the match, or nothing if the match failed. The matching substring can be
retrieved by accessing `m.match` and the captured sequences can be retrieved by accessing
`m.captures` The optional `idx` argument specifies an index at which to start the search.
"""
match

"""
    Ac_mul_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ⋅B``.
"""
Ac_mul_B

"""
    qrfact!(A [,pivot=Val{false}])

`qrfact!` is the same as [`qrfact`](:func:`qrfact`) when `A` is a subtype of
`StridedMatrix`, but saves space by overwriting the input `A`, instead of creating a copy.
An `InexactError` exception is thrown if the factorisation produces a number not
representable by the element type of `A`, e.g. for integer types.
"""
qrfact!

"""
    At_rdiv_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ / B``.
"""
At_rdiv_B

"""
    coth(x)

Compute the hyperbolic cotangent of `x`.
"""
coth

"""
    conj(z)

Compute the complex conjugate of a complex number `z`.
"""
conj

"""
    conj!(A)

Convert an array to its complex conjugate in-place.
"""
conj!

"""
    start(iter) -> state

Get initial iteration state for an iterable object.
"""
start

"""
    div(x, y)
    ÷(x, y)

The quotient from Euclidean division. Computes `x/y`, truncated to an integer.
"""
div

"""
    relpath(path::AbstractString, startpath::AbstractString = ".") -> AbstractString

Return a relative filepath to path either from the current directory or from an optional
start directory. This is a path computation: the filesystem is not accessed to confirm the
existence or nature of path or startpath.
"""
relpath

"""
    readavailable(stream)

Read all available data on the stream, blocking the task only if no data is available. The
result is a `Vector{UInt8,1}`.
"""
readavailable

"""
    slicedim(A, d, i)

Return all the data of `A` where the index for dimension `d` equals `i`. Equivalent to
`A[:,:,...,i,:,:,...]` where `i` is in position `d`.
"""
slicedim

"""
    isa(x, type) -> Bool

Determine whether `x` is of the given `type`.
"""
isa

"""
    <=(x, y)
    ≤(x,y)

Less-than-or-equals comparison operator.
"""
Base.:(<=)

"""
    unsafe_load(p::Ptr{T}, [i::Integer=1])

Load a value of type `T` from the address of the ith element (1-indexed) starting at `p`.
This is equivalent to the C expression `p[i-1]`.

The `unsafe` prefix on this function indicates that no validation is performed on the
pointer `p` to ensure that it is valid. Incorrect usage may segfault your program or return
garbage answers, in the same manner as C.
"""
unsafe_load

"""
    catch_backtrace()

Get the backtrace of the current exception, for use within `catch` blocks.
"""
catch_backtrace

"""
    get_zero_subnormals() -> Bool

Returns `false` if operations on subnormal floating-point values ("denormals") obey rules
for IEEE arithmetic, and `true` if they might be converted to zeros.
"""
get_zero_subnormals

"""
    cos(x)

Compute cosine of `x`, where `x` is in radians.
"""
cos

"""
    base64encode(writefunc, args...)
    base64encode(args...)

Given a `write`-like function `writefunc`, which takes an I/O stream as its first argument,
`base64encode(writefunc, args...)` calls `writefunc` to write `args...` to a base64-encoded
string, and returns the string. `base64encode(args...)` is equivalent to `base64encode(write, args...)`:
it converts its arguments into bytes using the standard `write` functions and returns the
base64-encoded string.
"""
base64encode

"""
    filt!(out, b, a, x, [si])

Same as [`filt`](:func:`filt`) but writes the result into the `out` argument, which may
alias the input `x` to modify it in-place.
"""
filt!

"""
    ascii(s::AbstractString)

Convert a string to `String` type and check that it contains only ASCII data, otherwise
throwing an `ArgumentError` indicating the position of the first non-ASCII byte.
"""
ascii(s)

"""
    maxabs(A, dims)

Compute the maximum absolute values over given dimensions.
"""
maxabs(A,dims)

"""
    done(iter, state) -> Bool

Test whether we are done iterating.
"""
done

"""
    convert(T, x)

Convert `x` to a value of type `T`.

If `T` is an `Integer` type, an [`InexactError`](:exc:`InexactError`) will be raised if `x`
is not representable by `T`, for example if `x` is not integer-valued, or is outside the
range supported by `T`.

```jldoctest
julia> convert(Int, 3.0)
3

julia> convert(Int, 3.5)
ERROR: InexactError()
 in convert(::Type{Int64}, ::Float64) at ./int.jl:239
 ...
```

If `T` is a [`AbstractFloat`](:obj:`AbstractFloat`) or [`Rational`](:obj:`Rational`) type,
then it will return the closest value to `x` representable by `T`.

```jldoctest
julia> x = 1/3
0.3333333333333333

julia> convert(Float32, x)
0.33333334f0

julia> convert(Rational{Int32}, x)
1//3

julia> convert(Rational{Int64}, x)
6004799503160661//18014398509481984
```

If `T` is a collection type and `x` a collection, the result of `convert(T, x)` may alias
`x`.
```jldoctest
julia> x = Int[1,2,3];

julia> y = convert(Vector{Int}, x);

julia> y === x
true
```
Similarly, if `T` is a composite type and `x` a related instance, the result of
`convert(T, x)` may alias part or all of `x`.
```jldoctest
julia> x = speye(5);

julia> typeof(x)
SparseMatrixCSC{Float64,Int64}

julia> y = convert(SparseMatrixCSC{Float64,Int64}, x);

julia> z = convert(SparseMatrixCSC{Float32,Int64}, y);

julia> y === x
true

julia> z === x
false

julia> z.colptr === x.colptr
true
```
"""
convert

"""
    A_ldiv_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A`` \\ ``Bᵀ``.
"""
A_ldiv_Bt

"""
    applicable(f, args...) -> Bool

Determine whether the given generic function has a method applicable to the given arguments.

```jldoctest
julia> function f(x, y)
           x + y
       end;

julia> applicable(f, 1)
false

julia> applicable(f, 1, 2)
true
```
"""
applicable

"""
    RandomDevice()

Create a `RandomDevice` RNG object. Two such objects will always generate different streams of random numbers.
"""
RandomDevice

"""
    fma(x, y, z)

Computes `x*y+z` without rounding the intermediate result `x*y`. On some systems this is
significantly more expensive than `x*y+z`. `fma` is used to improve accuracy in certain
algorithms. See `muladd`.
"""
fma

"""

    eigvals(A,[irange,][vl,][vu]) -> values

Returns the eigenvalues of `A`. If `A` is `Symmetric`, `Hermitian` or `SymTridiagonal`,
it is possible to calculate only a subset of the eigenvalues by specifying either a
`UnitRange` `irange` covering indices of the sorted eigenvalues, or a pair `vl` and `vu`
for the lower and upper boundaries of the eigenvalues.

For general non-symmetric matrices it is possible to specify how the matrix is balanced
before the eigenvector calculation. The option `permute=true` permutes the matrix to
become closer to upper triangular, and `scale=true` scales the matrix by its diagonal
elements to make rows and columns moreequal in norm. The default is `true` for both
options.
"""
eigvals

"""
    A_ldiv_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A`` \\ ``Bᴴ``.
"""
A_ldiv_Bc

"""
    escape_string(str::AbstractString) -> AbstractString

General escaping of traditional C and Unicode escape sequences.
"""
escape_string(str)

"""
    significand(x)

Extract the `significand(s)` (a.k.a. mantissa), in binary representation, of a
floating-point number or array. If `x` is a non-zero finite number, then the result will be
a number of the same type on the interval ``[1,2)``. Otherwise `x` is returned.

```jldoctest
julia> significand(15.2)/15.2
0.125

julia> significand(15.2)*8
15.2
```
"""
significand

"""
    pointer_from_objref(object_instance)

Get the memory address of a Julia object as a `Ptr`. The existence of the resulting `Ptr`
will not protect the object from garbage collection, so you must ensure that the object
remains referenced for the whole time that the `Ptr` will be used.
"""
pointer_from_objref

"""
    cumsum_kbn(A, [dim])

Cumulative sum along a dimension, using the Kahan-Babuska-Neumaier compensated summation
algorithm for additional accuracy. The dimension defaults to 1.
"""
cumsum_kbn

"""
    cmp(x,y)

Return -1, 0, or 1 depending on whether `x` is less than, equal to, or greater than `y`,
respectively. Uses the total order implemented by `isless`. For floating-point numbers, uses `<`
but throws an error for unordered arguments.
"""
cmp

"""
    issorted(v, [by=<transform>,] [lt=<comparison>,] [rev=false])

Test whether a vector is in sorted order. The `by`, `lt` and `rev` keywords modify what
order is considered to be sorted just as they do for `sort`.
"""
issorted

"""
    isbits(T)

Return `true` if `T` is a "plain data" type, meaning it is immutable and contains no
references to other values. Typical examples are numeric types such as `UInt8`, `Float64`,
and `Complex{Float64}`.

```jldoctest
julia> isbits(Complex{Float64})
true

julia> isbits(Complex)
false
```
"""
isbits

"""
    angle(z)

Compute the phase angle in radians of a complex number `z`.
"""
angle

"""
    copy!(dest, src)

Copy all elements from collection `src` to array `dest`. Returns `dest`.
"""
copy!(dest,src)

"""
    copy!(dest, do, src, so, N)

Copy `N` elements from collection `src` starting at offset `so`, to array `dest` starting at
offset `do`. Returns `dest`.
"""
copy!(dest,d,src,so,N)

"""
    broadcast(f, As...)

Broadcasts the arrays `As` to a common size by expanding singleton dimensions, and returns
an array of the results `f(as...)` for each position.
"""
broadcast

"""
    ntoh(x)

Converts the endianness of a value from Network byte order (big-endian) to that used by the Host.
"""
ntoh

"""
    qrfact(A) -> SPQR.Factorization

Compute the QR factorization of a sparse matrix `A`. A fill-reducing permutation is used.
The main application of this type is to solve least squares problems with `\\`. The function
calls the C library SPQR and a few additional functions from the library are wrapped but not
exported.
"""
qrfact(A)

"""
    +(x, y...)

Addition operator. `x+y+z+...` calls this function with all arguments, i.e. `+(x, y, z, ...)`.
"""
+

"""
    identity(x)

The identity function. Returns its argument.
"""
identity

"""
    iseven(x::Integer) -> Bool

Returns `true` is `x` is even (that is, divisible by 2), and `false` otherwise.

```jldoctest
julia> iseven(9)
false

julia> iseven(10)
true
```
"""
iseven

"""
    setindex!(A, X, inds...)

Store values from array `X` within some subset of `A` as specified by `inds`.
"""
setindex!(A::AbstractArray,X,inds...)

"""
    setindex!(collection, value, key...)

Store the given value at the given key or index within a collection. The syntax `a[i,j,...] =
x` is converted by the compiler to `(setindex!(a, x, i, j, ...); x)`.
"""
setindex!(collection,value,key...)

"""
    signif(x, digits, [base])

Rounds (in the sense of `round`) `x` so that there are `digits` significant digits, under a
base `base` representation, default 10. E.g., `signif(123.456, 2)` is `120.0`, and
`signif(357.913, 4, 2)` is `352.0`.
"""
signif

"""
    nextpow2(n)

The smallest power of two not less than `n`. Returns 0 for `n==0`, and returns
`-nextpow2(-n)` for negative arguments.
"""
nextpow2

"""
    full(F)

Reconstruct the matrix `A` from the factorization `F=factorize(A)`.
"""
full(F)

"""
    full(QRCompactWYQ[, thin=true]) -> Matrix

Converts an orthogonal or unitary matrix stored as a `QRCompactWYQ` object, i.e. in the
compact WY format [^Bischof1987], to a dense matrix.

Optionally takes a `thin` Boolean argument, which if `true` omits the columns that span the
rows of `R` in the QR factorization that are zero. The resulting matrix is the `Q` in a thin
QR factorization (sometimes called the reduced QR factorization). If `false`, returns a `Q`
that spans all rows of `R` in its corresponding QR factorization.
"""
full(::LinAlg.QRCompactWYQ, ?)

"""
    map(f, c...) -> collection

Transform collection `c` by applying `f` to each element. For multiple collection arguments,
apply `f` elementwise.

```jldoctest
julia> map((x) -> x * 2, [1, 2, 3])
3-element Array{Int64,1}:
 2
 4
 6

julia> map(+, [1, 2, 3], [10, 20, 30])
3-element Array{Int64,1}:
 11
 22
 33
```
"""
map

"""
    throw(e)

Throw an object as an exception.
"""
throw

"""
    isxdigit(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is a valid hexadecimal digit, or whether this is true for all elements of a string.
"""
isxdigit

"""
    fill(x, dims)

Create an array filled with the value `x`. For example, `fill(1.0, (10,10))` returns a 10×10
array of floats, with each element initialized to `1.0`.

If `x` is an object reference, all elements will refer to the same object. `fill(Foo(),
dims)` will return an array filled with the result of evaluating `Foo()` once.
"""
fill

"""
    issubset(a, b)
    ⊆(a,b) -> Bool
    ⊈(a,b) -> Bool
    ⊊(a,b) -> Bool

Determine whether every element of `a` is also in `b`, using [`in`](:func:`in`).
"""
issubset(a,b)

"""
    issubset(A, S) -> Bool
    ⊆(A,S) -> Bool

Return `true` if `A` is a subset of or equal to `S`.
"""
issubset

"""
    istriu(A) -> Bool

Test whether a matrix is upper triangular.
"""
istriu

"""
    map!(function, collection)

In-place version of [`map`](:func:`map`).
"""
map!(f,collection)

"""
    map!(function, destination, collection...)

Like [`map`](:func:`map`), but stores the result in `destination` rather than a new
collection. `destination` must be at least as large as the first collection.
"""
map!(f,destination,collection...)

"""
    unescape_string(s::AbstractString) -> AbstractString

General unescaping of traditional C and Unicode escape sequences. Reverse of
[`escape_string`](:func:`escape_string`). See also [`unescape_string`](:func:`unescape_string`).
"""
unescape_string(s)

"""
    redirect_stdout()

Create a pipe to which all C and Julia level `STDOUT` output will be redirected. Returns a
tuple `(rd,wr)` representing the pipe ends. Data written to `STDOUT` may now be read from
the rd end of the pipe. The wr end is given for convenience in case the old `STDOUT` object
was cached by the user and needs to be replaced elsewhere.
"""
redirect_stdout

"""
    redirect_stdout(stream)

Replace `STDOUT` by stream for all C and Julia level output to `STDOUT`. Note that `stream`
must be a TTY, a `Pipe` or a `TCPSocket`.
"""
redirect_stdout(stream)

"""
    print_with_color(color::Symbol, [io], strings...)

Print strings in a color specified as a symbol.

`color` may take any of the values $(Base.available_text_colors_docstring).
"""
print_with_color

"""
    stringmime(mime, x)

Returns an `AbstractString` containing the representation of `x` in the requested `mime`
type. This is similar to `reprmime` except that binary data is base64-encoded as an ASCII string.
"""
stringmime

"""
    ischardev(path) -> Bool

Returns `true` if `path` is a character device, `false` otherwise.
"""
ischardev

"""
    zero(x)

Get the additive identity element for the type of `x` (`x` can also specify the type itself).
"""
zero

"""
    any(A, dims)

Test whether any values along the given dimensions of an array are `true`.
"""
any(::AbstractArray,dims)

"""
    getkey(collection, key, default)

Return the key matching argument `key` if one exists in `collection`, otherwise return `default`.
"""
getkey

"""
    At_ldiv_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ`` \\ ``Bᵀ``.
"""
At_ldiv_Bt

"""
    Ac_mul_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ Bᴴ``.
"""
Ac_mul_Bc

"""
    zeros(type, dims)

Create an array of all zeros of specified type. The type defaults to Float64 if not specified.
"""
zeros(t,dims)

"""
    zeros(A)

Create an array of all zeros with the same element type and shape as `A`.
"""
zeros(A)

"""
    Symbol(x...) -> Symbol

Create a `Symbol` by concatenating the string representations of the arguments together.
"""
Symbol

"""
    zeta(s)

Riemann zeta function ``\\zeta(s)``.
"""
zeta(s)

"""
    A_mul_Bt(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``A⋅Bᵀ``.
"""
A_mul_Bt

"""
    vecnorm(A, [p])

For any iterable container `A` (including arrays of any dimension) of numbers (or any
element type for which `norm` is defined), compute the `p`-norm (defaulting to `p=2`) as if
`A` were a vector of the corresponding length.

For example, if `A` is a matrix and `p=2`, then this is equivalent to the Frobenius norm.
"""
vecnorm

"""
    isvalid(value) -> Bool

Returns `true` if the given value is valid for its type, which currently can be either
`Char` or `String`.
"""
isvalid(value)

"""
    isvalid(T, value) -> Bool

Returns `true` if the given value is valid for that type. Types currently can
be either `Char` or `String`. Values for `Char` can be of type `Char` or `UInt32`.
Values for `String` can be of that type, or `Vector{UInt8}`.
"""
isvalid(T,value)

"""
    isvalid(str, i)

Tells whether index `i` is valid for the given string.
"""
isvalid(::AbstractString,i)

"""
    esc(e::ANY)

Only valid in the context of an `Expr` returned from a macro. Prevents the macro hygiene
pass from turning embedded variables into gensym variables. See the [macro](:ref:`man-macros`)
section of the Metaprogramming chapter of the manual for more details and examples.
"""
esc

"""
    bitbroadcast(f, As...)

Like `broadcast`, but allocates a `BitArray` to store the result, rather then an `Array`.
"""
bitbroadcast

"""
    set_zero_subnormals(yes::Bool) -> Bool

If `yes` is `false`, subsequent floating-point operations follow rules for IEEE arithmetic
on subnormal values ("denormals"). Otherwise, floating-point operations are permitted (but
not required) to convert subnormal inputs or outputs to zero. Returns `true` unless
`yes==true` but the hardware does not support zeroing of subnormal numbers.

`set_zero_subnormals(true)` can speed up some computations on some hardware. However, it can
break identities such as `(x-y==0) == (x==y)`.
"""
set_zero_subnormals

"""
    frexp(val)

Return `(x,exp)` such that `x` has a magnitude in the interval ``[1/2, 1)`` or 0, and val =
``x \\times 2^{exp}``.
"""
frexp

"""
    sortcols(A, [alg=<algorithm>,] [by=<transform>,] [lt=<comparison>,] [rev=false])

Sort the columns of matrix `A` lexicographically.
"""
sortcols

"""
    rsplit(string, [chars]; limit=0, keep=true)

Similar to `split`, but starting from the end of the string.
"""
rsplit

"""
    trace(M)

Matrix trace.
"""
trace

"""
    runtests([tests=["all"] [, numcores=ceil(Integer, Sys.CPU_CORES / 2) ]])

Run the Julia unit tests listed in `tests`, which can be either a string or an array of
strings, using `numcores` processors. (not exported)
"""
runtests

"""
    time_ns()

Get the time in nanoseconds. The time corresponding to 0 is undefined, and wraps every 5.8 years.
"""
time_ns

"""
    exponent(x) -> Int

Get the exponent of a normalized floating-point number.
"""
exponent

"""
    rsearchindex(string, substring, [start])

Similar to `rsearch`, but return only the start index at which the substring is found, or `0` if it is not.
"""
rsearchindex

"""
    muladd(x, y, z)

Combined multiply-add, computes `x*y+z` in an efficient manner. This may on some systems be
equivalent to `x*y+z`, or to `fma(x,y,z)`. `muladd` is used to improve performance. See `fma`.
"""
muladd

"""
    unsigned(x) -> Unsigned

Convert a number to an unsigned integer. If the argument is signed, it is reinterpreted as
unsigned without checking for negative values.
"""
unsigned

"""
    mkdir(path, [mode])

Make a new directory with name `path` and permissions `mode`. `mode` defaults to `0o777`,
modified by the current file creation mask.
"""
mkdir

"""
    midpoints(e)

Compute the midpoints of the bins with edges `e`. The result is a vector/range of length
`length(e) - 1`. Note: Julia does not ignore `NaN` values in the computation.
"""
midpoints

"""
    .+(x, y)

Element-wise addition operator.
"""
Base.:(.+)

"""
    reverseind(v, i)

Given an index `i` in `reverse(v)`, return the corresponding index in `v` so that
`v[reverseind(v,i)] == reverse(v)[i]`. (This can be nontrivial in the case where `v` is a
Unicode string.)
"""
reverseind

"""
    float(x)

Convert a number, array, or string to a `AbstractFloat` data type. For numeric data, the
smallest suitable `AbstractFloat` type is used. Converts strings to `Float64`.
"""
float

"""
    include_dependency(path::AbstractString)

In a module, declare that the file specified by `path` (relative or absolute) is a
dependency for precompilation; that is, the module will need to be recompiled if this file
changes.

This is only needed if your module depends on a file that is not used via `include`. It has
no effect outside of compilation.
"""
include_dependency

"""
    ldexp(x, n)

Compute ``x \\times 2^n``.
"""
ldexp

"""
    islower(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is a lowercase letter, or whether this is true for all elements of
a string. A character is classified as lowercase if it belongs to Unicode category Ll,
Letter: Lowercase.
"""
islower

"""
    exp2(x)

Compute ``2^x``.
"""
exp2

"""
    gcd(x,y)

Greatest common (positive) divisor (or zero if `x` and `y` are both zero).
"""
gcd

"""
    signbit(x)

Returns `true` if the value of the sign of `x` is negative, otherwise `false`.
"""
signbit

"""
    cscd(x)

Compute the cosecant of `x`, where `x` is in degrees.
"""
cscd

"""
    tryparse(type, str, [base])

Like `parse`, but returns a `Nullable` of the requested type. The result will be null if the
string does not contain a valid number.
"""
tryparse

"""
    lexless(x, y)

Determine whether `x` is lexicographically less than `y`.
"""
lexless

"""
    all!(r, A)

Test whether all values in `A` along the singleton dimensions of `r` are `true`, and write results to `r`.
"""
all!

"""
    is_assigned_char(c) -> Bool

Returns `true` if the given char or integer is an assigned Unicode code point.
"""
is_assigned_char

"""
    exit([code])

Quit (or control-D at the prompt). The default exit code is zero, indicating that the
processes completed successfully.
"""
exit

"""
    istextmime(m::MIME)

Determine whether a MIME type is text data.
"""
istextmime

"""
    merge!(collection, others...)

Update collection with pairs from the other collections.
"""
merge!

"""
    realpath(path::AbstractString) -> AbstractString

Canonicalize a path by expanding symbolic links and removing "." and ".." entries.
"""
realpath

"""
    skipchars(stream, predicate; linecomment::Char)

Advance the stream until before the first character for which `predicate` returns `false`.
For example `skipchars(stream, isspace)` will skip all whitespace. If keyword argument
`linecomment` is specified, characters from that character through the end of a line will
also be skipped.
"""
skipchars

"""
    realmin(T)

The smallest in absolute value non-subnormal value representable by the given floating-point DataType `T`.
"""
realmin

"""
    union!(s, iterable)

Union each element of `iterable` into set `s` in-place.
"""
union!

"""
    At_ldiv_B(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᵀ`` \\ ``B``.
"""
At_ldiv_B

"""
    dot(x, y)
    ⋅(x,y)

Compute the dot product. For complex vectors, the first vector is conjugated.
"""
dot

"""
    cond(M, [p])

Condition number of the matrix `M`, computed using the operator `p`-norm. Valid values for
`p` are `1`, `2` (default), or `Inf`.
"""
cond

"""
    deepcopy(x)

Create a deep copy of `x`: everything is copied recursively, resulting in a fully
independent object. For example, deep-copying an array produces a new array whose elements
are deep copies of the original elements. Calling `deepcopy` on an object should generally
have the same effect as serializing and then deserializing it.

As a special case, functions can only be actually deep-copied if they are anonymous,
otherwise they are just copied. The difference is only relevant in the case of closures,
i.e. functions which may contain hidden internal references.

While it isn't normally necessary, user-defined types can override the default `deepcopy`
behavior by defining a specialized version of the function `deepcopy_internal(x::T, dict::ObjectIdDict)`
(which shouldn't otherwise be used), where `T` is the type to be specialized for, and `dict`
keeps track of objects copied so far within the recursion. Within the definition,
`deepcopy_internal` should be used in place of `deepcopy`, and the `dict` variable should be
updated as appropriate before returning.
"""
deepcopy

"""
    widen(x)

If `x` is a type, return a "larger" type (for numeric types, this will be
a type with at least as much range and precision as the argument, and usually more).
Otherwise `x` is converted to `widen(typeof(x))`.

```jldoctest
julia> widen(Int32)
Int64

julia> widen(1.5f0)
1.5
```
"""
widen

"""
    @eval

Evaluate an expression and return the value.
"""
:@eval

"""
    eval([m::Module], expr::Expr)

Evaluate an expression in the given module and return the result. Every `Module` (except
those defined with `baremodule`) has its own 1-argument definition of `eval`, which
evaluates expressions in that module.
"""
eval

"""
    Set([itr])

Construct a [`Set`](:obj:`Set`) of the values generated by the given iterable object, or an
empty set. Should be used instead of [`IntSet`](:obj:`IntSet`) for sparse integer sets, or
for sets of arbitrary objects.
"""
Set

"""
    erf(x)

Compute the error function of `x`, defined by ``\\frac{2}{\\sqrt{\\pi}} \\int_0^x e^{-t^2} dt``
for arbitrary complex `x`.
"""
erf

"""
    lcm(x,y)

Least common (non-negative) multiple.
"""
lcm

"""
    isprint(c::Union{Char,AbstractString}) -> Bool

Tests whether a character is printable, including spaces, but not a control character. For
strings, tests whether this is true for all elements of the string.
"""
isprint

"""
    splitdir(path::AbstractString) -> (AbstractString,AbstractString)

Split a path into a tuple of the directory name and file name.
"""
splitdir

"""
    sign(x)

Return zero if `x==0` and ``x/|x|`` otherwise (i.e., ±1 for real `x`).
"""
sign

"""
    signed(x)

Convert a number to a signed integer. If the argument is unsigned, it is reinterpreted as
signed without checking for overflow.
"""
signed

"""
    Val{c}

Create a "value type" out of `c`, which must be an `isbits` value. The intent of this
construct is to be able to dispatch on constants, e.g., `f(Val{false})` allows you to
dispatch directly (at compile-time) to an implementation `f(::Type{Val{false}})`, without
having to test the boolean value at runtime.
"""
Val

"""
    iswritable(io) -> Bool

Returns `true` if the specified IO object is writable (if that can be determined).
"""
iswritable

"""
    |(x, y)

Bitwise or.
"""
Base.:(|)

"""
    readandwrite(command)

Starts running a command asynchronously, and returns a tuple (stdout,stdin,process) of the
output stream and input stream of the process, and the process object itself.
"""
readandwrite

"""
    splitdrive(path::AbstractString) -> (AbstractString,AbstractString)

On Windows, split a path into the drive letter part and the path part. On Unix systems, the
first component is always the empty string.
"""
splitdrive

"""
    pop!(collection, key[, default])

Delete and return the mapping for `key` if it exists in `collection`, otherwise return
`default`, or throw an error if default is not specified.
"""
pop!(collection,key,?)

"""
    pop!(collection) -> item

Remove the last item in `collection` and return it.

```jldoctest
julia> A=[1, 2, 3, 4, 5, 6]
6-element Array{Int64,1}:
 1
 2
 3
 4
 5
 6

julia> pop!(A)
6

julia> A
5-element Array{Int64,1}:
 1
 2
 3
 4
 5
```
"""
pop!(collection)

"""
    randperm([rng,] n)

Construct a random permutation of length `n`. The optional `rng` argument specifies a random
number generator (see [Random Numbers](:ref:`Random Numbers <random-numbers>`)).
To randomly permute a arbitrary vector, see [`shuffle`](:func:`shuffle`)
or [`shuffle!`](:func:`shuffle!`).
"""
randperm

"""
    seekend(s)

Seek a stream to its end.
"""
seekend

"""
    DivideError()

Integer division was attempted with a denominator value of 0.
"""
DivideError

"""
    Ac_ldiv_Bc(A, B)

For matrices or vectors ``A`` and ``B``, calculates ``Aᴴ`` \\ ``Bᴴ``.
"""
Ac_ldiv_Bc

"""
    @enum EnumName EnumValue1[=x] EnumValue2[=y]

Create an [`Enum`](:obj:`Enum`) type with name `EnumName` and enum member values of
`EnumValue1` and `EnumValue2` with optional assigned values of `x` and `y`, respectively.
`EnumName` can be used just like other types and enum member values as regular values, such as

```jldoctest
julia> @enum FRUIT apple=1 orange=2 kiwi=3

julia> f(x::FRUIT) = "I'm a FRUIT with value: \$(Int(x))"
f (generic function with 1 method)

julia> f(apple)
"I'm a FRUIT with value: 1"
```
"""
:@enum

"""
    widemul(x, y)

Multiply `x` and `y`, giving the result as a larger type.
"""
widemul

"""
    unsafe_pointer_to_objref(p::Ptr)

Convert a `Ptr` to an object reference. Assumes the pointer refers to a valid heap-allocated
Julia object. If this is not the case, undefined behavior results, hence this function is
considered "unsafe" and should be used with care.
"""
unsafe_pointer_to_objref

"""
    chomp(string)

Remove a single trailing newline from a string.
"""
chomp

"""
    >=(x, y)
    ≥(x,y)

Greater-than-or-equals comparison operator.
"""
Base.:(>=)

"""
    dawson(x)

Compute the Dawson function (scaled imaginary error function) of `x`, defined by
``\\frac{\\sqrt{\\pi}}{2} e^{-x^2} \\operatorname{erfi}(x)``.
"""
dawson

"""
    randjump(r::MersenneTwister, jumps, [jumppoly]) -> Vector{MersenneTwister}

Create an array of the size `jumps` of initialized `MersenneTwister` RNG objects where the
first RNG object given as a parameter and following `MersenneTwister` RNGs in the array
initialized such that a state of the RNG object in the array would be moved forward (without
generating numbers) from a previous RNG object array element on a particular number of steps
encoded by the jump polynomial `jumppoly`.

Default jump polynomial moves forward `MersenneTwister` RNG state by 10^20 steps.
"""
randjump

"""
    :(start, [step], stop)

Range operator. `a:b` constructs a range from `a` to `b` with a step size of 1, and `a:s:b`
is similar but uses a step size of `s`. These syntaxes call the function `colon`. The colon
is also used in indexing to select whole dimensions.
"""
colon(start, step, stop)

"""
    \$(x, y)

Bitwise exclusive or.
"""
Base.:$(x, y)

"""
    getsockname(sock::Union{TCPServer, TCPSocket}) -> (IPAddr,UInt16)

Get the IP address and the port that the given TCP socket is connected to (or bound to, in the case of TCPServer).
"""
getsockname