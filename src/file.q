// @kind function
// @overview Join directories and file to form a path.
// See [`sv`](https://code.kx.com/q/ref/sv/#filepath-components).
// @param items {symbol[]} A symbol list where the first is a file symbol.
// @return {symbol} A file symbol by joining the items with slashes.
.file.join:{[items] ` sv items };
