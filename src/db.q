// @kind function
// @overview Save tables. The first column of each table saved has the partitioned attribute.
// See [`dsave`](https://code.kx.com/q/ref/dsave/).
// @param file {symbol | symbol[]} A file, or a vector containing an HDB root directory and a partition name.
// @param table {symbol | symbol[]} Table name(s)
// @return {symbol[]} The list of table names that are saved.
.db.saveTables:{[file;table] file dsave table };

// @kind function
// @overview Save a q object to disk.
// See [`set`](https://code.kx.com/q/ref/get/#set).
// @param file {symbol} A file.
// @param object {*} A q object to be saved.
// @return {symbol} The file where the object is saved.
// @see .db.saveObjectCompressed
// @see .db.loadObject
.db.saveObject:{[file;object] file set object };

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
// @see .db.saveObject
.db.saveObjectCompressed:{[file;object;size;algo;level] (file; size; algo; level) set object };

// @kind function
// @overview Load a q object from disk. It can be memory mapped, or copied into memory, subject to its datatype and
// how it was saved initially.
//
// - See [`get`](https://code.kx.com/q/ref/get/#get).
// - See [Memory mapping in kdb+](https://kx.com/blog/memory-mapping-in-kdb/).
// @param file {symbol} A file.
// @return {*} The q object represented by the file.
// @see .db.saveObject
.db.loadObject:{[file] get file};

// @kind function
// @overview Splay table.
//
// - See [`set`](https://code.kx.com/q/ref/get/#set).
// @param dir {symbol} A directory path.
// @param table {table} A table to be splayed.
// @return {symbol} The directory.
// @see .db.splayTableCompressed
// @see .db.splayTableCompressedPerSpec
// @see .db.loadSplayedTable
.db.splayTable:{[dir;table] dir set table };

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
// @see .db.splayTable
// @see .db.splayTableCompressedPerSpec
.db.splayTableCompressed:{[dir;table;size;algo;level] (dir; size; algo; level) set table };

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
// @see .db.splayTable
// @see .db.splayTableCompressed
.db.splayTableCompressedPerSpec:{[dir;table;compSpec] (dir; compSpec) set table };

// @kind function
// @overview Load splayed table. The table is memory-mapped in deferred mode.
//
// - See [`get`](https://code.kx.com/q/ref/get/#get).
// @param dir {symbol} A directory.
// @return {*} The splayed table.
// @see .db.splayTable
.db.loadSplayedTable:{[dir] get dir };
