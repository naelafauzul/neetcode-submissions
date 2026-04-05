class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack: [Int] = []

        for num in operations {
            switch num {
                case "+":
                let last = stack[stack.count-1]
                let secondLast = stack[stack.count-2]
                stack.append(last + secondLast)

                case "D":
                stack.append(stack.last! * 2)

                case "C":
                stack.removeLast()

                default:
                stack.append(Int(num)!)
            }
        }

        return stack.reduce(0,+)
    }
}
