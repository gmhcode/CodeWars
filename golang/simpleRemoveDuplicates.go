package main

import "fmt"

//SimpleRemoveDuplicates - Removes Duplicates from the array
func SimpleRemoveDuplicates(arr []int) []int {
	//..
	pocket := make([]int, 0)
	pocket = append(pocket, arr...)

	for index, num := range pocket {
		if contains(pocket, num) == true {
			fmt.Println("pocket: ", pocket)
			fmt.Println("pocket[index]: ", pocket[index:])
			pocket = pocket[index:]
		}
	}

	// for _, item := range arr {
	// 	if contains(pocket, item) == true {
	// 		continue
	// 	} else {
	// 		pocket = append(pocket, item)
	// 	}
	// }
	return pocket
}

func contains(arr []int, num int) bool {
	for _, a := range arr {
		if a == num {
			return true
		}
	}
	return false
}

//Solve - Best Practices
func Solve(arr []int) []int {
	//create output slice
	output := make([]int, 0)

	//create a Go "set" with a map to track unique values
	uniques := make(map[int]struct{})

	//iterate & add to output/uniques in reverse order to eliminate left-most duplicates
	for i := len(arr) - 1; i >= 0; i-- {
		if _, isPresent := uniques[arr[i]]; !isPresent {
			//add unique value to output slice in reverse order to make final order correct again
			output = append([]int{arr[i]}, output...)

			//add to uniques for tracking
			uniques[arr[i]] = struct{}{}
		}
	}
	//return output
	return output
}
