import UIKit

var str = "Hello, playground"

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDict : [String : Int] = [String:Int]()
    
    for name in array {
        
        if let count = nameCountDict[name] {
            nameCountDict[name] = count + 1
        } else {
            nameCountDict[name] = 1
        }
        
        
    }
    
    var mostCommonName = ""
    
    for key in nameCountDict.keys {
        
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = nameCountDict[key]!
            if count > nameCountDict[mostCommonName]! {
                mostCommonName = key
            }
        }
        
        
        print("\(key)")
    }
    
    return mostCommonName
}
mostCommonNameInArray(array: ["bob","sally","bob"])
