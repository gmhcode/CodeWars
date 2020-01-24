import UIKit

var str = "Hello, playground"



func expandedForm(_ num: Int) -> String {
  
    let numString = String(num)

    var remainingZeroes = numString.count - 1

    var returningString = ""

    for (index,i) in numString.enumerated() {


        if i != "0" && index != 0 {
            let zeroes = Array(repeating: "0", count: remainingZeroes).joined()
            returningString += " + \(i)" + zeroes


        } else if i != "0" && index == 0 {

            let zeroes = Array(repeating: "0", count: remainingZeroes).joined()
            returningString = "\(i)" + zeroes
        }
        remainingZeroes -= 1
    }
  return returningString
}
expandedForm(12304)
