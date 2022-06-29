// @kind function
// @fileoverview Returns absolute value of x.
// @param x {number} A number.
// @return {number} Absolute value of x.
.math.abs:abs;

// @kind function
// @fileoverview Returns the arccosine of x.
// @param x {number} A number.
// @return {number} Arccosine of x, in radians. The result is between 0 and π. Null is returned
// if the argument is not between -1 and 1.
.math.acos:acos;

// @kind function
// @fileoverview Returns the arcsine of x.
// @param x {number} A number.
// @return {number} Arcsine of x, in radians. The result is between -π/2 and π/2. Null is returned
// if the argument is not between -1 and 1.
.math.asin:asin;

// @kind function
// @fileoverview Returns the arctangent of x.
// @param x {number} A number.
// @return {number} Arctangent of x, in radians. The result is between -π/2 and π/2.
.math.atan:atan;

// @kind function
// @fileoverview Returns the arithmetic mean of x.
// @param x {number[]} A numeric list.
// @return {float} Arithmetic mean of x. Null is returned if x is empty, or contains both positive and negative infinity.
// Null items in x are ignored.
.math.avg:avg;

// @kind function
// @fileoverview Returns the cosine of x.
// @param x {number} A number in radians.
// @return {number} Cosine of x. The result is between -1 and 1, or null if the argument is null or infinity.
.math.cos:cos;

// @kind function
// @fileoverview Returns the running averages of x.
// @param x {number[]} A numeric list.
// @return {float} Running averages of x. It applies function .math.avg to successive prefixes of x.
.math.runningAvg:avgs;

// @kind function
// @fileoverview Returns the sine of x.
// @param x {number} A number in radians
// @return {number} Sine of x. The result is between -1 and 1, or null if the argument is null or infinity.
.math.sin:sin;

// @kind function
// @fileoverview Returns the tangent of x.
// @param x {number} A number in radians.
// @return {number} Tangent of x. The result is null if the argument is null or infinity.
.math.tan:tan;