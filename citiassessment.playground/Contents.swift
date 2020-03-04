import UIKit

var str = "aaaaazzzzz"

///find the most common letter in the string, if there two letters with the same count. the letter that comes earliest in the alphabet is prioritized
func ord (_ s : String) -> Int {
    return Int(s.utf16[s.utf16.startIndex]);
}

func ord (_ c : Character) -> Int {
    return ord(String(c));
}

public func solution2(_ S: inout String) -> String {
    let S_characters = Array(S);
    var occurrences = [Int](repeating: 0, count: 26);

    for i in 0...(S_characters.count - 1) {
        occurrences[ord(S_characters[i]) - ord("a")] += 1;
    }
    var best_char: Character = "a";
    var best_res: Int = 0;
    
    print(occurrences,"occurences")
    for i in 0...25 {
        if (occurrences[i] > best_res) {
            best_char = Character(UnicodeScalar(ord("a") + i)!);
            print(best_char,"bestchar")
            best_res = occurrences[i];
        }
    }
        
    return String(best_char);
}

solution2(&str)

