// @kind function
// @overview Returns absolute value of x. This function is atomic.
// See [`abs`](https://code.kx.com/q/ref/abs/).
// @param x {number} A number.
// @return {number} Absolute value of x.
.math.abs:abs;

// @kind function
// @overview Returns the cosine of x. This function is atomic.
// See [`cos`](https://code.kx.com/q/ref/cos/).
// @param x {number} A number in radians.
// @return {float} Cosine of x. The result is null if x is null or infinity.
.math.cos:cos;

// @kind function
// @overview Returns the arccosine of x. This function is atomic.
// See [`acos`](https://code.kx.com/q/ref/cos/).
// @param x {number} A number.
// @return {float} Arccosine of x, in radians. Null is returned if x is not between -1 and 1.
.math.acos:acos;

// @kind function
// @overview Returns the sine of x. This function is atomic.
// See [`sin`](https://code.kx.com/q/ref/sin/).
// @param x {number} A number in radians
// @return {float} Sine of x. The result is null if x is null or infinity.
.math.sin:sin;

// @kind function
// @overview Returns the arcsine of x. This function is atomic.
// See [`asin`](https://code.kx.com/q/ref/sin/).
// @param x {number} A number.
// @return {float} Arcsine of x, in radians. Null is returned if x is not between -1 and 1.
.math.asin:asin;

// @kind function
// @overview Returns the tangent of x. This function is atomic.
// See [`tan`](https://code.kx.com/q/ref/tan/).
// @param x {number} A number in radians.
// @return {float} Tangent of x. The result is null if x is null or infinity.
.math.tan:tan;

// @kind function
// @overview Returns the arctangent of x. This function is atomic.
// See [`atan`](https://code.kx.com/q/ref/tan/).
// @param x {number} A number.
// @return {float} Arctangent of x, in radians.
.math.atan:atan;

// @kind function
// @overview Returns the arithmetic mean of x.
// See [`avg`](https://code.kx.com/q/ref/avg/#avg).
// @param x {number[]} A numeric list.
// @return {float} Arithmetic mean of x. Null is returned if x is empty, or contains both positive and negative infinity.
// Null items in x are ignored.
// @see .math.avgStrict
// @see .math.runningAvg
.math.avg:avg;

// @kind function
// @overview Returns the arithmetic mean of x.
// @param x {*[]} Arbitrarily nested numeric list.
// @return {*} Arithmetic mean of x. Almost identical to .math.avg except that null-ignoring behavior is consistent
// regardless of how nested a list is.
// @see .math.avg
.math.avgStrict:{[x]
  $[0>type first x; avg x; .math.avgStrict each flip x]
 };

// @kind function
// @overview Returns the running averages of x.
// See [`avgs`](https://code.kx.com/q/ref/avg/#avgs).
// @param x {number[]} A numeric list.
// @return {float[]} Running averages of x. It applies function .math.avg to successive prefixes of x.
// @see .math.avg
.math.runningAvg:avgs;

// @kind function
// @overview Round up. This function is atomic.
// See [`ceiling`](https://code.kx.com/q/ref/ceiling/).
// @param x {number} A number.
// @return {long} least integer greater than or equal to x.
.math.ceiling:ceiling;

// @kind function
// @overview Round down. This function is atomic.
// See [`floor`](https://code.kx.com/q/ref/floor/).
// @param x {number} A number.
// @return {long} greatest integer less than or equal to x.
.math.floor:floor;

// @kind function
// @overview Returns correlation of two lists.
// See [`cor`](https://code.kx.com/q/ref/cor/).
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Correlation of x and y. The result is between -1 and 1.
.math.correlation:cor;

// @kind function
// @overview Returns covariance of two lists.
// See [`cov`](https://code.kx.com/q/ref/cov/#cov).
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Covariance of x and y.
.math.covariance:cov;

