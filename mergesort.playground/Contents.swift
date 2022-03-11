import UIKit

var greeting = "Hello, playground"

var rightList = [9,2,4,6,8,1,3,5,7]
var leftList: [Int] = []

func isBadVersion(_ version: Int) -> Bool {
    
    if version <= 3 {
        return false
    } else {
        return true
    }
        
}
    



var lastFalse = 0



func findVersion(n: Int) -> Int{
    
    var currentArray: [Int] = Array(1...n)
    
    if isBadVersion(1) == true {
        return 1
    }
    
    var lastBadVersion = 0
    while true {
        
        let half = (currentArray.count - 1) / 2
        
        if isBadVersion(half) == true {
            
            if lastBadVersion == half - 1 {
                
                return half
            }
            currentArray = Array(currentArray.suffix(from: half))
        }else {
            lastBadVersion = half
            currentArray = Array(currentArray.prefix(upTo: half))
        }
        
        
    }
    
}
print(findVersion(n: 5))

func binarySearch(array: [Int]) -> Int {
    
    let midIndex = array.count / 2
    
    if array.count > 1 {
        
        if isBadVersion(midIndex) == false && isBadVersion(midIndex + 1) == true {
            return midIndex + 1
        }
        
        
    }
    
    let firstHalf = Array(array.prefix(upTo: midIndex))
    let secondHalf = Array(array.suffix(from: midIndex))
    
    if isBadVersion(midIndex) == true {
        return binarySearch(array: firstHalf)
    }else {
        return binarySearch(array: secondHalf)
    }
}

func sortThings(array: [Int]) -> [Int] {
    var pocket: [Int] = []
         
    pocket = array
        .map({[$0]})
        .reduce([], {sortedList, nextEntry in
            
        return mergeSorted(leftArray: sortedList, rightArray: nextEntry)
    })
    
    return pocket
}
var counter = 0
func betterSort(array: [Int]) -> [Int] {
    
    if array.count <= 1 {
        return array
    }
    //from the beginning up to array.count/2
    let leftPocket =  betterSort(array:Array(array.prefix(upTo: array.count/2)))
    //from the array.count/2 index to the end
    let rightPocket =  betterSort(array:Array(array.suffix(from: array.count/2)))
    counter += 1
    print(counter)
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
//print(betterSort(array: rightList))
