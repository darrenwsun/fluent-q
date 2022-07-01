// @kind function
// @overview Returns absolute value of x. This function is atomic.
// See [`abs`](https://code.kx.com/q/ref/abs/).
// @param x {number} A number.
// @return {number} Absolute value of x.
.math.abs:abs;

// @kind function
// @overview Negate. This function is atomic.
// See [`neg`](https://code.kx.com/q/ref/neg/).
// @param x {bool | number} A number.
// @return {number} Negation of x.
.math.neg:neg;

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
// @overview Arithmetic mean.
// See [`avg`](https://code.kx.com/q/ref/avg/#avg).
// @param x {number[]} A numeric list.
// @return {float} Arithmetic mean of x. Null is returned if x is empty, or contains both positive and negative infinity.
// Null items in x are ignored.
// @see .math.avgStrict
// @see .math.runningAvg
// @see .math.movingAvg
// @see .math.weightedAvg
.math.avg:avg;

// @kind function
// @overview Arithmetic mean, strictly ignoring nulls.
// @param x {*[]} Arbitrarily nested numeric list.
// @return {*} Arithmetic mean of x. Almost identical to `.math.avg` except that null-ignoring behavior is consistent
// regardless of how nested a list is.
// @see .math.avg
.math.avgStrict:{[x]
  $[0>type first x; avg x; .math.avgStrict each flip x]
 };

// @kind function
// @overview Running averages.
// See [`avgs`](https://code.kx.com/q/ref/avg/#avgs).
// @param x {number[]} A numeric list.
// @return {float[]} Running averages of x. It applies function `.math.avg` to successive prefixes of x.
// @see .math.avg
// @see .math.movingAvg
// @see .math.weightedAvg
.math.runningAvg:avgs;

// @kind function
// @overview Moving averages.
// See [`mavg`](https://code.kx.com/q/ref/avg/#mavg).
// @param x {short | int | long} A positive finite integer.
// @param y {number[]} A numeric list.
// @return {float} x-item moving average of y. The first x-1 elements of the results use only the first
// x-1 elements of y, respectively.
// @see .math.avg
// @see .math.runningAvg
// @see .math.weightedAvg
.math.movingAvg:mavg;

// @kind function
// @overview Weighted average.
// See [`wavg`](https://code.kx.com/q/ref/avg/#wavg).
// @param x {number[]} A numeric list representing weights.
// @param y {number[]} A numeric list representing values.
// @return {float} Average of y weighted by x.
// @see .math.avg
// @see .math.runningAvg
// @see .math.movingAvg
.math.weightedAvg:wavg;

// @kind function
// @overview Total.
// See [`sum`](https://code.kx.com/q/ref/sum/#sum).
// @param x {number[]} A numeric list.
// @return {number} Total of x. Null items in x are treated as zeros.
// @see .math.sumStrict
// @see .math.runningSum
// @see .math.movingSum
// @see .math.weightedSum
.math.sum:sum;

// @kind function
// @overview Total, consistently ignoring nulls.
// @param x {*[]} Arbitrarily nested numeric list.
// @return {*} Total of x. Almost identical to `.math.sum` except that null-ignoring behavior is consistent
// regardless of how nested a list is.
// @see .math.sum
.math.sumStrict:{[x]
  $[0>type first x; sum x; .math.sumStrict each flip x]
 };

// @kind function
// @overview Running sums.
// See [`sums`](https://code.kx.com/q/ref/sum/#sums).
// @param x {number[]} A numeric list.
// @return {number} Running sums of x. It applies function `.math.sum` to successive prefixes of x.
// @see .math.sum
// @see .math.movingSum
// @see .math.weightedSum
.math.runningSum:sums;

// @kind function
// @overview Moving sums.
// See [`msum`](https://code.kx.com/q/ref/sum/#msum).
// @param x {short | int | long} A positive finite integer.
// @param y {number[]} A numeric list.
// @return {number} x-item moving sums of y. The first x-1 elements of the results use only the first
/// x-1 elements of y, respectively.
// @see .math.sum
// @see .math.runningSum
// @see .math.weightedSum
.math.movingSum:msum;

// @kind function
// @overview Weighted sum.
// See [`wsum`](https://code.kx.com/q/ref/sum/#wsum).
// @param x {number[]} A numeric list representing weights.
// @param y {number[]} A numeric list representing values.
// @return {float} Sum of y weighted by x.
// @see .math.sum
// @see .math.runningSum
// @see .math.movingSum
.math.weightedSum:wsum;

// @kind function
// @overview Median.
// See [`med`](https://code.kx.com/q/ref/med/).
// @param x {number[]} A numeric list.
// @return {float} Median of x.
.math.median:med;

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
// @overview Product.
// See [`prd`](https://code.kx.com/q/ref/prd/#prd).
// @param x {number[]} A numeric list.
// @return {number} Product of x. Nulls are treated as 1.
// @see .math.prdStrict
// @see .math.runningPrd
.math.prd:prd;

// @kind function
// @overview Product, strictly ignoring nulls.
// @param x {*[]} A numeric list.
// @return {*} Product of x. Almost identical to `.math.prd` except that null-ignoring behavior is
/// consistent regardless of how nested a list is.
// @see .math.prd
.math.prdStrict:{[x]
  $[0>type first x; prd x; .math.prdStrict each flip x]
 };

// @kind function
// @overview Products.
// See [`prds`](https://code.kx.com/q/ref/prd/#prds).
// @param x {number[]} A numeric list.
// @return {number} Running products of x. It applies function `.math.prd` to successive prefixes of x.
// @see .math.prd
.math.runningPrd:prds;

