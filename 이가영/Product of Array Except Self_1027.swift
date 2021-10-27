class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        //Time Limit Exceeded
//         var answer = [Int]()
        
//         for i in nums {
//             var arr = nums
//             arr.remove(at: arr.firstIndex(of: i)!)
//             answer.append(arr.reduce(1, *))
//         }
        
//         return answer
        
        var result = Array(repeating: 1, count: nums.count)
        
        var left = 1
        for i in 0..<nums.count{
            result[i] = left
            left = nums[i] * left
        }
        
        var right = 1
        for i in (0..<nums.count).reversed(){
            result[i] *= right
            right = nums[i] * right
        }
        
        return result
        
    }
}
