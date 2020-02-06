import UIKit

var str = "Hello, playground"
var array : [Int] = []

for i in 1...100 {
    if i != 6 {
        array.append(i)
    }
    
}
//print(array)


func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
   
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex / 2
    let midValue = array[midIndex]
    
    
    if key < array[minIndex] || key > array[maxIndex] {
        return false
    }
//    print(array)
    if key > midValue {
        return binarySearch(array: Array(array[midIndex + 1...maxIndex]), key: key)
    }
    if key < midValue {
        return binarySearch(array: Array(array[minIndex...midIndex]), key: key)
    }
    if key == midValue {
        return true
    }
    return false
}

binarySearch(array: array, key: 5)


//func bsearch(array: [Int], key: Int) -> Bool{
//    
//    if array.count == 0 {return false}
//    
//    let minIndex = 0
//    let maxIndex = array.count - 1
//    let midIndex = maxIndex / 2
//    let midValue = array[midIndex]
//    
//    if key < array[minIndex] || key > array[maxIndex] {
//        return false
//    }
//    
//    if key > midValue {
//        let slice = Array(array[midIndex + 1...maxIndex])
//        return bsearch(array: slice, key: key)
//    }
//    if key < midValue {
//        let slice = Array(array[minIndex...midIndex])
//        return bsearch(array: slice, key: key)
//    }
//    if key == midValue {return true}
//    return false
//}
//print(array)
//bsearch(array: array, key: 5)
//01001010
