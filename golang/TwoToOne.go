package main

import (
	"sort"
	"strings"
)

func twoToOne(s1 string, s2 string) string {

	set := make(map[string]bool)
	returningStringArray := make([]string, 0)
	combinedStrings := s1 + s2

	for _, currentString := range combinedStrings {

		set[string(currentString)] = true
	}

	for key, _ := range set {

		returningStringArray = append(returningStringArray, key)

	}
	sort.Strings(returningStringArray)
	returningString := strings.Join(returningStringArray, "")

	return returningString
}

//Best Practice
// import (
//   "sort"
//   "strings"
// )

// func TwoToOne(s1 string, s2 string) string {
//   chars := strings.Split(s1 + s2, "")
//   sort.Strings(chars)
//   result := ""
//   for _, s := range chars {
//     chr := string(s)
//     if !strings.Contains(result, chr) {
//       result = result + chr
//     }
//   }
//   return result
// }

// Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,

// each taken only once - coming from s1 or s2.
// Examples:
// a = "xyaabbbccccdefww"
// b = "xxxxyyyyabklmopq"
// longest(a, b) -> "abcdefklmopqwxy"

// a = "abcdefghijklmnopqrstuvwxyz"
// longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
