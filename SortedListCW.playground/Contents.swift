import UIKit

var str = "Hello, playground"
class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
    
}

func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
    var currentNode = head
    
    if head == nil || head?.data ?? 0 >= data {
        let newNode = Node(data)
        currentNode = newNode
        return currentNode
    }
    var prev : Node?
    
    while currentNode?.next != nil && (currentNode?.next!.data)! < data {
        prev = currentNode
        currentNode = currentNode?.next!
        
    }
    
    let newNode = Node(data)
    prev?.next = newNode
    newNode.next = currentNode
    
    return newNode

}
