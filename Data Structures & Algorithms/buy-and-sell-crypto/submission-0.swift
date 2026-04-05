class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var maxProfit = 0

        for right in 1..<prices.count {
            if prices[right] > prices[left] {
                let profit = prices[right] - prices[left]
                maxProfit = max(maxProfit, profit)
            } else {
                left = right
            }
        }
        return maxProfit
    }
}
