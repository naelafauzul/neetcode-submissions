class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var note = [Int:Int]()

        for (index, value) in nums.enumerated() {
            let pair = target - value

            if let indexPair = note[pair] {
                return [indexPair, index]
            } else {
                note[value] = index
            }
        }
        return []
    }
}
