import UIKit

var str = "Hello, playground"
// Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

// Examples
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true
// Constraints
// 0 <= input.length <= 100

func validParentheses(parens: String) -> Bool {
    guard !parens.isEmpty, parens.first != ")" else {return false}
    
    var leftPointing = 0
//        var rightPointing = 0
    for i in parens {
        if i == "(" {
            leftPointing += 1
        }else {
            leftPointing -= 1
            if 0 > leftPointing {
                return false
            }
        }
    }
    if leftPointing != 0 {
        return false
    }
    return true
}

