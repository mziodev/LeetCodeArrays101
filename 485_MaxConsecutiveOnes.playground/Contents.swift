import Foundation

class Solution {
    
    /// Time O(n)
    /// Space O(1)
    static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var maxConsecutiveOnes = 0
        var currentConsecutiveOnes = 0
        
        for num in nums {
            if num == 1 {
                currentConsecutiveOnes += 1
            } else {
                maxConsecutiveOnes = max(
                    maxConsecutiveOnes,
                    currentConsecutiveOnes
                )
                currentConsecutiveOnes = 0
            }
        }
        
        if currentConsecutiveOnes > 0 {
            maxConsecutiveOnes = max(
                maxConsecutiveOnes,
                currentConsecutiveOnes
            )
        }
        
        return maxConsecutiveOnes
    }
}

Solution.findMaxConsecutiveOnes([1,1,0,1,1,1])
Solution.findMaxConsecutiveOnes([1,1,0,1,1,1,0])
Solution.findMaxConsecutiveOnes([1,1,0,1,1,1,0,1,1,1,1])
