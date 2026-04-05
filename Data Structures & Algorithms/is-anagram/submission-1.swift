class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var freq: [Character: Int] = [:]

        
        for char in s {
            freq[char] = (freq[char] ?? 0) + 1
        }

        for char in t {
            guard let count = freq[char] else {
                return false
            }

            if count == 1 {
                freq[char] = nil
            } else {
                freq[char] = count - 1
            }
        }
        return freq.isEmpty
    }
}