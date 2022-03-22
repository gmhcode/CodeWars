import UIKit

var greeting = "Hello, playground"

let arr = "Let's take LeetCode contest"

func reverseString(string: String) {
    
    var array = string.split(separator: " ").map({String($0)})
    
    for (index,word) in array.enumerated() {
        
        array[index] = word.reversed() + " "
        print(word.reversed())
        if index == array.indices.last {
        
            array[index].removeLast()
            
        }
    }
    let a = array.joined()
    print(a)
    
}
reverseString(string:  arr)

func reverseString2(s: String) -> String {
    let arr = s.split(separator: " ").map({String($0)})
    
    var returningArray: [String] = []
    
    for st in arr {
        returningArray.insert(st + " ", at: 0)
    }
    var returningString = returningArray.joined()
    returningString.removeLast()
    return returningString
    
    
}
reverseString2(s: arr)
