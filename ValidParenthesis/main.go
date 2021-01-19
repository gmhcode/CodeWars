package main

import "fmt"

// Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

// Examples
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true
// Constraints
// 0 <= input.length <= 100

func main() {
	stringList := [4]string{"()", ")(()))", "(", "(())((()())())"}

	for _, i := range stringList {
		fmt.Println(ValidParentheses(i))

	}
}
func ValidParentheses(parens string) bool {
	if len(parens) > 0 && string(parens[0]) == ")" {
		return false
	}
	leftPointing := 0

	for _, i := range parens {
		if string(i) == "(" {
			leftPointing++
		} else {
			leftPointing--
			if 0 > leftPointing {
				return false
			}
		}
	}
	if leftPointing != 0 {
		return false
	}
	return true
}

//Best Practices
// func ValidParentheses(parens string) bool {
//   b := 0
//   for _, c := range(parens) {
//     if c == '(' {
//       b++
//     } else {
//       b--
//       if b < 0 {
//         return false
//       }
//     }
//   }
//   return b == 0
// }
