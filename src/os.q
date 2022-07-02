// @kind function
// @overview Get environment variable.
// See [`getenv`](https://code.kx.com/q/ref/getenv/#getenv_1).
// @param name {symbol} Name of an environment variable.
// @return {string} Value of the environment variable if it exists, otherwise empty string.
.os.getenv:{[name] getenv name };

// @kind function
// @overview Set environment variable.
// See [`setenv`](https://code.kx.com/q/ref/getenv/#setenv).
// @param name {symbol} Name of an environment variable.
// @param value {symbol} Value to be assigned.
.os.setenv:setenv;
