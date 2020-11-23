import UIKit

//In mathematics, the look-and-say sequence is the sequence of integers beginning as follows:
//
//1, 11, 21, 1211, 111221, 312211 ...
//To generate a member of the sequence from the previous member, read off the digits of the previous member, counting the number of digits in groups of the same digit. For example:
//
//1 is read off as "one 1" or 11.
//11 is read off as "two 1s" or 21.
//21 is read off as "one 2, then one 1" or 1211.
//1211 is read off as "one 1, then one 2, then two 1s" or 111221.
//111221 is read off as "three 1s, then two 2s, then one 1" or 312211.
//Your mission is to write a function getLines, which takes an integer "n" as parameter, and returns a comma separated list of the first "n" terms of the sequence. For 0, negative, or NaN parameters, -1 shall be returned.
//
//for example:
//
//getLines(2);   // logs "1,11"
//getLines(3);   // logs "1,11,21"
//getLines(5);   // logs "1,11,21,1211,111221"


func getLines(_ num:Int?) -> String {
    guard let num = num, num > 0 else {print("❇️♊️>>>\(#file) \(#line): guard let failed<<<"); return "-1"}
    var returningArray : [String] = ["1"]
    
    for i in 1..<num {

        let currentNum = returningArray[i - 1]
        let lookAndSayNum = countSameNumber(st: currentNum)
        returningArray.append(lookAndSayNum)
    }
    return returningArray.joined(separator: ",")
}


func countSameNumber(st: String)->String{
    
    var previousNumber = "\(st.first!)"
    var countOfPreviousNumber = 0
    var array : String = ""
    
    for (index,i) in st.enumerated() {
        
        if previousNumber != "\(i)" {
            array.append("\(countOfPreviousNumber)")
            array.append(previousNumber)
            
            countOfPreviousNumber = 1
            previousNumber = "\(i)"
            
            
        }else {
            countOfPreviousNumber += 1
            
        }
        if index == st.count - 1 {
            array.append("\(countOfPreviousNumber)")
            array.append(previousNumber)
        }
    }
    return array
}
