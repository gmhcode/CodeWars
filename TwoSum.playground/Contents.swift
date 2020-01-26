import UIKit

var str = "Hello, playground"

let number = [1,3,6,7,7,12,14]
func twoSumPointers(array:[Int], sum: Int) -> Bool {
        
    var lowIndex =  0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            return true
        }else if sumOfItems < sum {
            lowIndex += 1
        }else if sumOfItems > sum {
            highIndex -= 1
        }
    }
    return false
}
twoSumPointers(array: number, sum: 13)
