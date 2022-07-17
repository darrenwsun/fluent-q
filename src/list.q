// @kind function
// @overview Vector data type.
//
// @param vector {*[]} A vector.
// @return {symbol} Data type of the vector.
.list.type:{[list] key list};

// @kind function
// @overview Slice of a list.
//
// - See [`sublist`](https://code.kx.com/q/ref/sublist/#slice).
// @param list {list} A list.
// @param pos {integer} Starting position.
// @param len {integer} Length.
// @return {list} A slice of the list starting at the given position and up to the given length.
.list.slice:{[list;pos;len] (pos; len) sublist list };

// @kind function
// @overview Remove leading or trailing nulls.
// This function is [string-atomic](https://code.kx.com/q/basics/atomic/#string-atomic).
//
// - See [`trim`](https://code.kx.com/q/ref/trim/).
// @param vector {*[]} A vector.
// @return {*[]} The vector with leading and trailing nulls removed.
.list.trim:{[vector] trim vector };

// @kind function
// @overview Remove leading nulls.
// This function is [string-atomic](https://code.kx.com/q/basics/atomic/#string-atomic).
//
// - See [`ltrim`](https://code.kx.com/q/ref/trim/).
// @param vector {*[]} A vector.
// @return {*[]} The vector with leading nulls removed.
.list.ltrim:{[vector] ltrim vector };

// @kind function
// @overview Remove trailing nulls.
// This function is [string-atomic](https://code.kx.com/q/basics/atomic/#string-atomic).
//
// - See [`rtrim`](https://code.kx.com/q/ref/trim/).
// @param vector {*[]} A vector.
// @return {*[]} The vector with trailing nulls removed.
.list.rtrim:{[vector] rtrim vector };

// @kind function
// @overview Repeat.
//
// - See [`where`](https://code.kx.com/q/ref/where/#dictionary-whose-values-are-non-negative-integers).
// @param times {dict} A mapping between elements to repeat and the number of times they are repeated.
// @return {list} A list where the keys are repeated by the corresponding number of times.
.list.repeat:{[times] where times };

// @kind function
// @overview Sort vector in ascending order.
//
// - See [`asc`](https://code.kx.com/q/ref/asc/#vector).
// @param vector {*[]} A vector.
// @return {*[]} A vector of the same items but sorted in ascending order of value, with the sorted attribute set.
.list.sortAsc:{[vector] asc vector };

// @kind function
// @overview Sort vector in descending order.
//
// - See [`desc`](https://code.kx.com/q/ref/desc/#desc).
// @param vector {*[]} A vector.
// @return {*[]} A vector of the same items but sorted in descending order of value.
.list.sortDesc:{[vector] desc vector };

// @kind function
// @overview Indices for ascending sort.
//
// - See [`iasc`](https://code.kx.com/q/ref/asc/#iasc).
// @param vector {*[]} A vector.
// @return {long[]} Indices needed to sort the vector in ascending order.
.list.argSortAsc:{[vector] iasc vector };

// @kind function
// @overview Indices for descending sort.
//
// - See [`idesc`](https://code.kx.com/q/ref/desc/#idesc).
// @param vector {*[]} A vector.
// @return {long[]} Indices needed to sort the vector in descending order.
.list.argSortDesc:{[vector] idesc vector };

// @kind function
// @overview Position in the ascending sorted list.
//
// - See [`rank`](https://code.kx.com/q/ref/rank/).
// @param vector {*[]} A vector.
// @return {long[]} Indices of elements they would appear at in the ascending sorted list.
.list.rankAsc:{[vector] rank vector };

// @kind function
// @overview Position in the descending sorted list.
//
// - See [`rank`](https://code.kx.com/q/ref/rank/).
// @param vector {*[]} A vector.
// @return {long[]} Indices of elements they would appear at in the descending sorted list.
.list.rankDesc:{[vector] rank neg vector };

// @kind function
// @overview Binary search - last index of not greater value. This function is right-atomic.
//
// - See [`bin`](https://code.kx.com/q/ref/bin/).
// @param vector {*[]} A sorted vector.
// @param target {*} A value.
// @return {long} Index of the last item in the vector whose value is not greater than the target.
.list.binSearchLast:{[vector;target] vector bin target };

// @kind function
// @overview Binary search - first index of not smaller value. This function is right-atomic.
//
// - See [`bin`](https://code.kx.com/q/ref/bin/).
// @param vector {*[]} A sorted vector.
// @param target {*} A value.
// @return {long} Index of the first item in the vector whose value is not smaller than the target.
.list.binSearchFirst:{[vector;target] vector binr target };

// @kind function
// @overview Round down by interval. This function is atomic.
//
// - See [`xbar`](https://code.kx.com/q/ref/xbar/).
// @param list {number[] | temporal[]} A numeric or temporal vector.
// @param interval {integer} Interval.
// @return {number[] | temporal[]} A list where each element is rounded down to the nearest multiple of the interval.
.list.roundDownByInterval:{[list;interval] interval xbar list };

// @kind function
// @overview Round down by checkpoints.
//
// @param list {number[] | temporal[]} A numeric or temporal vector.
// @param checkpoints {integer[]} Checkpoints, sorted in ascending order.
// @return {number[] | temporal[]} A list where each element is rounded down to the nearest checkpoint.
.list.roundDownByCheckpoints:{[list;checkpoints] checkpoints @ checkpoints bin list};

// @kind function
// @overview Distribute evenly.
//
// @param list {number[] | temporal[]} A numeric or temporal vector.
// @param bucket {integer} Number of buckets.
// @return {number[] | temporal[]} Bucket labels each element is assigned to after sorting the list.
// If the total number of items is evenly divisible by the number of buckets, each bucket will have the same
// number of items; otherwise the first bucket has more items.
.list.distribute:{[list;bucket] bucket xrank list};

// @kind function
// @overview Enumeration source.
//
// @param list {*[]} An enumerated list.
// @return {symbol} Name of the variable by which the list is enumerated.
.list.enumSource:{[list] key list};

// @kind function
// @overview Apply unary.
//
// @param list {*[] | symbol} An list, or a name to a list, or a file symbol.
// @param index {integer[]} Index of some element.
// @param func {function} A unary function to apply to the element at the index.
// @return {*[] | symbol} The list or its name with the given function applied to the element at the given index.
.list.applyUnary:{[list;index;func] .[list; (),index; func] };

// @kind function
// @overview Apply binary.
//
// @param list {*[] | symbol} An list, or a name to a list.
// @param index {integer[]} Index of some element.
// @param func {function} A binary function to apply to the element at the index.
// @param val {*} Value to be used as the second argument to the function.
// @return {*[] | symbol} The list or its name with the given function applied to the element at the given index
// and the value.
.list.applyBinary:{[list;index;func;val] .[list; (),index; func; val] };

// @kind function
// @overview Amend.
//
// @param list {*[] | symbol} An list, or a name to a list.
// @param index {integer[]} Index to amend at.
// @param val {*} Value for the amendment.
// @return {*[] | symbol} Name of the variable by which the list is enumerated.
.list.amend:{[list;index;val] .[list; (),index; :; val] };
