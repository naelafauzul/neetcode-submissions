class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result : [String] = []

        for i in 0..<words.count {
            for j in 0..<words.count {
                if words[i] != words[j] && words[j].contains(words[i]) {
                    result.append(words[i])
                    break
                }
            }
        }
        return result
    }
}
