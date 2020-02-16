import UIKit

var str = "hello playground"
//Write a simple camelCase function for strings. All words must have their first letter capitalized and all spaces removed.
//
//For instance:
//camelCase("hello case"); // ==> "HelloCase"
//camelCase("camel case word"); // ==> "CamelCaseWord"

func camelCase(_ str: String) -> String {

    if str == "" {
        return ""
    }
    var theStr = str.components(separatedBy: " ")
    theStr.removeAll(where: {$0 == ""})

    return [theStr.compactMap({$0.first!.uppercased() + $0.dropFirst()}).joined()][0]
}

camelCase(" camel case word")

//Test Cases
//XCTAssertEqual(camelCase("test case"), "TestCase")
//XCTAssertEqual(camelCase("camel case method"), "CamelCaseMethod")
//XCTAssertEqual(camelCase("say hello "), "SayHello")
//XCTAssertEqual(camelCase(" camel case word"), "CamelCaseWord")
//XCTAssertEqual(camelCase(""), "")


// Best Practices
//func camelCase(_ str: String) -> String {
//  return str.capitalized.replacingOccurrences(of: " ", with: "")
//}

