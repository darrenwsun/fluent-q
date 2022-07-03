// @kind function
// @overview Slice of a list.
// See [`sublist`](https://code.kx.com/q/ref/sublist/#slice).
// @param list {list} A list.
// @param pos {integer} Starting position.
// @param len {integer} Length.
// @return {list} A slice of the list starting at the given position and up to the given length.
.list.slice:{[list;pos;len] (pos; len) sublist list };
