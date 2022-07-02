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

// @kind function
// @overview Save tables. The first column of each table saved has the partitioned attribute.
// See [`dsave`](https://code.kx.com/q/ref/dsave/).
// @param file {symbol | symbol[]} A file, or a vector containing an HDB root directory and a partition name.
// @param table {symbol | symbol[]} Table name(s)
// @return {symbol[]} The list of table names that are saved.
.io.saveTables:{[file;table] file dsave table };

// @kind function
// @overview Save a q object to disk.
// See [`set`](https://code.kx.com/q/ref/get/#set).
// @param file {symbol} A file.
// @param object {*} A q object to be saved.
// @return {symbol} The file where the object is saved.
// @see .io.saveObjectCompressed
// @see .io.loadObject
.io.saveObject:{[file;object] file set object };

// @kind function
// @overview Save a q object to disk, compressed.
//
// - See [`set`](https://code.kx.com/q/ref/get/#set).
// - See [`Compression parameters`](https://code.kx.com/q/kb/file-compression/#compression-parameters).
// @param file {symbol} A file.
// @param object {*} A q object to be saved.
// @param size {integer} Logical block size.
// @param algo {integer} Compression algorithm.
// @param level {integer} Compression level.
// @return {symbol} The file where the object is saved.
// @see .io.saveObject
.io.saveObjectCompressed:{[file;object;size;algo;level] (file; size; algo; level) set object };

// @kind function
// @overview Load a q object from disk. It can be memory mapped, or copied into memory, subject to its datatype and
// how it was saved initially.
//
// - See [`get`](https://code.kx.com/q/ref/get/#get).
// - See [Memory mapping in kdb+](https://kx.com/blog/memory-mapping-in-kdb/).
// @param file {symbol} A file.
// @return {*} The q object represented by the file.
// @see .io.saveObject
.io.loadObject:{[file] get file};

// @kind function
// @overview Splay table.
//
// - See [`set`](https://code.kx.com/q/ref/get/#set).
// @param dir {symbol} A directory path.
// @param table {table} A table to be splayed.
// @return {symbol} The directory.
// @see .io.splayTableCompressed
// @see .io.splayTableCompressedPerSpec
// @see .io.loadSplayedTable
.io.splayTable:{[dir;table] dir set table };

// @kind function
// @overview Splay table, compressed.
//
// - See [`set`](https://code.kx.com/q/ref/get/#set).
// - See [`Compression parameters`](https://code.kx.com/q/kb/file-compression/#compression-parameters).
// @param dir {symbol} A directory path.
// @param table {table} A table to be splayed.
// @param size {integer} Logical block size.
// @param algo {integer} Compression algorithm.
// @param level {integer} Compression level.
// @return {symbol} The directory.
// @see .io.splayTable
// @see .io.splayTableCompressedPerSpec
.io.splayTableCompressed:{[dir;table;size;algo;level] (dir; size; algo; level) set table };

// @kind function
// @overview Splay table, compressed using per-column compression specification.
// Compression for unspecified columns is specified either by an entry for the null symbol or by `.z.zd`.
//
// - See [`set`](https://code.kx.com/q/ref/get/#set).
// - See [`Compression parameters`](https://code.kx.com/q/kb/file-compression/#compression-parameters).
// @param dir {symbol} A directory path.
// @param table {table} A table to be splayed.
// @param compSpec {dictionary} A dictionary whose keys are either columns names of the table or the null symbol,
// and whose values are each an integer vector: size, algo, level.
// @return {symbol} The directory.
// @see .io.splayTable
// @see .io.splayTableCompressed
.io.splayTableCompressedPerSpec:{[dir;table;compSpec] (dir; compSpec) set table };

// @kind function
// @overview Load splayed table. The table is memory-mapped in deferred mode.
//
// - See [`get`](https://code.kx.com/q/ref/get/#get).
// @param dir {symbol} A directory.
// @return {*} The splayed table.
// @see .io.splayTable
.io.loadSplayedTable:{[dir] get dir };
