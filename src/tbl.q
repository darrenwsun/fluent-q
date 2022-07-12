// @kind function
// @overview Metadata for a table.
//
// - See [`meta`](https://code.kx.com/q/ref/meta/).
// @param table {table | keyed table | symbol} A table or a table name or a file symbol for a splayed table.
// @return {symbol[]} Metadata of the table.
.tbl.meta:{[table] meta table };

// @kind function
// @overview Column names of a table.
//
// - See [`cols`](https://code.kx.com/q/ref/cols/#cols).
// @param table {table | keyed table | symbol} A table or a table name or a file symbol for a splayed table.
// @return {symbol[]} Column names of the table.
.tbl.columns:{[table] cols table };

// @kind function
// @overview Rename table columns.
//
// - See [`xcol`](https://code.kx.com/q/ref/cols/#xcol).
// @param table {table | keyed table} A table.
// @param names {symbol[] | dict} New column names, or a full mapping between old and new column names.
// @return {table | keyed table} Table with column renamed. If `names` is a symbol vector of length no greater than the number of
// columns in the table, the first `count names` columns are renamed. If `names` is a dictionary, the columns
// are renamed according to the mapping.
.tbl.renameCol:{[table;names] names xcol table };

// @kind function
// @overview Reorder table columns.
//
// - See [`xcols`](https://code.kx.com/q/ref/cols/#xcols).
// @param table {table} A non-keyed table.
// @param names {symbol[]} Some or all of the table's column names.
// @return {table} The table where the columns of the specified names appear first.
.tbl.reorderCol:{[table;names] names xcols table };

// @kind function
// @overview A table composed of key column(s).
//
// - See [`key`](https://code.kx.com/q/ref/key/#keys-of-a-keyed-table).
// @param table {keyed table | symbol} A keyed table, or name of a keyed table.
// @return {table} A table composed of key column(s).
.tbl.keys:{[table] key table };

// @kind function
// @overview Get key column(s).
//
// - See [`keys`](https://code.kx.com/q/ref/keys/#keys).
// @param table {table | keyed table | symbol} A keyed/unkeyed table, or a table name.
// @return {symbol[]} Key columns of the table if it's keyed, otherwise empty symbol vector.
.tbl.getKey:{[table] keys table };

// @kind function
// @overview Set key column(s).
//
// - See [`xkey`](https://code.kx.com/q/ref/keys/#xkey).
// @param table {table | keyed table | symbol} A keyed/unkeyed table, or a table name.
// @param keyCols {symbol | symbol[]} Some column names of the table.
// @return {keyed table | symbol} A keyed table, or the same name, whose keys are specified by `keyCols`.
.tbl.setKey:{[table;keyCols] keyCols xkey table };

// @kind function
// @overview Foreign-key columns of a table.
//
// - See [`fkeys`](https://code.kx.com/q/ref/fkeys/).
// @param table {table | keyed table} A table, keyed or non-keyed.
// @return {dict} A dictionary that maps foreign-key columns to their tables.
.tbl.foreignKeys:{[table] fkeys table };

// @kind function
// @overview Sort table in ascending order by first non-key column.
//
// - See [`asc`](https://code.kx.com/q/ref/asc/#table).
// @param table {table | keyed table} A table or keyed table.
// @return {table | keyed table} The table or keyed table sorted in ascending order by the first non-key column,
// with the sorted attribute set on it if there is only one non-key column, otherwise the partitioned attribute set.
.tbl.sortAsc:{[table] asc table };

// @kind function
// @overview Sort table in descending order by first non-key column.
//
// - See [`desc`](https://code.kx.com/q/ref/desc/#desc).
// @param table {table | keyed table} A table or keyed table.
// @return {table | keyed table} The table or keyed table sorted in descending order by the first non-key column.
.tbl.sortDesc:{[table] desc table };

// @kind function
// @overview Sort table in ascending order by given columns.
//
// - See [`xasc`](https://code.kx.com/q/ref/asc/#xasc).
// @param table {table | keyed table | symbol} A table, keyed table, or table name.
// @param columns {symbol | symbol[]} Column name(s) of the table.
// @return {table | keyed table | symbol} The table sorted by the columns, if the table is passed by value,
// otherwise the table name itself where the sorting is in place. The sorted attribute is set on the first column.
.tbl.sortAscByColumns:{[table;columns] columns xasc table };

// @kind function
// @overview Sort table in descending order by given columns.
//
// - See [`xdesc`](https://code.kx.com/q/ref/desc/#xdesc).
// @param table {table | keyed table | symbol} A table, keyed table, or table name.
// @param columns {symbol | symbol[]} Column name(s) of the table.
// @return {table | keyed table | symbol} The table sorted in descending order by the columns, if the table is passed by value,
// otherwise the table name itself where the sorting is in place.
.tbl.sortDescByColumns:{[table;columns] columns xdesc table };

// @kind function
// @overview Convert table to CSV format.
//
// - See [`0: File Text`](https://code.kx.com/q/ref/file-text/#prepare-text).
// @param table {table | keyed table} A table, keyed or non-keyed.
// @return {string[]} CSV format of the table.
.tbl.toCsv:{[table] csv 0: table };

// @kind function
// @overview Ungroup.
//
// - See [`ungroup`](https://code.kx.com/q/ref/ungroup/).
// @param table {table | keyed table} A table, keyed or non-keyed. Some cells are lists, and for any row, all lists
// are of equal length.
// @return {table} A normalized table with one row for each item of the lists.
.tbl.ungroup:{[table] ungroup table };

