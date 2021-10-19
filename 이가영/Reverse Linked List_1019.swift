class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var list = head
        var temp: ListNode?
        var prev: ListNode?
        
        ​while(list != nil) {
            temp = list!.next
            ​list!.next = prev
            ​prev = list
            ​list = temp
        }
        ​    
        return prev
    }
}
