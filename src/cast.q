// @kind function
// @overview Cast bytes to integer.
// See [`sv`](https://code.kx.com/q/ref/sv/#bytes-to-integer).
// @param bytes {byte[]} A vector of 2/4/8 bytes.
// @return {integer} A corresponding short/int/long integer.
// @throws "length" If the length of bytes is not 2/4/8.
// @throws "type" If the data type is not byte vector.
.cast.bytesToInteger:{[bytes] 0x0 sv bytes };

// @kind function
// @overview Cast bits to integer.
// See [`sv`](https://code.kx.com/q/ref/sv/#bits-to-integer).
// @param bits {bool[]} A vector of 8/16/32/64 booleans.
// @return {integer} A corresponding byte or short/int/long integer.
// @throws "length" If the length of bytes is not 8/16/32/64.
// @throws "type" If the data type is not bool vector.
.cast.bitsToInteger:{[bits] 0b sv bits };
