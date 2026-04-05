class MyStack {

    private var q1: [Int] = []
    private var q2: [Int] = []
 
    init() {

    }

    func push(_ x: Int) {
        q2.append(x)

        while !q1.isEmpty {
            q2.append(q1.removeFirst())
        }

        let temp = q1
        q1 = q2
        q2 = temp
    }

    func pop() -> Int {
        return q1.removeFirst()
    }

    func top() -> Int {
        return q1.first!
    }

    func empty() -> Bool {
        return q1.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.top()
 * let param_4 = obj.empty()
 */
