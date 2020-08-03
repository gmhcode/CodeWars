package main

import "strings"

func main() {
	short := FindShort("hello Ia am Greg")
	println(short)
}

//FindShort - Finds the shortest word in a string and returns the count
func FindShort(s string) int {
	// your code
	words := strings.Fields(s)
	prevWord := words[0]

	for _, word := range words {
		if len(word) < len(prevWord) {
			prevWord = word
		}
	}
	return len(prevWord)
}
