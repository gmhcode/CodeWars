import UIKit


//For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

//Example:
//"56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"
//
//When two numbers have the same "weight", let us class them as if they were strings (alphabetical ordering) and not numbers: 100 is before 180 because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9), it comes before as a string.
//
//All numbers in the list are positive numbers and the list can be empty.

func orderWeight(_ s: String) -> String {
    // your code
    if s == "" {
        return ""
    }
    
    return s.components(separatedBy: " ")
        .sorted(by: <)
        .map({String($0)})
        .sorted { (first, second) -> Bool in
            
            let firstNum = first.map({Int(String($0))!}).reduce(0,+)
            let secondNum = second.map({Int(String($0))!}).reduce(0,+)
            
            return firstNum < secondNum
    }.joined(separator: " ")
}
orderWeight("56 65 74 100 99 68 86 180 90")
//should return
//"100 180 90 56 65 74 68 86 99"
