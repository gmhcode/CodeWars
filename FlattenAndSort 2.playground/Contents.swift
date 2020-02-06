import UIKit

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    var pocket : [T] = []
    
    for i in arr {
        pocket.append(contentsOf: i)
    }
    pocket.sort()
    return pocket
}

flattenAndSort([[], [], [], [2], [], [1]])
