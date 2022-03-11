import UIKit

var greeting = "Hello, playground"

var rightList = [9,2,4,6,8,1,3,5,7]
var leftList: [Int] = []


func sortThings(array: [Int]) -> [Int] {
    var pocket: [Int] = []
         
    pocket = array.map({[$0]}).reduce([], { sortedList, nextEntry in
        return mergeSorted(leftArray: sortedList, rightArray: nextEntry)
    })
    
    return pocket
}

func betterSort(array: [Int]) -> [Int] {
    
    if array.count <= 1 {
        return array
    }
    
    let leftPocket =  betterSort(array:Array(array.prefix(upTo: array.count/2)))
    let rightPocket =  betterSort(array:Array(array.suffix(from: array.count/2)))
    
    
    return mergeSorted(leftArray: leftPocket, rightArray: rightPocket)
    
}
func mergeSorted(leftArray: [Int], rightArray: [Int]) -> [Int]{

    var pocket: [Int] = []

    
    var lIndex = 0
    var rIndex = 0
    while true {
        
        if lIndex > leftArray.count - 1 {
            pocket.append(contentsOf: rightArray.suffix(from: rIndex))
            break
        } else if rIndex > rightArray.count - 1 {
            pocket.append(contentsOf: leftArray.suffix(from: lIndex))
            break
        }
        
        if leftArray[lIndex] < rightArray[rIndex] {
            pocket.append(leftArray[lIndex])
            lIndex += 1
        }
        else {
            pocket.append(rightArray[rIndex])
            rIndex += 1
        }
    }
    
    return pocket
}
print(betterSort(array: rightList))
