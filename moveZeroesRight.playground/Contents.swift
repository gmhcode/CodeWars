import UIKit


func moveZeroesLeft(num: inout [Int]) {
    
    
    let indices = num.indices.filter({num[$0] == 0})
    for i in indices.reversed() {
        num.remove(at: i)
    }
    num += Array(repeating: 0, count: indices.count)

    
    }
var input = [1,2,0,0,0,3,4,5]
moveZeroesLeft(num: &input)
