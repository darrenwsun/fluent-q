// @kind function
// @overview UTC equivalent of local timestamp.
// See [`gtime`](https://code.kx.com/q/ref/gtime/#gtime).
// @param x {datetime | timestamp} A local datetime/timestamp.
// @return {datetime | timestamp} The equivalent UTC datetime/timestamp.
.dt.localToUtc:gtime;

// @kind function
// @overview Local equivalent of UTC timestamp.
// See [`ltime`](https://code.kx.com/q/ref/gtime/#ltime).
// @param x {datetime | timestamp} A UTC datetime/timestamp.
// @return {datetime | timestamp} The equivalent local datetime/timestamp.
.dt.utcToLocal:ltime;
