// @kind function
// @overview List file/directory.
// See [`key`](https://code.kx.com/q/ref/key/#files-in-a-folder).
// @param path {symbol} A file symbol.
// @return {symbol[] | list} The file if the path points to a file;
// items under the directory in ascending order, if the path points to a directory;
// empty general list if the path doesn't exist.
// see .io.listAll
.io.list:{[path] key path };

// @kind function
// @overview List file or directory recursively.
// @param path {symbol} A file symbol.
// @return {symbol[] | list} The file if the path points to a file;
/// the directory and items under it recursively in ascending order, if the path points to a directory;
/// empty general list if the path doesn't exist.
// see .io.list
.io.listAll:{[path]
  $[11h=type d:.io.list path; raze path,.io.listAll each ` sv/:path,/:d; d]
 };

 // @kind function
// @overview Check if the argument represents a file and it exists.
// @param path {symbol} A file symbol.
// @return {bool} 1b if it exists and it's a file, 0b otherwise.
// see .io.isDir
.io.isFile:{[path] path~.io.list path };

// @kind function
// @overview Check if the argument represents a directory and it exists.
// @param path {symbol} A file symbol.
// @return {bool} 1b if it exists and it's a directory, 0b otherwise.
// see .io.isFile
.io.isDir:{[path] 11h=type .io.list path };

// @kind function
// @overview Open file.
// See [`hopen`](https://code.kx.com/q/ref/hopen/#hopen).
// @param file {symbol | string} A file symbol or file path, pointing to a file.
// @return {int} A connection handle to the file.
.io.open:{[file] hopen file };

// @kind function
// @overview Close file handle.
// See [`hclose`](https://code.kx.com/q/ref/hopen/#hclose).
// @param handle {int} A file handle.
.io.close:{[handle] hclose handle };

// @kind function
// @overview File size in bytes.
// See [`hcount`](https://code.kx.com/q/ref/hcount/).
// @param file {symbol} A file symbol pointing to a file.
// @return {long} Size of the file. If the file is compressed, return the size of the original uncompressed file.
.io.getSize:{[file] hcount file };

// @kind function
// @overview Delete a file or directory if it's empty.
// See [`hdel`](https://code.kx.com/q/ref/hdel/).
// @param file {symbol} A file symbol.
// @return {symbol} The file symbol.
// @see .io.deleteAll
.io.delete:{[file] hdel file };

// @kind function
// @overview Delete a file, or directory and its files and subdirectories recursively.
// @param path {symbol} A file symbol.
// @return {symbol} The file symbol.
// @see .io.delete
.io.deleteAll:{[path]
  // Without the preceding empty list, the function would fail when the path is a file, since desc expects a list
  // Descending order to allow files and subdirectories are deleted before the parent
  hdel each desc (),.io.listAll path;
  path
 };
