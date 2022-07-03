// @kind function
// @overview String join.
// See [`sv`](https://code.kx.com/q/ref/sv/#strings).
// @param strings {string[]} A list of strings.
// @param delimiter {char | string} Delimiter.
// @return {string} A string formed by the strings joined by the delimiter.
.str.join:{[strings;delimiter] delimiter sv strings };

// @kind function
// @overview String join by new line.
// See [`sv`](https://code.kx.com/q/ref/sv/#strings).
// @param strings {string[]} A list of strings.
// @return {string} A string formed by the strings joined by system-dependent new line.
.str.joinByNewLine:{[strings] ` sv strings };
