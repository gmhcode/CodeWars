package main

func RowSumOddNumbers(n int) int {
	// your code here
	pocket := make([]int, 0)
	pocketCounter := 1
	sum := 0
	whileCounter := 0

	for true {
		print("hello")
		if whileCounter%2 != 0 {
			pocket = append(pocket, whileCounter)
			if len(pocket) == pocketCounter {
				sum = sumOf(pocket)
				if pocketCounter == n {
					break
				}
				pocket = make([]int, 0)
				pocketCounter++
			}
		}
		whileCounter++
	}
	return sum
}

func sumOf(array []int) int {
	result := 0
	for _, v := range array {
		result += v
	}
	return result
}

//Best practices
// func RowSumOddNumbers(n int) int {
//     return n * n * n
// }

// Given the triangle of consecutive odd numbers:

//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...
// Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

// rowSumOddNumbers(1); // 1
// rowSumOddNumbers(2); // 3 + 5 = 8
