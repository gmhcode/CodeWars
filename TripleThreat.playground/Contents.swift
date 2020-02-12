import UIKit

var str = "Hello, playground"
//return 1 if the array contains a sequence of numbers that appear 1 after another. Like 1,2,3
//return 0 if this doesnt exist
let array = [3,1,2,3]
func tripleThreat(a: [Int]) -> Int {
    // Write your code here

    var pocket : [Int] = []

    for i in a {
        if !pocket.isEmpty && i == pocket.last! + 1 {

            pocket.append(i)
            if pocket.count == 3 {
                return 1
            }
            continue
        }

        pocket = []
        pocket.append(i)

    }


    return 0
}

tripleThreat(a: array)
