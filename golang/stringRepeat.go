package main

import "strings"

func stringRepeat(repetitions int, value string) string {
	return strings.Repeat(value, repetitions)

}

//BEST ^^ Mine

// Write a function called repeatString which repeats the given string src exactly count times.

// repeatStr(6, "I") // "IIIIII"
// repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
