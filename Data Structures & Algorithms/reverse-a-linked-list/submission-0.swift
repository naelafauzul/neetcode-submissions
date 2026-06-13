/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

// 0 -> 1 -> 2 -> 3 -> nil
// nil <- 0 <- 1 <- 2 <- 3

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev : ListNode? = nil
        var current = head

        while current != nil {
            let next = current?.next

            current?.next = prev

            prev = current
            current = next
        }

        return prev
    }
}
