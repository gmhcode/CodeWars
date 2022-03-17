import UIKit
//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.
//
// 
//
//Example 1:
//
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]

func moveZeroesLeft(num: inout [Int]) {
    
    
    let indices = num.indices.filter({num[$0] == 0})
    for i in indices.reversed() {
        num.remove(at: i)
    }
    num += Array(repeating: 0, count: indices.count)

    
    }
var input = [1,2,0,0,0,3,4,5]
moveZeroesLeft(num: &input)
