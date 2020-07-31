import UIKit


//
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

protocol Interest {
    var amount : Double {get set}
    var p : Double {get set}
    var r : Double {get set}
    var t : Int {get set}
    
}

class Simple : Interest {
    var t: Int
    
    var amount:Double
    
    var p: Double
    
    var r: Double
    
    
    
    var interest : Double
    
    init ( p:Double,t: Int,r:Double) {
        self.t = t
        self.p = p
        self.r = r
        
        self.interest = p * Double(t) * r
        self.amount =  p + interest
    }
    
}

class Compound : Interest {
    var amount:Double
    
    var interest : Double
    let n : Int
    var p: Double
    
    var r: Double
    
    var t: Int
    
    init ( p:Double,t: Int,r:Double,n:Int) {
        self.t = t
        self.n = n
        self.p = p
        self.r = r
        let expo = Double(n * t)
        let thing = (1 + r / Double(n))
        self.amount = (p * pow(thing,expo) * 100).rounded() / 100
        self.interest = p * (1 + r / Double(n))
    }
}
//100
//5
//0.1
//3
//
//Your Output (stdout)
//0.0
//50.0
//0.0
//163.53344538259756
//
//Expected Output
//Download
//50.0
//150.0
//63.53
//163.53
//func generate(len:Int) -> [Int] {
//
//    var pocket : [Int] = []
//    var counter = 0
//
//    while pocket.count < len {
//        if counter % 2 != 0 {
//            pocket.append(counter)
//        }
//        counter += 1
//    }
//    return pocket
//}
//print(generate(len: 3))
//class AuthenticationError {
//
//}
//let authDict : [String:String] = ["admin":"admin123","user":"someone123","guest":"guest999","you":"yourpass","me":"mypass190"]
//
//func authenticate(user:String,pass:String) throws -> Bool {
//
//    if authDict[user] == pass {
//        return true
//    }
//    throw CustomErrors.AuthenticationError(message:"Invalid Credentials")
//    return false
//}
//enum CustomErrors : Error {
//    case AuthenticationError(message: String)
//}
//do {
//    let auth = try authenticate(user: "admin", pass: "k")
//}catch{
//    print("error")
//}
//struct Size {
//    var height : Double
//    var width : Double
//
//}
//class Shape {
//    var size : Size
//    var area : Double {
//        return size.height * size.width
//    }
//    var perimeter : Double {
//        return size.height * size.width
//    }
//
//    init(size:Size) {
//        self.size = size
//    }
//
//}
//class Rectangle : Shape {
//
//
//    override var area: Double{
//        return size.height * size.width
//    }
//
//    override var perimeter: Double {
//        return 2 * (size.height + size.width)
//    }
//
//
//        override init(size:Size) {
//            super.init(size: size)
//    }
//
//
//
//}
//class Square : Shape {
//
//
//    override var area: Double{
//        return size.height * size.width
//    }
//
//    override var perimeter: Double {
//        return 2 * (size.height + size.width)
//    }
//
//
//        override init(size:Size) {
//            super.init(size: size)
//    }
//}
//let numbers = [3,4,5,6]
//let mappedNumbers = numbers.map({ number in 2 / number })
//print(mappedNumbers)
//
//struct S {
//var data: Int = 100
//}
//var a = S()
//var b = a
//a.data = 200
//print((a.data),(b.data))
