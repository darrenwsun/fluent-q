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
// @overview Indices for ascending sort.
//
// - See [`iasc`](https://code.kx.com/q/ref/asc/#iasc).
// @param vector {*[]} A vector.
// @return {long[]} Indices needed to sort the vector in ascending order.
.list.argSort:{[vector] iasc vector };
