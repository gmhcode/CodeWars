import UIKit



extension String {
    public var toBase64: String {
        // Do something!
        let data = Data(base64Encoded: self)!
    return "\(data)"
    }
    
    public var fromBase64: String {
    // Do something!
        let data = Data(base64Encoded: self)!
        return String(data: data, encoding: .utf8)!
    }
}

var str = "Hello, playground"
