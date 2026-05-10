class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map : [String: [String]] = [:]

        for str in strs {
            let key = String(str.sorted())

            if map[key] == nil {
                map[key] = []
            }

            map[key]?.append(str)
        }

        return Array(map.values)
    }
}
