class MyHashSet {
    private let size = 1000
    private var buckets: [[Int]]

    init() {
        buckets = Array(repeating: [], count: size)
    }

    func hash(_ key: Int) -> Int {
        return key % size 
    }

    func add(_ key: Int) {
        let index = hash(key)
        if !buckets[index].contains(key) {
            buckets[index].append(key)
        }
    }

    func remove(_ key: Int) {
        let index = hash(key)
        if let pos = buckets[index].firstIndex(of: key) {
            buckets[index].remove(at: pos)
        }
    }

    func contains(_ key: Int) -> Bool {
        let index = hash(key)
        return buckets[index].contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
