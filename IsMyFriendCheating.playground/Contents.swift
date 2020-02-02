import UIKit

var str = "Hello, playground"


let array = ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"]

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    var longest: String = ""
    let n = strarr.count
    if n == 0 || k > n || k <= 0 {return longest}
    for i in 0..<(n - k + 1) {
        let str: String = strarr[i..<i + k].joined(separator: "")
        if str.count > longest.count {longest = str}
    }
    return longest
}
longestConsec(array, 2)
