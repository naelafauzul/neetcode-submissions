class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0

        for price in prices {
            minPrice = min(minPrice, price)

            let profit = price - minPrice
            maxProfit = max(profit, maxProfit)
        }

        return maxProfit
    }
}
