 import UIKit
 
 var str = "Hello, playground"

 
  func topYCompe(numCompetitors: Int, topNCompetitors: Int, competitors: [String], numReviews: Int, reviews:[String])-> [String] {
     
     
     var comps : [[String]] = []
     var returningString : [String] = []
     
     
     
     for (index,c) in competitors.enumerated() {

        
        for review in reviews {
            
             if review.contains(c) {

                comps[index].append(c)

             }
         }
     }
    
    
     let compsSorted = comps.sorted { (a, b) -> Bool in
         
         if a.count == b.count {
             return a[0] < b[0]
         }
         return a.count > b.count
     }
     
     compsSorted.forEach({
         if returningString.count < topNCompetitors {
             returningString.append($0[0])
         }
         
     })

     return returningString
  }
topYCompe(numCompetitors: 5, topNCompetitors: 3, competitors: ["b","a","c"], numReviews: 6, reviews: ["I love b","b is super neet","i love a","i love c","i love c"])
