// @kind function
// @overview Join directories and file to form a path.
//
// - See [`sv`](https://code.kx.com/q/ref/sv/#filepath-components).
// @param items {symbol[]} A symbol list where the first is a file symbol.
// @return {symbol} A file symbol by joining the items with slashes.
.file.join:{[items] ` sv items };

// @kind function
// @overview Split file path into directory and file parts.
//
// - See [`vs`](https://code.kx.com/q/ref/vs/#file-handle).
// @param path {symbol} A file symbol.
// @return {symbol[]} A file symbol for the directory part and a symbol for filename part.
.file.split:{[path] ` vs path };
