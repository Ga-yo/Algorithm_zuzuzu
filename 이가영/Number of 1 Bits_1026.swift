class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        let binary = String(n, radix: 2)
        
        for i in binary {
            if i == "1" { count += 1}
        }
        
        return count
    }
}
