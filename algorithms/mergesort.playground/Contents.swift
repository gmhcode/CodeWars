//import UIKit
//
//var greeting = "Hello, playground"
//
//var rightList = [9,2,4,6,8,1,3,5,7]
//var leftList: [Int] = []
//
//
//func sortThings(array: [Int]) -> [Int] {
//    var pocket: [Int] = []
//
//    pocket = array.map({[$0]}).reduce([], { sortedList, nextEntry in
//        return mergeSorted(leftArray: sortedList, rightArray: nextEntry)
//    })
//
//    return pocket
//}
//
//func betterSort(array: [Int]) -> [Int] {
//
//    if array.count <= 1 {
//        return array
//    }
//
//    let leftPocket =  betterSort(array:Array(array.prefix(upTo: array.count/2)))
//    let rightPocket =  betterSort(array:Array(array.suffix(from: array.count/2)))
//
//
//    return mergeSorted(leftArray: leftPocket, rightArray: rightPocket)
//
//}
//func mergeSorted(leftArray: [Int], rightArray: [Int]) -> [Int]{
//
//    var pocket: [Int] = []
//
//
//    var lIndex = 0
//    var rIndex = 0
//    while true {
//
//        if lIndex > leftArray.count - 1 {
//            pocket.append(contentsOf: rightArray.suffix(from: rIndex))
//            break
//        } else if rIndex > rightArray.count - 1 {
//            pocket.append(contentsOf: leftArray.suffix(from: lIndex))
//            break
//        }
//
//        if leftArray[lIndex] < rightArray[rIndex] {
//            pocket.append(leftArray[lIndex])
//            lIndex += 1
//        }
//        else {
//            pocket.append(rightArray[rIndex])
//            rIndex += 1
//        }
//    }
//
//    return pocket
//}
//print(betterSort(array: rightList))



class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        var checkingarrayIndex: Int = 0
        var checkingIndex: Int = 0
        var returningArray: [[Int]] = []
        
        
        for (index,arr) in mat.enumerated() {
            
            var appending: [Int] = []
            
            checkingarrayIndex = index
            
            for (indexi,i) in arr.enumerated() {

            checkingIndex = indexi
                
            if i != 0 {
                print("starting vert")
                               let verticalCount = findZero(arr: mat.map({$0[checkingIndex]}), checkingIndex:checkingarrayIndex)
            print("starting horiz")
                let horizontalCount = findZero(arr: mat[checkingarrayIndex], checkingIndex: checkingIndex)
        
            appending.append(min(verticalCount,horizontalCount))
} else {
                 appending.append(min(0,0))
            }
 
            }
           returningArray.append(appending)
        }
         
        
        return returningArray
    
}
            
}
Solution().updateMatrix([[0,0,0],[0,1,0],[1,1,1]])
        func findZero(arr:[Int], checkingIndex: Int) -> Int {
            
            var space = 0
            for (index,i) in arr.enumerated() {
                if i == 0 && index != checkingIndex {
                    print("hit")
                    print("space ", space)
                    print("checkingIndex ", checkingIndex)
                    // break
                    let distance = abs(index - checkingIndex)
                    print("distance ", distance)
                    space = min(space, distance)
                    
                }
            }
            return abs(space - checkingIndex)
        }
