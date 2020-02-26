import UIKit

var str = "Hello, playground"



//func countPalindromes(s: String) -> Int {
//    var counter = s.count
//    var pocket : [String] = []
//
//
//
//
//
//
//    for i in s {
//        pocket.append(String(i))
//        if pocket == pocket.reversed() {
//            counter += 1
//        }
//    }
//
//
//    var dropFristPocket = pocket
//
//    for i in pocket {
//        dropFristPocket = Array(dropFristPocket.dropFirst())
//        if dropFristPocket == dropFristPocket.reversed() {
//            counter += 1
//        }
//    }
//    var dropLastPocket = pocket
//    for i in pocket {
//
//    }
    
    
    
//
//
//    return counter - 1
//
//}
//
//countPalindromes(s: "tacocat")
//
//

























//func isPalindrome(string: String) -> Bool {
//    let str = (string.lowercased())
////    let strWithoutSpace = str.components(separatedBy: .whitespaces).joined(separator: "")
//    let strArray = Array(string)
//    var i = 0
//    var j = strArray.count-1
//    while i <= j {
//        if strArray[i] != strArray[j] { return false }
//        i+=1
//        j-=1
//    }
//    return true
//}
//func countPalindromes(s: String) -> Int {
//    var arrayOfChars = Array(s)
//    var count = s.count
//    for i in 0..<arrayOfChars.count-1 {
//        for x in i+1..<arrayOfChars.count {
////            if isPalindrome(string: String(arrayOfChars[i...x])) {
////                count+=1
////            }
//            if String(arrayOfChars[i...x]) == String(arrayOfChars[i...x].reversed()) {
//                count += 1
//            }
//            }
//    }
//    return count
//}
//
//
//
//
//countPalindromes(s: "ltvzkqtpvolphckcyufdqmlglimklfzktgygdttnhcvpfdfbrpzlkvshwywshtdgmbqbkkxcvgumonmwvytbytnuqhmfjaqtgngcwkuzyamnerphfmwevhwlezohyeehbrcewjxvceziftiqtntfsrptugtiznorvonzjfeacgamayapwlmbzitzszhzkosvnknberbltlkggdgpljfisyltmmfvhybljvkypcflsaqevcijcyrgmqirzniaxakholawoydvchveigttxwpukzjfhxbrtspfttotafsngqvoijxuvqbztvaalsehzxbshnrvbykjqlrzzfmlvyoshiktodnsjjpqplciklzqrxloqxrudygjtyzleizmeainxslwhhjwslqendjvxjyghrveuvphknqtsdtwxcktmwwwsdthzmlmbhjkmouhpbqurqfxgqlojmwsomowsjvpvhznbsilhhdkbdxqgrgedpzchrgefeukmcowoeznwhpiiduxdnnlbnmyjyssbsococdzcuunkrfduvouaghhcyvmlkzaajpfpyljtyjjpyntsefxiswjutenuycpbcnmhfuqmmidmvknyxmywegmtunodvuzygvguxtrdsdfzfssmeluodjgdgzfmrazvndtaurdkugsbdpawxitivdubbqeonycaegxfjkklrfkraoheucsvpiteqrswgkaaaohxxzhqjtkqaqhkwberbpmglbjipnujywogwczlkyrdejaqufowbigrsnjniegvdvotugocedktcbbufnxorixibbdfrzuqsyrfqghoyqevcuanuujszitaoaowsxyglafbwzddoznrvjqeyqignpitruijvyllsibobjltusrypanvybsfrxtlfmpdidtyozoolzslgdgowijatklvjzscizrkupmsoxftumyxifyunxucubvkfctkqlroqgzjvjwzizppvsomflvioemycnp")


func playlist(songs: [Int]) -> Int {

    var counter = 0
    var pocket : Int = 0
    if songs.count < 2 {
        return 0
    }



    for (index,song) in songs.enumerated() {

        if index == songs.count - 1 {
        break
        }
        for (index2,j) in songs.enumerated() {
            
            if (index2 > index) == false {
                continue
            }
            
            if (song + j) % 60 == 0 {
                counter += 1
            }
        }
    }


return counter
}

playlist(songs: [4,
10,
50,
90,
30])



//func numPairsDivisibleBy60(self, time: List[int]) -> int:
//total = 0
//for i, song1 in enumerate(time):
//    for j in range(i+1, len(time)):
//        if (song1 + time[j]) % 60 == 0:
//            total += 1
//return total

//func playlist(songs: [Int]) -> Int {
//
//    var counter = 0
////    var pocket : Int = 0
////    if songs.count < 2 {
////        return 0
////    }
//
//
//
//    for (index,i) in songs.enumerated() {
//        for j in index+1..<songs.count {
//            if (i + j) % 60 == 0 {
//                counter += 1
//            }
//        }
//
//    }
//
//return counter
//}
