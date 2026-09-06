/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()

        func traverse(_ node: TreeNode?) {
            guard let node = node else { return }

            result.append(node.val)
            traverse(node.left)
            traverse(node.right)
        }
        traverse(root)
        return result
    }
}
