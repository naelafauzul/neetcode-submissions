class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var stack: [String] = []
        
        for log in logs {
            if log == "../" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else if log == "./" {
                continue
            } else {
                stack.append(log)
            }
        }
        return stack.count
    }
}
