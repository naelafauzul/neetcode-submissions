class MinStack {

    private var stack : [(val: Int, min: Int)] = []

    init() {

    }

    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append((val, val))
        } else {
            let currentMin = stack.last!.min
            let newMin = min(val, currentMin)
            stack.append((val, newMin))
        }
    }

    func pop() {
        stack.removeLast()
    }

    func top() -> Int {
        return stack.last!.val
    }

    func getMin() -> Int {
        return stack.last!.min
    }
}
