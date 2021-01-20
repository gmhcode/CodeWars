import UIKit
//Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.
//
//This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!
//
//All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.
//
//What is considered Valid?
//A string of braces is considered valid if all braces are matched with the correct brace.
//
//Examples
//"(){}[]"   =>  True
//"([{}])"   =>  True
//"(}"       =>  False
//"[(])"     =>  False
//"[({})](]" =>  False

var falseArray = [")", "]", "}", "(}", "[(])", "[({})](]", "[(])", "(})", ")(}{][","())({}}{()][][", "(((({{", "}}]]))}])"]
var trueArray = ["()","[]","{}","(){}[]"]
var trueArr = ["([{}])", "({})[({})]", "(({{[[]]}}))","{}({})[]"]

for i in falseArray {
print(validBraces(i))
}
func validBraces(_ string: String) -> Bool {
    
    guard !string.isEmpty && string.first != "}" && string.first != "]" && string.first != ")" else {return false}
    
    var leftParenth = 0
    var leftBrace = 0
    var leftCurly = 0
    var nextCharCantBe : [String] = []
    for (_,i) in string.enumerated() {
        switch i {
        case "{":
            leftCurly += 1
            nextCharCantBe.removeAll(where: {$0 == "}"})
            nextCharCantBe.append(contentsOf: [")","]"])
        case "[":
            leftBrace += 1
            nextCharCantBe.removeAll(where: {$0 == "]"})
            nextCharCantBe.append(contentsOf: ["}",")"])
        case "(":
            leftParenth += 1
            nextCharCantBe.removeAll(where: {$0 == ")"})
            nextCharCantBe.append(contentsOf: ["}","]"])
        case "}":
            leftCurly -= 1
            if  leftCurly < 0 || nextCharCantBe.contains(String(i)) {
                return false
            }
            nextCharCantBe.removeAll()
        case "]":
            leftBrace -= 1
            if leftBrace < 0 || nextCharCantBe.contains(String(i))  {
                return false
            }
            nextCharCantBe.removeAll()
        case ")":
            leftParenth -= 1
            if  leftParenth < 0 || nextCharCantBe.contains(String(i)) {
                return false
            }
            nextCharCantBe.removeAll()
        default:
            break
        }
        
    }
    
    if leftBrace != 0 || leftCurly != 0 || leftParenth != 0 {
        return false
    }
    
    return true
    
}
//Best practice
//func validBraces(_ string:String) -> Bool {
//    let str = string
//        .replacingOccurrences(of: " ", with: "")
//        .replacingOccurrences(of: "{}", with: "")
//        .replacingOccurrences(of: "[]", with: "")
//        .replacingOccurrences(of: "()", with: "")
//    switch str {
//    case "": return true
//    case string: return false
//    default: return validBraces(str)
//    }
//}
