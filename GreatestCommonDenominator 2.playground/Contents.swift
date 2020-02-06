import UIKit




//expected 01001010
//in 10000100
func generalizedGCD(num:Int, arr:[Int]) -> Int
{
    // WRITE YOUR CODE HERE
    let sortedArr = arr.sorted(by: < )
    var GCD = 1
    
    for i in sortedArr {
        var isDivisibleByAll = false
        
        for b in sortedArr {
            isDivisibleByAll = b % i == 0 ? true : false
            if !isDivisibleByAll { break }
        }
        if isDivisibleByAll == true {
            GCD = i
        }
    }
    
    return GCD
}
generalizedGCD(num: 5, arr: [2,4,6,8,10])
