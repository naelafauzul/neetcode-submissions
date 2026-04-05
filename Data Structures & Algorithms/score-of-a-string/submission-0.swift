class Solution {
    func scoreOfString(_ s: String) -> Int {
        let chars = Array(s)
        var total = 0
        
        for i in 1..<chars.count {
            let diff = abs(Int(chars[i].asciiValue!) - Int(chars[i-1].asciiValue!))
            total += diff
        }
        
        return total
    }
}
