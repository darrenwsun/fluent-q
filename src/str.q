// @kind function
// @overview To lowercase. This function is atomic.
//
// - See [`lower`](https://code.kx.com/q/ref/lower/).
// @param x {char | symbol} A character, symbol, or a vector of either.
// @return {char | symbol} Lowercase representation of the input.
.str.lower:{ lower x };

// @kind function
// @overview To uppercase. This function is atomic.
//
// - See [`upper`](https://code.kx.com/q/ref/lower/).
// @param x {char | symbol} A character, symbol, or a vector of either.
// @return {char | symbol} Uppercase representation of the input.
.str.upper:{ upper x };

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

// @kind function
// @overview Search.
//
// - See [`ss`](https://code.kx.com/q/ref/ss/#ss).
// @param str {string} A string.
// @param pattern {string} A string for pattern.
// @return {long[]} Indices at which the substrings match the pattern.
.str.search:{[str;pattern] str ss pattern };

// @kind function
// @overview Replace.
//
// - See [`ssr`](https://code.kx.com/q/ref/ss/#ssr).
// @param str {string} A string.
// @param pattern {string} A string for pattern.
// @param replacement {string | function} A string, or a function that produce a new string when called with each
// matched substring.
// @return {string} A new string with each matched substring replaced.
.str.replace:{[str;pattern;replacement] ssr[str; pattern; replacement] };

// @kind function
// @overview MD5 hash.
//
// - See [`md5`](https://code.kx.com/q/ref/md5/).
// @param str {string} A string.
// @return {string} MD5 hash.
.str.md5:{[str] raze string md5 str };
