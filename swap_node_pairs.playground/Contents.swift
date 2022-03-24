import UIKit

var greeting = "Hello, playground"
//Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)
//
//
//
//Example 1:
//
//
//Input: head = [1,2,3,4]
//Output: [2,1,4,3]
//Example 2:
//
//Input: head = []
//Output: []
//Example 3:
//
//Input: head = [1]
//Output: [1]
//
//
//Constraints:
//
//The number of nodes in the list is in the range [0, 100].
//0 <= Node.val <= 100


func traverse(head: ListNode?) {
    
    if head == nil {
        return
    }
    print(head!.val)
    traverse(head: head?.next)
    
}

   public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head != nil, let two = head?.next else {return head}
        
//        var current: ListNode? = head
        
        
        func swap(previous: ListNode?, current: ListNode?, next: ListNode?) -> ListNode? {
            
            
            if current?.next == nil {
                print("Hit")
                return previous
            }
            let one = previous
            let three = current
            let four = current?.next
            
            three?.next = four?.next
            four?.next = three
            one?.next  = four

            return swap(previous: three, current: three?.next, next: current?.next?.next)

        }
        
        head?.next = two.next
        two.next = head
        
        swap(previous: two.next, current: two.next?.next, next: two.next?.next)

        return two
        
    }
}



let head = ListNode(1, ListNode(2, ListNode(3, nil)))
Solution().swapPairs(head)
print(traverse(head: head))
