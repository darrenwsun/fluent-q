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
