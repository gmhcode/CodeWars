package main

import "strings"

func hasEnding(str, ending string) bool {
	// Your code here!
	stri := strings.TrimSpace(str)
	end := strings.TrimSpace(ending)

	if stri == end {
		return true
	}
	for index := range stri {
		println("index: ", index)
		println(stri[index:])
		if stri[index:] == end {
			return true
		}
	}
	return false
}

//BEST PRACTICE
// func solution(str, ending string) bool {
//   return strings.HasSuffix(str, ending)
// }

// /Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

// Examples:

// solution("abc", "bc") // returns true
// solution("abc", "d") // returns false
