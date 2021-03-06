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
