import UIKit

// When x and y equal the same number, return that number

func mysteryAlgo(a: Int, b: Int) -> Int {
    
    var x = a
    var y = b
    
    var counter = 0
    
    while x != y {
        if x > y {
            x -= y
        } else if x < y {
            y -= x
        }
        counter += 1
    }
    
    print("x ",x," ","y ",y," ",counter)
    return x
}
mysteryAlgo(a: 2437, b: 875)
