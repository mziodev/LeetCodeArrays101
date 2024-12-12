import Foundation

class Solution {
    
    // time O(n)
    // space O(n)
    static func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result = [Int](repeating: 0, count: nums.count)
        var position = nums.count - 1
        
        while left <= right {
            let leftSquared = nums[left] * nums[left]
            let rightSquared = nums[right] * nums[right]
            
            if leftSquared > rightSquared {
                result[position] = leftSquared
                left += 1
            } else {
                result[position] = rightSquared
                right -= 1
            }
            
            position -= 1
        }
        
        return result
    }
}

Solution.sortedSquares([-4,-1,0,3,10])
Solution.sortedSquares([-7,-3,2,3,11])
