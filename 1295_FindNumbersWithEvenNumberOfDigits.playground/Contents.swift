import Foundation

class Solution {
    static func findNumbers(_ nums: [Int]) -> Int {
        var count = 0
        
        nums.forEach { number in
            var digitNumber = 1
            var num = number
            
            while (num / 10 > 0) {
                digitNumber += 1
                num /= 10
            }
            
//            let digitCount = num == 0 ? 1 : Int(log10(Double(abs(num)))) + 1
            
            if digitNumber.isMultiple(of: 2) { count += 1 }
        }
        
        return count
    }
}

Solution.findNumbers([12,345,2,6,7896])
Solution.findNumbers([555,901,482,1771])
