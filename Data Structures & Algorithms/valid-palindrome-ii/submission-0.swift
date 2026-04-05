class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let arr = Array(s)
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            if arr[left] != arr[right] {
                return isPalindrome(arr, left + 1, right) ||
                       isPalindrome(arr, left, right - 1)
            }
            left += 1
            right -= 1
        }
        
        return true
    }
    
    func isPalindrome(_ arr: [Character], _ l: Int, _ r: Int) -> Bool {
        var left = l
        var right = r
        
        while left < right {
            if arr[left] != arr[right] {
                return false
            }
            left += 1
            right -= 1
        }
        
        return true
    }
}