import UIKit
//make everything divisible by 2 then record the difference in amount of snacks from the pocket and the initial array
var arr = [11,2,34,66,4,1]

func snackArrangement(snacks: [Int]) -> Int {
    // Write your code here
    var pocket : [Int] = []
    var count = 0
    for (index,i) in snacks.enumerated() {
        pocket.append(numberDiv2(number: i))
        count += pocket.last! - i
    }
    
    
return count
}

func numberDiv2(number: Int) -> Int{
    if number % 2 == 0 {
        return number
    }else {
        return numberDiv2(number: number + 1)
    }
}

snackArrangement(snacks: arr)

