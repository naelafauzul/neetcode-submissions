class Solution {
    func sortColors(_ nums: inout [Int]) {
        var current = 0
        var left = 0
        var right = nums.count - 1

        while current <= right {
            if nums[current] == 0 {
                nums.swapAt(current, left)
                left += 1
                current += 1
            } else if nums[current] == 2 {
                nums.swapAt(current, right)
                right -= 1
            } else {
                current += 1
            }
        }
    }
}
