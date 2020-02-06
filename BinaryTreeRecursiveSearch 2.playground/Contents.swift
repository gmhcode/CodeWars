import UIKit

var str = "Hello, playground"

//1.
//      10
//     /  \
//    5   14
//   /   /  \
//  1   11   20
//
//

//2.
class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)



//see if this value is in this tree
func search(node:Node?, searchValue: Int) -> Bool {
    print(node?.value)
    if node == nil { return false }
    
    
    if node?.value == searchValue {
        return true
    } else {
        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
    }
    
    
    //// If left Node is always less than current node and right node is always more than current node, vv this is better
//    else if searchValue < node!.value {
//        return search(node: node?.leftChild, searchValue: searchValue)
//    }else {
//        return search(node: node?.rightChild, searchValue: searchValue)
//    }
}

search(node: tenRootNode, searchValue: 0)


