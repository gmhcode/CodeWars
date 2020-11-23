package main

//BEST

func wave(words string) (wave []string) {
	wave = []string{} // leaving the array uninitialised would be better practice
	for i, c := range words {
		if c == ' ' {
			continue
		}
		upperC := string(c - 'a' + 'A')
		wave = append(wave, words[:i]+upperC+words[i+1:])
	}
	return
}

// In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
// Rules
//  	1.  The input string will always be lower case but maybe empty.
// 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
// Example
// wave("hello") => []string{"Hello", "hEllo", "heLlo", "helLo", "hellO"}
