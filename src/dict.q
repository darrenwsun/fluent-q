// @kind function
// @overview Sort dictionary value in ascending order of value.
//
// - See [`asc`](https://code.kx.com/q/ref/asc/#asc).
// @param dict {dict} A dictionary.
// @return {dict} A dictionary of the same elements sorted in ascending order of value.
.dict.sortAsc:{[dict] asc dict };

// @kind function
// @overview Sort dictionary value in descending order of value.
//
// - See [`desc`](https://code.kx.com/q/ref/desc/#desc).
// @param dict {dict} A dictionary.
// @return {dict} A dictionary of the same elements sorted in descending order of value.
.dict.sortDesc:{[dict] desc dict };

// @kind function
// @overview Keys for ascending sort.
//
// - See [`iasc`](https://code.kx.com/q/ref/asc/#iasc).
// @param dict {dict} A dictionary.
// @return {list} Keys reordered to sort the dictionary in ascending order.
.dict.argSortAsc:{[dict] iasc dict };

// @kind function
// @overview Position in the ascending sorted dictionary.
//
// - See [`rank`](https://code.kx.com/q/ref/rank/).
// @param dict {dict} A dictionary.
// @return {long[]} Indices of values they would appear at in the ascending sorted list.
.dict.rankAsc:{[vector] rank vector };
