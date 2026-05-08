class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var k = 0

        for i in 1..<nums.count {
            if nums[i] != nums[k] {
                k += 1
                nums[k] = nums[i]
            }
        }
        return k+1
    }
}
