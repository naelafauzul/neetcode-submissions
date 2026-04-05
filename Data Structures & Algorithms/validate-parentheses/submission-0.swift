class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        let pairs : [Character : Character] =
        [
            "(" : ")", "{" : "}", "[" : "]"
        ]

        for ch in s {
            if ch == "(" || ch == "{" || ch == "[" {
                stack.append(ch)
            } else {
                if stack.isEmpty {
                    return false
                }

                let top = stack.removeLast()
                if pairs[top] != ch {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}
