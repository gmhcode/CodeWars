//
//  ViewController.swift
//  mergeLinkedList
//
//  Created by Greg Hughes on 3/17/22.
//

import UIKit
//import XCTest

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//       mergeLists(listOne: linkedListRoot, listTwo: linkedListRoot2)
//        print(flatten(<#T##root: TreeNode?##TreeNode?#>))
        // Do any additional setup after loading the view.
    }
//    Given the root of a binary tree, flatten the tree into a "linked list":
//
//    The "linked list" should use the same TreeNode class where the right child pointer points to the next node in the list and the left child pointer is always null.
//    The "linked list" should be in the same order as a pre-order traversal of the binary tree.
//
//
//    Example 1:
//
//
//    Input: root = [1,2,5,3,4,null,6]
//    Output: [1,null,2,null,3,null,4,null,5,null,6]
    public class TreeNode {
        internal init(val: Int, left: ViewController.TreeNode? = nil, right: ViewController.TreeNode? = nil) {
            self.val = val
            self.left = left
            self.right = right
        }
        
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    }
    //works
//    func flatten(_ root: TreeNode?) {
//         guard let root = root else { return }
//
//         if let left = root.left {
//             flatten(left)
//         }
//
//         if let right = root.right {
//             flatten(right)
//         }
//
//         let right = root.right  // 6
//
//        //root.right might be nil
//         if let l = root.left {
//
//             root.right = l
//             root.left = nil
//
//             let tail = getRightTail(root.right)
//             tail?.right = right
//         }
//     }
//
//     func getRightTail(_ root: TreeNode?) -> TreeNode? {
//         guard let root = root else { return nil }
//
//         var right: TreeNode? = root
//         while right?.right != nil {
//             right = right?.right
//         }
//         return right
//     }
    //works
    func flatten(_ root: TreeNode?) {
             helper(root)
       
        }
         private func helper(_ node: TreeNode?) -> TreeNode? {
            var node = node
            if node == nil {
                return node
            }
            if node!.left == nil && node!.right == nil {
                return node
            }
            
            let left = node!.left, right = node!.right
            node!.left = nil
            
            if let left = left {
                node!.right = left
                node = helper(left)
            }
            if let right = right {
                node!.right = right
                node = helper(right)
            }
            
            return node
        }
    
    
    //Doesnt work
//    func flatten(_ root: TreeNode?) {
//        func traverse(node: TreeNode?) -> TreeNode? {
//            if node == nil { return nil }
//
//            let leftTail = traverse(node: node?.left)
//            let rightTail = traverse(node: node?.right)
//
//            if leftTail != nil {
//                leftTail?.right = rightTail
//                node?.right = node?.left
//                node?.left = nil
//
//            }
//            let last = rightTail != nil ? rightTail : leftTail != nil ? leftTail : root
//            return last
//
//        }
//
//        traverse(node: root)
//
//    }
    
    
    func mergeLists(listOne: LinkedNode<Int>?, listTwo: LinkedNode<Int>?) {
       
        
        var list1 = listOne
        var list2 = listTwo
        var currentNode = list1!.value > list2!.value ? list2 : list1
        
        if currentNode?.next?.value == list1?.next?.value {
            list1 = list1?.next
        } else {
            list2 = list2?.next
        }
        
        while list1?.value != nil && list2?.value != nil { // 5

               if list1!.value < list2!.value { // 5
                   
                   currentNode?.next = list1
                   list1 = list1?.next
                   
               } else {
                   
                   currentNode?.next = list2
                   list2 = list2?.next
                   
               }

               currentNode = currentNode?.next // 6
           }

        listTwo?.printList()
    }
    

}

class LinkedNode<T> {
    var next: LinkedNode<T>?
    var value: T

    init(next: LinkedNode<T>?, value: T) {
        self.next = next
        self.value = value
    }

    func printList() {

        var currentNode = self
        print(value)
        while currentNode.next != nil {
            currentNode = currentNode.next!
            print(currentNode.value)
        }
    }

}

let linkedNode5 = LinkedNode(next: nil, value: 11)
let linkedNode4 = LinkedNode(next: linkedNode5, value: 7)
let linkedNode3 = LinkedNode(next: linkedNode4, value: 5)
let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)

let linkedNode7 = LinkedNode(next: nil, value: 10)
let linkedNode6 = LinkedNode(next: linkedNode7, value: 9)
let linkedNode55 = LinkedNode(next: linkedNode6, value: 8)
let linkedNode44 = LinkedNode(next: linkedNode55, value: 6)
let linkedNode33 = LinkedNode(next: linkedNode44, value: 4)
let linkedNode22 = LinkedNode(next: linkedNode33, value: 3)
let linkedListRoot2 = LinkedNode(next: linkedNode22, value: 1)
func setupList() {
    
}
