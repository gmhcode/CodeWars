import UIKit




func generalizedGCD(num:Int, arr:[Int]) -> Int
{
    // WRITE YOUR CODE HERE
    var GCD = 1
    
    for i in arr {
        var isDivisibleByAll = true
        
        for b in arr {
            if b % i != 0 {
                isDivisibleByAll = true
                
            }
        }
        if isDivisibleByAll == true {
            GCD = i
        }
    }
    
    return GCD
}
generalizedGCD(num: 5, arr: [2,4,6,8,10])
