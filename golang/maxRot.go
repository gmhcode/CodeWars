package main

import (
	"fmt"
	"regexp"
	"strconv"
)

func maxRot(n int64) int64 {

	numAsString := strconv.Itoa(int(n))
	returningNumString := make([]string, 0)

	a := regexp.MustCompile(``)
	stringSlice := a.Split(numAsString, -1)
	stringLength := len(stringSlice)

	for i := stringLength; i > 0; i-- {
		println("i:  ", i)
		returningNumString = append(returningNumString, stringSlice[i-1])
	}

	println(a)
	fmt.Println("stringSlice: ", len(stringSlice))
	fmt.Println("returningNumString: ", returningNumString)
	fmt.Println("numAsString: ", numAsString)
	return 0
}

//Best practices

func MaxRot(n int64) (max int64) {
	max = n
	strn := strconv.FormatInt(n, 10)

	var left string
	var middle string
	var right string
	var currentNumber int64

	println("strn:  ", strn)

	for index := range strn[:len(strn)-1] {
		println("index: ", index)
		left = strn[:index]
		middle = strn[index : index+1]
		right = strn[index+1:]
		println("left:  ", left)
		println("middle:  ", middle)
		println("right:  ", right)
		strn = left + right + middle

		currentNumber, _ = strconv.ParseInt(strn, 10, 64)
		if max < currentNumber {
			max = currentNumber
		}
	}
	return
}

// Let us begin with an example:

// Take a number: 56789. Rotate left, you get 67895.

// Keep the first digit in place and rotate left the other digits: 68957.

// Keep the first two digits in place and rotate the other ones: 68579.

// Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.

// You have the following sequence of numbers:

// 56789 -> 67895 -> 68957 -> 68579 -> 68597

// and you must return the greatest: 68957.

// Task
// Write function max_rot(n) which given a positive integer n returns the maximum number you got doing rotations similar to the above example.

// So max_rot (or maxRot or ... depending on the language) is such as:

// max_rot(56789) should return 68957

// max_rot(38458215) should return 85821534
