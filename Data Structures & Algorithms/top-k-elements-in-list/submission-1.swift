class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq = [Int:Int]()

        for num in nums {
            freq[num] = (freq[num] ?? 0) + 1
        }

        let result = freq
            .sorted { $0.value > $1.value }
            .prefix(k)
            .map { $0.key }

        return result
    }
}
