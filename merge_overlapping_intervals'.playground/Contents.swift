import UIKit

//(1, 5), (3, 7), (4, 6), (6, 8)
//You are given an array (list) of interval pairs as input where each interval has a start and end timestamp. The input array is sorted by starting timestamps. You are required to merge overlapping intervals and return a new output array.
//
//Consider the input array below. Intervals (1, 5), (3, 7), (4, 6), (6, 8) are overlapping so they should be merged to one big interval (1, 8). Similarly, intervals (10, 12) and (12, 15) are also overlapping and should be merged to (10, 15).
func merge1(intervals: [[Int]]) -> [[Int]] {
    
    var array =        intervals.sorted(by: {$0[0] < $1[0]})
    var returningArray: [[Int]] = []
    var current: [Int] = array[0]
    array = Array( array.dropFirst())
    
    for i in array {
        let point = i[0]
        if point <= current[1] {
            if i[1] > current[1] {
            current[1] = i[1]
            }
        } else {
            returningArray += [current]
            current = i
            continue
        }
        
    }
    
    returningArray += [current]
    return returningArray
}

func mergeIntervals(intervals: [[Int]]) -> [[Int]] {

    let placeholderIntervals = intervals.sorted(by: {$0[0] < $1[0]})
    var currentMin: [Int] = placeholderIntervals[0]
    var returningArray: [[Int]] = []
    var bucket: [Int] = currentMin

   var index = 0
    while true {
        
        if index >= placeholderIntervals.count {
            
            returningArray.append([currentMin[0], bucket.max()!])
            
            break
        }
        
        if placeholderIntervals[index][0] <= currentMin[1] {
            bucket.append(contentsOf: placeholderIntervals[index])
        }else {

            currentMin = [currentMin[0], bucket.max()!]

            if placeholderIntervals[index][0] <= currentMin[1] {
                continue
            }
            
            returningArray.append(currentMin)
            currentMin = placeholderIntervals[index]
            bucket = currentMin
        }
       
        index += 1
    }
    
    return returningArray
}

// Do any additional setup after loading the view.
//    let array =   [[1,4],[0,0]] // == [[0, 0], [1, 4]]
    let array =   [[1,4],[0,2],[3,5]] // == 0 , 5
//    let array =  [[1,3],[2,6],[8,10],[15,18]] //
//    let array =  [[1,4],[0,2],[3,5]] // == [[0, 4], [3, 5]]
//        let array = [[1,3]] // == [[1,3]]


//        both of these work
//        print(mergeIntervals(intervals:array))
print(merge1(intervals: array))
