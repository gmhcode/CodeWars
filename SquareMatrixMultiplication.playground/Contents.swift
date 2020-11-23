import UIKit

var str = "Hello, playground"

//C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0] = 1*3 + 2*1 =  5
//C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1] = 1*2 + 2*1 =  4
//C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0] = 3*3 + 2*1 = 11
//C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1] = 3*2 + 2*1 =  8


func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    
    
    var c : [[Int]] = Array.init(repeating: Array.init(repeating: 0, count: a[0].count), count: a.count)
    var outerCount = a.count
    var innerCount = a[0].count
    
    for (index,_) in a.enumerated() {
        for (inner, i) in a[index].enumerated() {
            let currentA = a[index]
            let currentB = b[index]
            
            c[index][inner] = currentA[inner] * currentB[inner]
            
        }
            
    }
        c[0][0] = 1
//    print(c)
    return [[]]
}

//should return [[5, 4], [11, 8]]
//matrixMultiplication([[1, 2], [3, 2]], [[3, 2], [1, 1]])


111221

312211

func getLines(_ num:Int?) -> String {
    guard let num = num else {print("❇️♊️>>>\(#file) \(#line): guard let failed<<<"); return "-1"}
    var returningArray : [Int] = [1]
    for i in 1...num {
        print(i)
        let currentNum = returningArray[i - 1]
        let currentNumAsString = "\(currentNum)"
        
        print(returningArray[i - 1])
    }
    
    return ""
}
//getLines(5)

func convertToNumber(st: String) {
    
}

func countSameNumber(st: String){
    var previousNumber = "\(st.first!)"
    var countOfPreviousNumber = 0
    var array : [String] = []
    for i in st {
        
        if previousNumber != "\(i)" {
            array.append("\(countOfPreviousNumber)")
            array.append(previousNumber)
            
            countOfPreviousNumber = 1
            previousNumber = "\(i)"
            
        }else {
            countOfPreviousNumber += 1
            
        }
        
    }
    print(array)
}
countSameNumber(st: "1211")
