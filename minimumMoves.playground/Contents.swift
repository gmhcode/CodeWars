import UIKit

var array1 = [123,543]
var array2 = [321,279]

// Find out how many number changes it would Take to make both arrays have equal numbers.

// Example array1[0] is 123, array2[0] is 321. 1,2,3 and 3,2,1...the difference between 1 and 3 is two, difference between 2 and 2 is 0, difference between 3 and 1 is 2. so the number of moves would be 4 for that index of those two arrays


func minimumMoves(arr1: [Int], arr2: [Int]) -> Int {
    //Make it a string so we can make each character its own array, then convert them all back to ints
    let pocket1 = arr1.map({String($0).map({Int(String([$0])) ?? 0})})
    
    let pocket2 = arr2.map({String($0).map({Int(String([$0])) ?? 0})})
    
    var counter = 0
    // loop through each array, calculating the difference of each index, keep track of the differences with counter. When all are looped through, return counter.
    for (indexAr,array) in pocket1.enumerated() {
        for (index,number) in array.enumerated() {
            let difference = abs(pocket2[indexAr][index] - number)
            counter += difference
        }
    }
    return counter
}

print(minimumMoves(arr1: array1, arr2: array2))

// Example
// var array1 = [123,543]
// var array2 = [321,279]
// answer is 16
