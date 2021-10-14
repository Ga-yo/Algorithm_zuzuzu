
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        //원래 푼 거 1576ms
        var array = [Int]()
        
        for i in nums {
            if !array.contains(i) {
                array.append(i)
            }
        }
        
        return removedDuplicate == nums ? false : true
        
        //더 효율적인 거 263ms
        if nums.count < 2 {
            return false
        }
        return Set(nums).count != nums.count

    }
}