// @kind function
// @overview Integer division. This function is atomic.
// See [`div`](https://code.kx.com/q/ref/div/).
// @param x {number} Dividend.
// @param y {number} Divisor.
// @return {number[]} The greatest whole number that does not exceed `x%y`.
.math.div:div;

// @kind function
// @overview Modulus. This function is atomic.
// See [`mod`](https://code.kx.com/q/ref/mod/).
// @param x {number} Dividend.
// @param y {number} Divisor.
// @return {number} The remainder of `x%y`.
.math.mod:mod;

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
// @see .math.xexp
// @see .math.log
.math.exp:exp;

// @kind function
// @overview Raise x to a power. This function is atomic.
// See [`xexp`](https://code.kx.com/q/ref/exp/#xexp).
// @param base {number} Base.
// @param exponent {number} Exponent.
// @return {float} The base of natural logarithms to the power of x, or null if x is null or
// the operation isn't valid, e.g. `-1 xexp .5`.
// @see .math.exp
// @see .math.xlog
.math.xexp:{[base;exponent] base xexp exponent};

// @kind function
// @overview Natural logarithm. This function is atomic.
// See [`log`](https://code.kx.com/q/ref/log/#log).
// @param x {number} A number.
// @return {float} the natural logarithm of x, or null if x is null or less than zero, or negative infinity if x is zero.
// @see .math.xlog
// @see .math.exp
.math.log:log;

// @kind function
// @overview Logarithm. This function is atomic.
// See [`xlog`](https://code.kx.com/q/ref/log/#xlog).
// @param x {number} Base.
// @param y {number} Exponent.
// @return {float} The base-x logarithm of y, or null if y is negative, or negative infinity if y is zero.
// @see .math.log
// @see .math.xexp
.math.xlog:xlog;

// @kind function
// @overview Matrix inverse.
// See [`inv`](https://code.kx.com/q/ref/inv).
// @param x {float[][]} A matrix.
// @return {float[][]} Inverse of non-singular float matrix x
.math.inv:inv;

// @kind function
// @overview Least squares, approximately matrix division.
// See [`lsq`](https://code.kx.com/q/ref/lsq).
// @param a {float[][]} A matrix with the same number of columns as b.
// @param b {float[][]} A matrix whose number of rows do not exceed the number of columns, and
// whose rows are linearly independent.
// @return {float[][]} Least-squares solution to a linear matrix equation `a=x mul b` where `mul` is matrix multiplication.
// @see .math.matmul
.math.lsq:{[a;b] a lsq b};

// @kind function
// @overview Matrix multiplication, or dot product.
// See [`mmu`](https://code.kx.com/q/ref/mmu).
// @param x {float[] | float[][]} A float vector or matrix.
// @param y {float[] | float[][]} Another float vector or matrix, where the number of elements in y must match
// the number of elements in x if x is a vector, or the number of columns of x if x is a matrix.
// @return {float | float[]} Matrix product or dot product of x and y.
// @see .math.lsq
.math.matmul:mmu;

// @kind function
// @overview Minimum.
// See [`min`](https://code.kx.com/q/ref/min/#min).
// @param x {number[]} A numeric list.
// @return {number} Minimum of items in x. Nulls are ignored, except that if the items of x are all nulls,
// the result is infinity.
// @see .math.runningMin
// @see .math.movingMin
// @see .math.max
.math.min:min;

// @kind function
// @overview Minimum, strictly ignoring null.
// @param x {number[]} A numeric list.
// @return {number} Minimum of items in x. Almost identical to `.math.min` except that null-ignoring behavior is
// consistent regardless of how nested a list is.
// @see .math.min
.math.minStrict:{[x]
  $[0>type first x; min x; .math.minStrict each flip x]
 };

// @kind function
// @overview Minimums.
// See [`mins`](https://code.kx.com/q/ref/min/#mins).
// @param x {number[]} A numeric list.
// @return {number} Running minimum of x. It applies function `.math.min` to successive prefixes of x.
// @see .math.min
// @see .math.movingMin
// @see .math.runningMax
.math.runningMin:mins;

// @kind function
// @overview Moving minimums.
// See [`mmin`](https://code.kx.com/q/ref/min/#mmin).
// @param x {number[]} A positive finite integer.
// @param y {number[]} A numeric list.
// @return {number} x-item moving minimums of y. The first x-1 elements of the results use only the first
/// x-1 elements of y, respectively.
// @see .math.min
// @see .math.runningMin
// @see .math.movingMax
.math.movingMin:mmin;

// @kind function
// @overview Maximum.
// See [`max`](https://code.kx.com/q/ref/max/#max).
// @param x {number[]} A numeric list.
// @return {number} Maximum of items in x. Nulls are ignored, except that if the items of x are all nulls,
// the result is negative infinity.
// @see .math.runningMax
// @see .math.movingMax
// @see .math.min
.math.max:max;

// @kind function
// @overview Maximums.
// See [`maxs`](https://code.kx.com/q/ref/max/#maxs).
// @param x {number[]} A numeric list.
// @return {number} Running maximum of x. It applies function `.math.max` to successive prefixes of x.
// @see .math.max
// @see .math.movingMax
// @see .math.runningMin
.math.runningMax:maxs;

// @kind function
// @overview Moving maximums.
// See [`mmax`](https://code.kx.com/q/ref/max/#mmax).
// @param x {number} A positive finite integer.
// @param y {number[]} A numeric list.
// @return {number} x-item moving maximums of y. The first x-1 elements of the results use only the first
/// x-1 elements of y, respectively.
// @see .math.max
// @see .math.runningMax
// @see .math.movingMin
.math.movingMax:mmax;

