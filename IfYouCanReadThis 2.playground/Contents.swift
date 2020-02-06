import UIKit

var str = "Hello, playground"
let dict: [Character: String] = [
    "a": "Alfa",
    "b": "Bravo",
    "c":"Charlie",
    "d":"Delta",
    "e":"Echo",
    "f":"Foxtrot",
    "g":"Golf",
    "h":"Hotel",
    "i":"India",
    "j":"Juliett",
    "k":"Kilo",
    "l":"Lima",
    "m":"Mike",
    "n":"November",
    "o":"Oscar",
    "p":"Papa",
    "q":"Quebec",
    "r":"Romeo",
    "s":"Sierra",
    "t":"Tango",
    "u":"Uniform",
    "v":"Victor",
    "w":"Whiskey",
    "x":"Xray",
    "y":"Yankee",
    "z":"Zulu",
    "!":"!",
    "?":"?",
    ".":".",
    "(":"(",
    ")":")",
    "\"": "\""
]

func toNato(_ words: String) -> String {
    print(words)

    return words.lowercased().compactMap { dict[$0] }.joined(separator: " ")
}
print(toNato("go for it!"))
