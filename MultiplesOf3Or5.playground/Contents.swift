import UIKit

var str = "Hello, playground"

func solution(_ num: Int) -> Int {
    
    var pocket : [Int] = []
    
    for number in 1..<num {
        
        if number % 3 == 0 && number % 5 == 0 {
            pocket.append(number)
        } else if number % 3 == 0 {
            pocket.append(number)
        }else if number % 5 == 0 {
            pocket.append(number)
        }
    }
  return pocket.reduce(0,+)
}
solution(20)
