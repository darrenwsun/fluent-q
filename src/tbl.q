// @kind function
// @overview Sort table.
//
// - See [`asc`](https://code.kx.com/q/ref/asc/#table).
// @param table {table | keyed table} A table or keyed table.
// @return {table | keyed table} A table or keyed table sorted by the first non-key column,
// with the sorted attribute set on it if there is only one non-key column, otherwise the partitioned attribute set.
.tbl.sortAsc:{[table] asc table };
