import UIKit

class Solution {
    func trap(_ height: [Int]) -> Int {

        var waterContainerResult = 0
        var left = 0
        var right = height.count - 1
        var leftMax = 0
        var rightMax = 0
        
        while left < right {
        
            if height[left] < height[right] {
                //if we found a new high left
                if height[left] >= leftMax {
                    leftMax = height[left]
                }else {
                    //if its not a new high left
                    waterContainerResult = waterContainerResult + leftMax - height[left]
                }
                left += 1
            }else {
                if height[right] >= rightMax {
                    rightMax = height[right]
                }else {
                    waterContainerResult = waterContainerResult + rightMax - height[right]
                }
                right -= 1
            }
            
            
        }
        return waterContainerResult
        
    }
    
}
// output should be 6 
Solution().trap([0,1,0,2,1,0,1,3,2,1,2,1])
