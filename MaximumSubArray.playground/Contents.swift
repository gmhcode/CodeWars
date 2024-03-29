import UIKit
//Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
//
//A subarray is a contiguous part of an array.
//
//
//
//Example 1:
//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.
//Example 2:
//
//Input: nums = [1]
//Output: 1
//Example 3:
//
//Input: nums = [5,4,-1,7,8]
//Output: 23
var greeting = "Hello, playground"
func maxSubArray( nums: [Int]) -> Int {
    // Go through the array and add the curren number with the previous number
      if nums.count == 1 {

          return nums[0]
      }
          
      var currentMax = nums.first!
      var currentResult = 0

      
      for num in nums {
         
          if currentResult < 0 {
              
          currentResult = 0
          }
          currentResult += num
          currentMax = max(currentResult, currentMax)
             
      }
      
      
      return currentMax
}
maxSubArray(nums: [-2,1,-3,4,-1,2,1,-5,4])
