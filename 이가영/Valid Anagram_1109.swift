class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        //효율성 좋은 코드,,  24 ms
        func isAnagram(_ s: String, _ t: String) -> Bool {
            if s.count != t.count {
                return false
            }
            
            if countElement(s) == countElement(t) {
                return true
            }
            return false
        }
        
        func countElement(_ str: String) -> Dictionary<String, Int> {
            var strDic: [String : Int] = [:]
            
            for i in str {
                let key = String(i)
                if let value = strDic[key] {
                    strDic[key] = value + 1
                }else {
                    strDic[key] = 1
                }
            }
            return strDic
        }
        
        //내가 푼 효율성 없는 코드,, 1644 ms
        var long = s.count > t.count ? s : t
        var short = s.count > t.count ? t : s
        
        for i in long {
            if short.contains(i) {
                short.remove(at: short.firstIndex(of: i)!)
                long.remove(at: long.firstIndex(of: i)!)
            }
        }

        return short.isEmpty && long.isEmpty ? true : false
        
        // String(Set(long)).sorted() == String(Set(short)).sorted() ? true : false
    }
}
