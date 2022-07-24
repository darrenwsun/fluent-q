// @kind function
// @overview Converge.
//
// - See [`Converge`](https://code.kx.com/q/ref/accumulators/#converge).
// @param func {function | list | dict} A unary function, or a list, or a dictionary.
// @param param {*} Parameter to the function, or index of the list, or keys of the dictionary.
// @return {*} `param` and successive evaluations by `func`, until two successive evaluations match or an evaluation
// matches `param`.
.func.converge:{[func;param] (func\) param };

// @kind function
// @overview Over unary.
//
// - See [`Over`](https://code.kx.com/q/ref/accumulators/#unary-application).
// @param func {function} A binary function.
// @param list {*[]} A list.
// @return {*[]} A list of results by successively apply the function to the elements in the list.
.func.overUnary:{[func;list] (func\) list };

// @kind function
// @overview Over binary.
//
// - See [`Over`](https://code.kx.com/q/ref/accumulators/#binary-application).
// @param func {function} A binary function.
// @param start {*} A value.
// @param list {*[]} A list.
// @return {*[]} A list of results by successively apply the function to the elements in the list. The first iteration
// uses `start` and the first element of the list.
.func.overBinary:{[func;start;list] (func\)[start;list] };

// @kind function
// @overview Over ternary.
//
// - See [`Over`](https://code.kx.com/q/ref/accumulators/#ternary-values).
// @param func {function} A binary function.
// @param start {*} A value.
// @param list1 {*[]} A list.
// @param list2 {*[]} A list.
// @return {*[]} A list of results by successively apply the function to the elements in the list. The first iteration
// uses `start`, the first element of `list1`, and the first element of `list2`.
.func.overTernary:{[func;start;list1;list2] (func\)[start;list1;list2] };
