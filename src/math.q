// @kind function
// @fileoverview Returns absolute value of x. This function is atomic.
// See [`abs`](https://code.kx.com/q/ref/abs/).
// @param x {number} A number.
// @return {number} Absolute value of x.
.math.abs:abs;

// @kind function
// @fileoverview Returns the cosine of x. This function is atomic.
// See [`cos`](https://code.kx.com/q/ref/cos/).
// @param x {number} A number in radians.
// @return {float} Cosine of x. The result is null if x is null or infinity.
.math.cos:cos;

// @kind function
// @fileoverview Returns the arccosine of x. This function is atomic.
// See [`acos`](https://code.kx.com/q/ref/cos/).
// @param x {number} A number.
// @return {float} Arccosine of x, in radians. Null is returned if x is not between -1 and 1.
.math.acos:acos;

// @kind function
// @fileoverview Returns the sine of x. This function is atomic.
// See [`sin`](https://code.kx.com/q/ref/sin/).
// @param x {number} A number in radians
// @return {float} Sine of x. The result is null if x is null or infinity.
.math.sin:sin;

// @kind function
// @fileoverview Returns the arcsine of x. This function is atomic.
// See [`asin`](https://code.kx.com/q/ref/sin/).
// @param x {number} A number.
// @return {float} Arcsine of x, in radians. Null is returned if x is not between -1 and 1.
.math.asin:asin;

// @kind function
// @fileoverview Returns the tangent of x. This function is atomic.
// See [`tan`](https://code.kx.com/q/ref/tan/).
// @param x {number} A number in radians.
// @return {float} Tangent of x. The result is null if x is null or infinity.
.math.tan:tan;

// @kind function
// @fileoverview Returns the arctangent of x. This function is atomic.
// See [`atan`](https://code.kx.com/q/ref/tan/).
// @param x {number} A number.
// @return {float} Arctangent of x, in radians.
.math.atan:atan;

// @kind function
// @fileoverview Returns the arithmetic mean of x.
// See [`avg`](https://code.kx.com/q/ref/avg/#avg).
// @param x {number[]} A numeric list.
// @return {float} Arithmetic mean of x. Null is returned if x is empty, or contains both positive and negative infinity.
// Null items in x are ignored.
// @see .math.avgStrict
// @see .math.runningAvg
.math.avg:avg;

// @kind function
// @fileoverview Returns the arithmetic mean of x.
// @param x {*} Arbitrarily nested numeric list.
// @return {*} Arithmetic mean of x. Almost identical to .math.avg except that null-ignoring behavior is consistent
// regardless of how nested a list is.
// @see .math.avg
.math.avgStrict:{[x]
  $[0>type first x; avg x; .math.avgStrict each flip x]
 };

// @kind function
// @fileoverview Returns the running averages of x.
// See [`avgs`](https://code.kx.com/q/ref/avg/#avgs).
// @param x {number[]} A numeric list.
// @return {float[]} Running averages of x. It applies function .math.avg to successive prefixes of x.
// @see .math.avg
.math.runningAvg:avgs;

// @kind function
// @fileoverview Returns the least integer greater than or equal to x. This function is atomic.
// See [`ceiling`](https://code.kx.com/q/ref/ceiling/).
// @param x {number} A number.
// @return {long} least integer greater than or equal to x.
.math.ceiling:ceiling;

// @kind function
// @fileoverview Returns correlation of two lists.
// See [`cor`](https://code.kx.com/q/ref/cor/).
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Correlation of x and y. The result is between -1 and 1.
.math.correlation:cor;

// @kind function
// @fileoverview Returns covariance of two lists.
// See [`cov`](https://code.kx.com/q/ref/cov/#cov).
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Covariance of x and y.
.math.covariance:cov;

// @kind function
// @fileoverview Returns differences between consecutive items in x, with the first difference being the same as
// the first element of x.
// See [`deltas`](https://code.kx.com/q/ref/deltas/).
// @param x {number[]} A numeric list.
// @return {number[]} Differences between consecutive items in x, with the first difference being the same as
/// the first element of x.
// @see .math.diff0
.math.diff:deltas;

// @kind function
// @fileoverview Returns differences between consecutive items in x, with the first difference being 0.
// @param x {number[]} A numeric list.
// @return {number[]} Differences between consecutive items in x, with the first difference being 0.
// @see .math.diff
.math.diff0:{[x]
  first[x]-':x
 };