import UIKit
//Encrypt this!
//
//You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:
//
//Your message is a string containing space separated words.
//You need to encrypt each word in the message using the following rules:
//The first letter needs to be converted to its ASCII code.
//The second letter needs to be switched with the last letter
//No special characters

//Examples:
//encryptThis "Hello" == "72olle"
//encryptThis "good" == "103doo"
//encryptThis "hello world" == "104olle 119drlo"


var str = "A wise old owl lived in an oak"


func encryptThis(text:String) -> String{
  // Your awesome code goes here!
    var textArray = text.components(separatedBy: " ")
    
    
    for (index,array) in textArray.enumerated() {
        

        let asciiVal = String(textArray[index].first!.asciiValue!)
        
        textArray[index] = String(textArray[index].dropFirst())
        

        if array.count > 2 {
            
        let first = String(textArray[index].first!)
        let last = String(textArray[index].last!)
        textArray[index] = String(textArray[index].dropFirst())
        textArray[index] = String(textArray[index].dropLast())
        
        textArray[index] = last + textArray[index] + first
        }
        
        
        textArray[index] = asciiVal + textArray[index]


        
    }
    textArray = [textArray.joined(separator: " ")]
    
  return textArray[0]
}
print(encryptThis(text: str))




//Best Practices
//But mine has a better big0.. this is 0n^2 at least, mines is 0n
//func encryptThis1(text:String) -> String {
//    return text
//        .components(separatedBy: " ")
//        .map {
//            var a = $0.map { String($0) }
//            a[0] = String(a[0].unicodeScalars.first!.value)
//
//            if a.count > 2 {
//                a.swapAt(1, a.count-1)
//            }
//
//            return a.joined()
//        }
//        .joined(separator: " ")
//}
