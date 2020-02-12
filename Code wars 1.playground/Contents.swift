import UIKit

var str = "my name is mr. blah  blah head"
extension String {
    func toJadenCase() -> String {
    var convertedWords = ""
    var pocket: [String] = [""]
    
    
    pocket = self.components(separatedBy: " ")
        for (index,i) in pocket.enumerated() {
        var word = ""
            
        if index != pocket.count - 1 {
            word = i.prefix(1).uppercased() + i.dropFirst() + " "
            print(i.prefix(1))
        } else {
            word = i.prefix(1).uppercased() + i.dropFirst()
        }
        
        convertedWords += word
    }
    return convertedWords
  }
}

"How can mirrors be real if our eyes aren't real".toJadenCase()
