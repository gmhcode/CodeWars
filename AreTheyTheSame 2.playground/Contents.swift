import UIKit

var str = "Hello, playground"

//var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
//var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
var a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    // your code
    
    
    let sortedA = a.sorted(by:>)
    let sortedB = b.sorted(by:>)
    print(sortedA)
    print(sortedB)
    for (index,i) in sortedA.enumerated() {
        
        if sortedB[index] != i * i {
            return false
        }
        
    }
    return true
}
comp(a1, a2)
