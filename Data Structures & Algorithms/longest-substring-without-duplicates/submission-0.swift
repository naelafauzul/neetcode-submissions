class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var window = Set<Character>()
        var arr = Array(s)
        var maxLength = 0
        var left = 0

        for right in 0..<arr.count {
            while window.contains(arr[right]) {
                window.remove(arr[left])
                left += 1
            }

            window.insert(arr[right])
            maxLength = max(maxLength, right - left + 1)
        }
        return maxLength
    }
}
