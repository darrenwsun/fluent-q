// @kind function
// @overview String join.
//
// - See [`sv`](https://code.kx.com/q/ref/sv/#strings).
// @param strings {string[]} A list of strings.
// @param delimiter {char | string} Delimiter.
// @return {string} A string formed by the strings joined by the delimiter.
.str.join:{[strings;delimiter] delimiter sv strings };

// @kind function
// @overview String join by line break.
//
// - See [`sv`](https://code.kx.com/q/ref/sv/#strings).
// @param strings {string[]} A list of strings.
// @return {string} A string formed by the strings joined by OS-dependent line break.
.str.joinByLineBreak:{[strings] ` sv strings };

// @kind function
// @overview String split.
//
// - See [`vs`](https://code.kx.com/q/ref/vs/#string-by-char).
// @param str {string} A string.
// @param delimiter {char | string} Delimiter.
// @return {string[]} A list of strings split by the delimiter.
.str.split:{[str;delimiter] delimiter vs str };

// @kind function
// @overview String split by line break.
//
// - See [`vs`](https://code.kx.com/q/ref/vs/#string-or-bytestream-by-linebreak).
// @param str {string} A string.
// @return {string[]} A list of strings split by line break. It works for both Unix- and Windows-style line breaks.
.str.splitByLineBreak:{[str] ` vs str };
