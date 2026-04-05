class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        let sArray = Array(s)
        let tArray = Array(t)

        for char in tArray {
            if i < sArray.count && char == sArray[i] {
                i += 1
            }
        }

        return i == sArray.count
    }
}
