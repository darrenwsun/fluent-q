
// @kind function
// @overview Whether a name is defined.
//
// - See [`key`](https://code.kx.com/q/ref/key/#whether-a-name-is-defined).
// @param name {symbol} A name.
// @return {table} `1b` if the name is already defined, `0b` otherwise.
.util.defined:{[name] not ()~key name };
