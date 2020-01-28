import UIKit

var str = "Hello, playground"

func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    // your code
    
    guard lng != wdth else { return nil }
    let minSide = min(lng, wdth)
    let maxSide = max(lng, wdth)
    return minSide > 0 ? Array([[minSide], sqInRect(maxSide - minSide, minSide) ?? [minSide]].joined()) : []
    
    if minSide > 0 {
        return Array([[minSide],sqInRect(maxSide - minSide, minSide) ?? [minSide]].joined())
    }else {
        return []
    }
}
