class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        
        for char in s.reversed() {
            if char == " " && length > 0 { break }
            if char != " " { length += 1 }
        }
        
        return length
    }
}