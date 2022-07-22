// @kind function
// @overview Whether a name is defined.
//
// - See [`key`](https://code.kx.com/q/ref/key/#whether-a-name-is-defined).
// @param name {symbol} A name.
// @return {table} `1b` if the name is already defined, `0b` otherwise.
.util.defined:{[name] not ()~key name };

// @kind function
// @overview Trap.
//
// - See [`Trap`](https://code.kx.com/q/ref/apply/#trap).
// @param func {function} A function.
// @param param {*} Parameter(s) to the function.
// @param expr {*} An expression or a unary function.
// @return {*} The result of evaluating the function with the parameter, if no error occurs.
// When there is an error, if `expr` is an expression, the expression is evaluated and returned;
// if `expr` is a function, it's evaluated given the error as the input.
.util.trap:{[func;param;expr] .[func; (),param; expr] };

// @kind function
// @overview Converge.
//
// - See [`Converge`](https://code.kx.com/q/ref/accumulators/#converge).
// @param func {function | list | dict} A unary function, or a list, or a dictionary.
// @param param {*} Parameter to the function, or index of the list, or keys of the dictionary.
// @return {*} `param` and successive evaluations by `func`, until two successive evaluations match or an evaluation
// matches `param`.
.util.converge:{[func;param] (func\) param };

// @kind function
// @overview Over unary.
//
// - See [`Over`](https://code.kx.com/q/ref/accumulators/#unary-application).
// @param func {function} A binary function.
// @param list {*[]} A list.
// @return {*[]} A list of results by successively apply the function to the elements in the list.
.util.overUnary:{[func;list] (func\) list };

// @kind function
// @overview Over binary.
//
// - See [`Over`](https://code.kx.com/q/ref/accumulators/#binary-application).
// @param func {function} A binary function.
// @param start {*} A value.
// @param list {*[]} A list.
// @return {*[]} A list of results by successively apply the function to the elements in the list. The first iteration
// uses `start` and the first element of the list.
.util.overBinary:{[func;start;list] (func\)[start;list] };
