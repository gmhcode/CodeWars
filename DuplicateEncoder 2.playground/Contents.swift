import UIKit

var str = "Hello, playground"

func duplicateEncode(_ word: String) -> String {
    
    var pocket : [String:String] = [:]
    var encodedString = ""
    //this determines whether a character should be ( or )
    for character in word {
        let lowerChar = character.lowercased()
        
        if pocket[lowerChar] == nil {
            pocket[lowerChar] = "("
        } else {
            pocket[lowerChar]! = ")"
        }
    }
    //this set the encoded string to be ( or )
    for character in word {
        let lowerChar = character.lowercased()
        encodedString += pocket[lowerChar]!
    }
   
    return encodedString
}
duplicateEncode(str)
