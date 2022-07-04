// @kind function
// @overview Sort dictionary value in ascending order of value.
//
// - See [`asc`](https://code.kx.com/q/ref/asc/#asc).
// @param dict {dict} A dictionary.
// @return {dict} A dictionary of the same elements sorted in ascending order of value.
.dict.sortAsc:{[dict] asc dict };

// @kind function
// @overview Keys for ascending sort.
//
// - See [`iasc`](https://code.kx.com/q/ref/asc/#iasc).
// @param dict {dict} A dictionary.
// @return {list} Keys reordered to sort the dictionary in ascending order.
.dict.argSort:{[dict] iasc dict };
