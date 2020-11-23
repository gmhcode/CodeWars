package main

import "strings"

func brandNameGenerator(word string) string {
	capitalizedWord := strings.Title(strings.ToLower(word))

	if word[0] == word[len(word)-1] || word[0] == word[len(word)-1]+32 || word[0] == word[len(word)-1]+32 {
		return capitalizedWord + word[1:]
	}

	return "The " + capitalizedWord
}

// BEST PRACTICE
// func bandNameGenerator(word string) string {
//   first := word[:1]
//   last := word[len(word)-1:]

//   if first != last {
//     return "The " + strings.Title(word)
//   }

//   return strings.Title(word) + word[1:]

// }

// My friend wants a new band name for her band. She like bands that use the formula: "The" + a noun with the first letter capitalized, for example:

// "dolphin" -> "The Dolphin"

// However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice and connect them together with the first and last letter, combined into one word (WITHOUT "The" in front), like this:

// "alaska" -> "Alaskalaska"

// Complete the function that takes a noun as a string, and returns her preferred band name written as a string.
