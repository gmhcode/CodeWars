import UIKit

var str = "Hello, playground"


//Definition (Primorial Of a Number)
//Is similar to factorial of a number, In primorial, not all the natural numbers get multiplied, only prime numbers are multiplied to calculate the primorial of a number. It's denoted with P#.

//Task
//Given a number N , calculate its primorial.

func numPrimoral( _ number: UInt ) -> UInt {
    
    var pocket : [UInt] = []
    var counter : UInt = 1
    
    while pocket.count < number {
        if isPrime(Int(counter)){
            pocket.append(counter)
        }
        counter += 1
    }
    return pocket.reduce(1,*)
}


func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
numPrimoral(5)

//Example
//numPrimorial (3) ==> return (30)


//Explanation:
//Since the passed number is (3) ,Then the primorial should obtained by multiplying 2 * 3 * 5 = 30 .

//Example
//numPrimorial (6) ==> return (30030)

//Since the passed number is (6) ,Then the primorial should obtained by multiplying 2 * 3 * 5 * 7 * 11 * 13 = 30030 .
