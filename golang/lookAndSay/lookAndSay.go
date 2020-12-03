package main

//In mathematics, the look-and-say sequence is the sequence of integers beginning as follows:
//
//1, 11, 21, 1211, 111221, 312211 ...
//To generate a member of the sequence from the previous member, read off the digits of the previous member, counting the number of digits in groups of the same digit. For example:
//
//1 is read off as "one 1" or 11.
//11 is read off as "two 1s" or 21.
//21 is read off as "one 2, then one 1" or 1211.
//1211 is read off as "one 1, then one 2, then two 1s" or 111221.
//111221 is read off as "three 1s, then two 2s, then one 1" or 312211.
//Your mission is to write a function getLines, which takes an integer "n" as parameter, and returns a comma separated list of the first "n" terms of the sequence. For 0, negative, or NaN parameters, -1 shall be returned.
//
//for example:
//
//getLines(2);   // logs "1,11"
//getLines(3);   // logs "1,11,21"
//getLines(5);   // logs "1,11,21,1211,111221"
import (
	"fmt"
	"strconv"
)

func main() {
	fmt.Println(getLines(5))
	// countSameNumber("111")

}
func getLines(num int) []string {

	if num < 0 {
		return []string{"-1"}
	}
	// fmt.Println("num ", num)
	returningArray := make([]string, 1)
	returningArray[0] = "1"
	// fmt.Println(returningArray[0])
	// fmt.Println(num)

	for i := 1; i < num; i++ {
		// fmt.Println("i-1", i-1)
		currentNum := returningArray[i-1]
		// fmt.Println("currentNum ", currentNum)
		lookAndSayNum := countSameNumber(currentNum)
		returningArray = append(returningArray, lookAndSayNum)
		// fmt.Println("lookandsayMNum ", lookAndSayNum)
	}

	return returningArray
}

func countSameNumber(st string) string {
	// fmt.Println("st ", st)
	previousNumber := string(st[0])
	countOfPreviousNumber := 0
	array := ""

	for index, letter := range st {
		// fmt.Println("index: ", index, "letter: ", string(letter))
		if previousNumber != string(letter) {
			array = array + strconv.Itoa(countOfPreviousNumber)
			array += string(previousNumber)
			// fmt.Println("prev number", string(previousNumber))
			countOfPreviousNumber = 1
			previousNumber = string(letter)
		} else {
			countOfPreviousNumber++
		}
		if index == len(st)-1 {
			array += strconv.Itoa(countOfPreviousNumber)
			array += string(previousNumber)
		}

	}
	// println(wtf is going on)
	// fmt.Println("going to print array")
	// fmt.Println("array", array)
	return array
}
