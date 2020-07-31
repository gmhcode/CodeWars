package main

import "strings"

//Counts the amount of repeating characters in the string
func doTest(s1 string) int {
	h := make(map[string]int)
	counter := 0

	for _, r := range strings.ToLower(s1) {
		h[string(r)] = h[string(r)] + 1
		println("letter ", string(r))
		println("number ", h[string(r)])
	}
	for _, r := range h {
		if r >= 2 {
			counter++
			println(r)
		}
	}
	println("counter", counter)
	return counter
}

func main() {
	doTest("indivisibility")
}
