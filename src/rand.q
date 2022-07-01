// @kind function
// @overview Pick randomly an item from a list.
// See [`rand`](https://code.kx.com/q/ref/rand/).
// @param x {*[]} A list.
// @return {*} An randomly selected item from x.
.rnd.pickFromList:rand;

// @kind function
// @overview Get a random value under a limit.
// See [`rand`](https://code.kx.com/q/ref/rand/).
// @param x {number} A number.
// @return {number} An random value of the same type as x and smaller than x.
.rnd.underLimit:rand;

// @kind function
// @overview Get a random symbol of given length.
// See [`rand`](https://code.kx.com/q/ref/rand/).
// @param x {short | int | long} A number between 1 and 8.
// @return {symbol} A random symbol of length x.
.rnd.symbolOfLength:rand;
