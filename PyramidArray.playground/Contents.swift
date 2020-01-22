import UIKit

func pyramid(_ n: Int) -> [[Int]] {
    let array = Array(repeating: 1, count: n)
    var pocket : [[Int]] = []
    
    for (index,_) in array.enumerated() {
        
        pocket.append(Array(repeating: 1, count: index + 1))
        print(pocket)
        
    }
    
    return pocket
}
pyramid(3)
