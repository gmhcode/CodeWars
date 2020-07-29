import UIKit



//dotest("abcde", 0)
//     dotest("abcdea", 1)
//     dotest("abcdeaB11", 3)
//     dotest("indivisibility", 1)


func doTest(string:String) -> Int{
    
    var counter = 0
    
    var pocket : [Character:Int] = [:]
    
    for i in string.lowercased() {
        if pocket[i] == nil {
            pocket[i] = 1
            continue
        }
        
        pocket[i]! += 1
        
    }
    for i in pocket.values {
        if i >= 2 {
            counter += 1
        }
    }
        return counter
}

print(doTest(string: "abcdeaB11"))

var str = "Hello, playground"
