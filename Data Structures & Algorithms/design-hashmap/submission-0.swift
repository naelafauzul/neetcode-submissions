class MyHashMap {
    private let size = 1000

    //2DArray because array contains list of pairs
    private var buckets: [[(Int, Int)]]

    init() {
        //create empty array
        buckets = Array(repeating: [], count: size)
    }

    func hash(_ key: Int) -> Int {
        return key % size
    }

    func put(_ key: Int, _ value: Int) {
        let index = hash(key)
        var bucket = buckets[index]

        for i in 0..<bucket.count {
            if bucket[i].0 == key {
                bucket[i].1 = value
                buckets[index] = bucket
                return
            }
        }

        bucket.append((key, value))
        buckets[index] = bucket
    }

    func get(_ key: Int) -> Int {
        let index = hash(key)
        let bucket = buckets[index]

        for pair in bucket {
            if pair.0 == key {
                return pair.1
            }
        }

        return -1
    }

    func remove(_ key: Int) {
        let index = hash(key)
        var bucket = buckets[index]

        for i in 0..<bucket.count {
            if bucket[i].0 == key {
                bucket.remove(at: i)
                buckets[index] = bucket
                return
            }
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
