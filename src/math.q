// @kind function
// @fileoverview Returns absolute value of x. This function is atomic.
// @param x {number} A number.
// @return {number} Absolute value of x.
.math.abs:abs;

// @kind function
// @fileoverview Returns the cosine of x. This function is atomic.
// @param x {number} A number in radians.
// @return {float} Cosine of x. The result is null if x is null or infinity.
.math.cos:cos;

// @kind function
// @fileoverview Returns the arccosine of x. This function is atomic.
// @param x {number} A number.
// @return {float} Arccosine of x, in radians. Null is returned if x is not between -1 and 1.
.math.acos:acos;

// @kind function
// @fileoverview Returns the sine of x. This function is atomic.
// @param x {number} A number in radians
// @return {float} Sine of x. The result is null if x is null or infinity.
.math.sin:sin;

// @kind function
// @fileoverview Returns the arcsine of x. This function is atomic.
// @param x {number} A number.
// @return {float} Arcsine of x, in radians. Null is returned if x is not between -1 and 1.
.math.asin:asin;

// @kind function
// @fileoverview Returns the tangent of x. This function is atomic.
// @param x {number} A number in radians.
// @return {float} Tangent of x. The result is null if x is null or infinity.
.math.tan:tan;

// @kind function
// @fileoverview Returns the arctangent of x. This function is atomic.
// @param x {number} A number.
// @return {float} Arctangent of x, in radians.
.math.atan:atan;

// @kind function
// @fileoverview Returns the arithmetic mean of x.
// @param x {number[]} A numeric list.
// @return {float} Arithmetic mean of x. Null is returned if x is empty, or contains both positive and negative infinity.
// Null items in x are ignored.
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
// @param x {number[]} A numeric list.
// @return {float[]} Running averages of x. It applies function .math.avg to successive prefixes of x.
.math.runningAvg:avgs;

// @kind function
// @fileoverview Returns the least integer greater than or equal to x. This function is atomic.
// @param x {number} A number.
// @return {long} least integer greater than or equal to x.
.math.ceiling:ceiling;

// @kind function
// @fileoverview Returns correlation of two lists
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Correlation of x and y. The result is between -1 and 1.
.math.correlation:cor;

// @kind function
// @fileoverview Returns covariance of two lists
// @param x {number[]} First numeric list.
// @param y {number[]} Second numeric list.
// @return {float} Covariance of x and y.
.math.covariance:cov;