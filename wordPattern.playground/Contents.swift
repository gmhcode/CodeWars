import UIKit

var greeting = "Hello, playground"

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    
    
    // put all the first letters in an array letterArray
    
    // take the first letter in the array, x, and change all the letters in the letterArray that match the first index
    
    // do the same with the second letter
    
    let letterArray = s.split(separator: " ").map({String($0)})
    // let letterArray = wordArray.compactMap({$0.first})
    var compareArray = letterArray
    
    if pattern.count != compareArray.count {
        return false
    }
    
    var usedDict: [String:String] = [:]
    
    for (index,i) in letterArray.enumerated() {
    let strI = String(i)
        let patternLetter = String(pattern[String.Index(utf16Offset: index, in: pattern)])
        
        if (usedDict[patternLetter] == nil
            && usedDict.values.filter({$0 == strI}).count == 0) || usedDict[patternLetter] == strI {
            
            
            
            
            compareArray[index] = patternLetter
            usedDict[patternLetter] = strI
        }
    }
    let joinedArray = compareArray.reduce("", {String($0) + String($1)})
    
    return pattern == joinedArray
    
}
wordPattern("abba",
            "dog dog dog dog")
