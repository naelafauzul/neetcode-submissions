class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var window = Set<Int>()

        for i in 0..<nums.count {
            if i > k {
                window.remove(nums[i - k - 1])
            }

            if window.contains(nums[i]) {
                return true
            }

            window.insert(nums[i])
        }
        return false
    }
}
