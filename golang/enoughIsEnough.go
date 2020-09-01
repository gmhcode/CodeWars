package main

func enoughIsEnough(elements []int, maxOcurrences int) []int {

	dict := map[int]int{}
	returningArray := make([]int, 0)

	for _, num := range elements {
		println("dict: ", dict[num])
		if dict[num] == 0 {
			dict[num] = 1
			returningArray = append(returningArray, num)

		} else {
			dict[num]++
			if dict[num] <= maxOcurrences {
				returningArray = append(returningArray, num)
			}
		}
	}
	return returningArray
}

//Alice and Bob were on a holiday. Both of them took many pictures of the places they've been, and now they want to show Charlie their entire collection. However, Charlie doesn't like these sessions, since the motive usually repeats. He isn't fond of seeing the Eiffel tower 40 times. He tells them that he will only sit during the session if they show the same motive at most N times. Luckily, Alice and Bob are able to encode the motive as a number. Can you help them to remove numbers such that their list contains each number only up to N times, without changing the order?
//
//Task

//Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering. For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].
