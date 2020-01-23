import UIKit

let good = "1 1 1 1 1 1"
let evil = "1 1 1 1 1 1 1"


func evaluate(good: String, vsEvil evil: String) -> String {
    
    let goodArray = good.components(separatedBy: " ")
    let evilArray = evil.components(separatedBy: " ")
    
    var goodPoints = 0
    var badPoints = 0
    var returnString = ""
    
    for (index,number) in goodArray.enumerated() {
        
        switch index {
        //Hobbits
        case 0:
            goodPoints += (Int(number)! * 1)
            break
        //Men
        case 1:
            goodPoints += (Int(number)! * 2)
            break
        //Elves
        case 2:
            goodPoints += (Int(number)! * 3)
            break
        //Dwarves
        case 3:
            goodPoints += (Int(number)! * 3)
            break
        //Eagles
        case 4:
            goodPoints += (Int(number)! * 4)
            break
        //Wizards
        case 5:
            goodPoints += (Int(number)! * 10)
            break
        default:
            break
        }
    }
    
    for (index,number) in evilArray.enumerated() {
        
        switch index {
        //Orcs
        case 0:
            badPoints += (Int(number)! * 1)
            break
        //Men
        case 1:
            badPoints += (Int(number)! * 2)
            break
        //Wargs
        case 2:
            badPoints += (Int(number)! * 2)
            break
        //Goblins
        case 3:
            badPoints += (Int(number)! * 2)
            break
        //Uruk Hai
        case 4:
            badPoints += (Int(number)! * 3)
            break
        //Trolls
        case 5:
            badPoints += (Int(number)! * 5)
            break
        //Wizards
        case 6:
            badPoints += (Int(number)! * 10)
            break
        default:
            break
        }
    }
    
    if goodPoints > badPoints {
        returnString = "Battle Result: Good triumphs over Evil"
    } else if badPoints > goodPoints {
        returnString = "Battle Result: Evil eradicates all trace of Good"
    } else {
        returnString = "Battle Result: No victor on this battle field"
    }
    zip(<#T##sequence1: Sequence##Sequence#>, <#T##sequence2: Sequence##Sequence#>)
    
    return returnString
}

evaluate(good: good, vsEvil: evil)
