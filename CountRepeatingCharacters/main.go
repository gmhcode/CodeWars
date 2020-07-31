package main

import "strings"

//Counts the amount of repeating characters in the string
func doTest(s1 string) int {
	h := make(map[rune]int)
	counter := 0

	for _, r := range strings.ToLower(s1) {
		h[r] = h[r] + 1
		println("letter ", r)
		println("number ", h[r])
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
