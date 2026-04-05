class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var stack: [Int] = []
        var map: [Int:Int] = [:]

        for num in nums2 {
            while let last = stack.last, num > last {
                map[last] = num
                stack.popLast()
            }
            stack.append(num)
        }

        for num in stack {
            map[num] = -1
        }

        return nums1.map { map[$0]! }

    }
}
