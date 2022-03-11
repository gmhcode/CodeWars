import UIKit

var greeting = "Hello, playground"


let theArray = [9,6,3,1,8,5,2,7,4]


func quickSort(array: [Int]) -> [Int]{
    
    //The array needs to at least have two items in the array. One in index zero, and one in index 1
    if array.count <= 1 {
        return array
    }
    let elemetn = array[0]
    let smallerElemetns = array.filter({$0 < elemetn})
    // suffix from 1 because we are already using 0 in elementn
    let greaterEqualElemetns = array.suffix(from: 1).filter({$0 >= elemetn})

    
    
    return quickSort(array: smallerElemetns) + [array[0]] + quickSort(array: greaterEqualElemetns)
}

print(quickSort(array: theArray))
