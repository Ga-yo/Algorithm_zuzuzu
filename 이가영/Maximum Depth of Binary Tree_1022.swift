class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
    //첫 시도
//         while(rTree?.right?.val != nil || lTree?.left?.val != nil) {
//             count += 1
            
//             guard let rightNode = rTree!.right else { continue }
//             rTree = rightNode
            
//             guard let leftNode = lTree!.left else { continue }
//             lTree = leftNode
//         }
    //두번째 시도
        
//         if root?.right?.val == nil && root?.left?.val == nil {
//             return count
//         }
        
//         count += 1
         // guard let leftNode = root!.left else { return count }
//             maxDepth(root!.left)
        
//         guard let rightNode = root!.right else { return count }
//             maxDepth(root!.right)
        
//         return count
        
        if root == nil { return 0 }
        
        let left = maxDepth(root!.left)
        let right = maxDepth(root!.right)
        
        return max(left, right) + 1
    }
    
}
