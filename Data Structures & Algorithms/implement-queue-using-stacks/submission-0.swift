class MyQueue {

    private var q1 : [Int] = []
    private var q2 : [Int] = []

    init() {

    }

    func push(_ x: Int) {
        q1.append(x)
    }

    func pop() -> Int {
        return q1.removeFirst()
    }

    func peek() -> Int {
        return q1.first!
    }

    func empty() -> Bool {
        return q1.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.peek()
 * let param_4 = obj.empty()
 */
