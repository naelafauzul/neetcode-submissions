class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack : [Int] = []

        for token in tokens {
            if token == "+" || token == "-" || token == "*" || token == "/" {

                let right = stack.removeLast()
                let left = stack.removeLast()
                var result = 0

                switch token {
                    case "+": result = left + right
                    case "-": result = left - right
                    case "*": result = left * right
                    case "/": result = left / right
                    default: break
                }

                stack.append(result)
            } else {
                if let number = Int(token) {
                    stack.append(number)
                }
            }
        }
        return stack.removeLast()
    }
}
