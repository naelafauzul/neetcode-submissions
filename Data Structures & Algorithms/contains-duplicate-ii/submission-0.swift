class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map: [Int:Int] = [:]

        for (index, num) in nums.enumerated() {
            if let prevIndex = map[num] {
                if index - prevIndex <= k {
                    return true
                }
            }
            map[num] = index
        }
        return false
    }
}
