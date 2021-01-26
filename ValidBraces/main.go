package main

import "fmt"

func main() {
	falseArray := [12]string{")", "]", "}", "(}", "[(])", "[({})](]", "[(])", "(})", ")(}{][", "())({}}{()][][", "(((({{", "}}]]))}])"}
	// trueArray := [4]string{"()", "[]", "{}", "(){}[]"}
	// trueArr := [4]string{"([{}])", "({})[({})]", "(({{[[]]}}))", "{}({})[]"}

	for _, i := range falseArray {
		fmt.Println(ValidBraces(i))
	}
}

//ValidBraces - validBraces
func ValidBraces(str string) bool {
	if len(str) == 0 || string(str[0]) == ")" || string(str[0]) == "]" || string(str[0]) == "}" {
		return false
	}
	leftParenth := 0
	leftBrace := 0
	leftCurly := 0

	nextCharCantBe := ""

	for _, i := range str {
		switch string(i) {
		case "{":
			leftCurly++
			removeAllWhere(&nextCharCantBe, "}")
			nextCharCantBe += ")]"
		case "[":
			leftBrace++
			removeAllWhere(&nextCharCantBe, "]")
			nextCharCantBe += ")}"
		case "(":
			leftParenth++
			removeAllWhere(&nextCharCantBe, ")")
			nextCharCantBe += "]}"
		case "}":
			leftCurly--

			if leftCurly < 0 || contains(nextCharCantBe, string(i)) {
				return false
			}
			nextCharCantBe = ""
		case "]":
			leftBrace--
			if leftBrace < 0 || contains(nextCharCantBe, string(i)) {
				return false
			}
			nextCharCantBe = ""
		case ")":
			leftParenth--
			if leftParenth < 0 || contains(nextCharCantBe, string(i)) {
				return false
			}
			nextCharCantBe = ""
		}
	}

	if leftBrace != 0 || leftCurly != 0 || leftParenth != 0 {
		return false
	}
	return true
}
func remove(str *string, r string) {
	ind := 0
	for index, i := range *str {
		if string(i) == r {
			ind = index
		}
	}

	strRune := []rune(*str)
	*str = string(append(strRune[:ind], strRune[ind+1:]...))
}

func contains(s string, str string) bool {
	for _, v := range s {
		if string(v) == str {
			return true
		}
	}

	return false
}

func removeAllWhere(s *string, char string) {

	for _, i := range *s {
		if string(i) == char {
			remove(s, string(i))
		}
	}
}

//create function where we will go through nextCharCantBe( where $0 == "}")