// @kind function
// @overview Returns differences between consecutive items in x, with the first difference being the same as
// the first element of x.
// See [`deltas`](https://code.kx.com/q/ref/deltas/).
// @param x {number[]} A numeric list.
// @return {number[]} Differences between consecutive items in x, with the first difference being the same as
/// the first element of x.
// @see .math.diff0
.math.diff:deltas;

// @kind function
// @overview Returns differences between consecutive items in x, with the first difference being 0.
// @param x {number[]} A numeric list.
// @return {number[]} Differences between consecutive items in x, with the first difference being 0.
// @see .math.diff
.math.diff0:{[x]
  first[x]-':x
 };

// @kind function
// @overview Returns standard deviation.
// See [`dev`](https://code.kx.com/q/ref/dev/#dev).
// @param x {number[]} A numeric list.
// @return {float} Standard deviation of x.
// @see
.math.stdev:dev;

// @kind function
// @overview Returns unbiased estimation of standard deviation.
// See [`sdev`](https://code.kx.com/q/ref/dev/#sdev).
// @param x {number[]} A numeric list.
// @return {float} unbiased estimation of standard deviation of x.
// @see .math.stdev
.math.unbiasedStdev:sdev;

// @kind function
// @overview Returns x-item moving standard deviation of y.
// See [`mdev`](https://code.kx.com/q/ref/dev/#mdev).
// @param x {short | int | long} Number of items in the calculation scope.
// @param y {number[]} A numeric list.
// @return {number[]} x-item moving standard deviation of y. The first x-1 elements of the results use only the first
/// x-1 elements of y, respectively.
.math.movingStdev:mdev;

// @kind function
// @overview Integer division. This function is atomic.
// See [`div`](https://code.kx.com/q/ref/div/).
// @param x {number} Dividend.
// @param y {number} Divisor.
// @return {number[]} The greatest whole number that does not exceed x%y.
.math.div:div;

// @kind function
// @overview Exponential moving average.
// See [`ema`](https://code.kx.com/q/ref/ema/).
// @param x {number | number[]} A number or numeric list of the same length as y.
// @param y {number[]} A numeric list.
// @return {float[]} Exponential moving average of y, with x as the smoothing parameter.
.math.ema:ema;

// @kind function
// @overview Raise e to a power. This function is atomic.
// See [`exp`](https://code.kx.com/q/ref/exp/#exp).
// @param x {number} Exponent.
// @return {float} The base of natural logarithms to the power of x, or null if x is null.
.math.exp:exp;

// @kind function
// @overview Raise x to a power. This function is atomic.
// See [`xexp`](https://code.kx.com/q/ref/exp/#xexp).
// @param base {number} Base.
// @param exponent {number} Exponent.
// @return {float} The base of natural logarithms to the power of x, or null if x is null or
// the operation isn't valid, e.g. `-1 xexp .5`.
.math.xexp:{[base;exponent] base xexp exponent};

// @kind function
// @overview Matrix inverse.
// See [`inv`](https://code.kx.com/q/ref/inv).
// @param x {float[][]} A matrix.
// @return {float[][]} Inverse of non-singular float matrix x
.math.inv:inv;

// @kind function
// @overview Least squares, approximately matrix division.
// See [`lsq`](https://code.kx.com/q/ref/lsq).
// @param a {float[][]} A matrix with the same number of columns as y.
// @param b {float[][]} A matrix whose number of rows do not exceed the number of columns, and
// whose rows are linearly independent.
// @return {float[][]} Least-squares solution to a linear matrix equation `a=x mul b` where `mul` is matrix multiplication.
.math.lsq:{[a;b] a lsq b};

// @kind function
// @overview Matrix multiplication, or dot product.
// See [`mmu`](https://code.kx.com/q/ref/mmu).
// @param x {float[] | float[][]} A float vector or matrix.
// @param y {float[] | float[][]} Another float vector or matrix, where the number of elements in y must match
// the number of elements in x if x is a vector, or the number of columns of x if x is a matrix.
// @return {float | float[]} Matrix product or dot product of x and y.
.math.matmul:mmu;

