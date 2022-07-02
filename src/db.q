// @kind function
// @overview Save tables. The first column of each table saved has the partitioned attribute.
// See [`dsave`](https://code.kx.com/q/ref/dsave/).
// @param path {symbol | symbol[]} A full path for splayed tables, or an HDB root path and a partition name
// for partitioned tables.
// @param table {symbol | symbol[]} Table name(s)
// @return {symbol[]} The list of table names that are saved
.db.saveTables:{[path;table] path dsave table };
