import UIKit

var str = "Hello, playground"

class Node {
    let value : Int
    var next : Node?

    init(value : Int, next : Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {

    var head : Node?


    func displayListItems() {
        print("Here is what is inside of your list:")
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    // #1 insert
    func insert(value: Int){
        //empty list
        if head == nil {
            head = Node(value: 1, next: nil)
            return
        }
        var current = head
        // setting current to the end of the linked list
        while current?.next != nil {
            current = current?.next
        }

        current?.next = Node(value: value, next: nil)

    }


    //#2 Delete
    func delete(value: Int) {
        if head?.value == value{
            head = head?.next
        }
        var prev: Node?
        var current = head

        //This iterates through the list
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
    }

    //Special Insert
    //1 -> 2 -> 4 -> 5 -> nil
    func insertInOrder(value:Int) {
        if head == nil || head?.value ?? 1 >= value {
            let newNode = Node(value: value, next: head)
            print("hit")
            head = newNode
            return
        }
        var currentNode: Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? 1 < value{
            currentNode = currentNode?.next
        }

        currentNode?.next = Node(value: value, next: currentNode?.next)

    }

    func setupDummyNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }

}



func printList(head: Node?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}



func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?

    while currentNode != nil {
//        print(currentNode?.value)
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode


        currentNode = next
    }
    return prev
}


let ll = LinkedList()



let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)
printList(head:oneNode)
let myReversedList = reverseList(head: oneNode)
printList(head: myReversedList) //needs to print out 3,2,1

ll.insert(value: 1)
ll.insert(value: 2)
ll.insert(value: 3)
ll.insert(value: 6)
ll.insertInOrder(value: 4)

//printList(head: reverseList(head: ll.head))

//ll.delete(value: 2)
//ll.displayListItems()
print(Date())


