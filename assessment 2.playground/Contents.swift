import UIKit

var str = "Hello, playground"


let theGrid = [[1,0,0,0,0,0],
            [0,0,0,0,0,0],
            [0,0,0,0,0,0],
            [0,0,0,0,0,0],
            [0,0,0,0,1,0]]
let columns = 5
let rows = 5
var days = 0



func minimumDays(rows: Int,columns: Int, grid: [[Int]]) -> Int {
    
    var containsZero = false
    
    let pocket : [[Int]] = grid
    var nextDayGrid : [[Int]] = grid
    
    days += 1

    for row in grid {
        if containsZero == true {break}
        containsZero = row.contains(0)
        
    }
    if containsZero == false || days > 10 {
        print(pocket)
        return days
    }
    //skip over 1's
    // 0 == out of date
    //1 == updated
    // each day updated server can update adjacent
    for (index,row) in pocket.enumerated() {

        for (rowIndex,i) in row.enumerated() {
            if i == 0 {
                if index == 0 {

                    if rowIndex == 0 {
                        
                        if pocket[index + 1][rowIndex] == 1
                            || pocket[index][rowIndex + 1] == 1 {

                            nextDayGrid[index][rowIndex] = 1
                            
                        }
                        
                        continue
                    } else if rowIndex == row.count - 1 {
                        if pocket[index + 1][rowIndex] == 1 ||
                            pocket[index][rowIndex - 1] == 1{
                            
                            nextDayGrid[index][rowIndex] = 1
                            
                            
                        }
                        continue
                    }else  {
                        print("hit")
                        if pocket[index + 1][rowIndex] == 1
                            || pocket[index][rowIndex - 1] == 1 {

                            nextDayGrid[index][rowIndex] = 1
                            
                        }
                        continue
                    }
                    
                } else if index == pocket.count - 1 {
                   
                    if rowIndex == 0 {
                        
                        if pocket[index - 1][rowIndex] == 1
                            || pocket[index][rowIndex + 1] == 1 {
                            
                            nextDayGrid[index][rowIndex] = 1
                            
                            
                        }
                        continue
                    } else if rowIndex == row.count - 1 {
                        
                        if pocket[index - 1][rowIndex] == 1
                            || pocket[index][rowIndex - 1] == 1 {
                            
                            nextDayGrid[index][rowIndex] = 1
                        }
                        continue
                    } else {
                        if pocket[index - 1][rowIndex] == 1
                            || pocket[index][rowIndex - 1] == 1
                            || pocket[index][rowIndex + 1] == 1 {
                            nextDayGrid[index][rowIndex] = 1
                            
                        }
                        continue
                    }
                    
                }
                
                 else if rowIndex == 0 {
                
                    if pocket[index - 1][rowIndex] == 1
                        || pocket[index][rowIndex + 1] == 1
                        || pocket[index + 1][rowIndex] == 1  {
                        
                        nextDayGrid[index][rowIndex] = 1
                        
                        
                    }
                    continue
                    
                }
                 else if rowIndex == row.count - 1{
//                    print(index)
                    if pocket[index - 1][rowIndex] == 1
                        || pocket[index + 1][rowIndex] == 1
                        || pocket[index][rowIndex - 1] == 1 {
                        
                        
                        nextDayGrid[index][rowIndex] = 1
                    }
                    continue
                    
                } else {
                    
                    if pocket[index - 1][rowIndex] == 1
                    || pocket[index + 1][rowIndex] == 1
                    || pocket[index][rowIndex - 1] == 1
                    || pocket[index][rowIndex + 1] == 1 {
                        
                        nextDayGrid[index][rowIndex] = 1
                        
                    }
                }
            }
        }
    }
    
    print(pocket)
    minimumDays(rows:rows, columns:columns, grid:nextDayGrid)
    
    
    return 0
}

minimumDays(rows: rows, columns: columns, grid: theGrid)
