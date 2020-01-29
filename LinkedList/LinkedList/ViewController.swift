//
//  ViewController.swift
//  LinkedList
//
//  Created by Greg Hughes on 1/29/20.
//  Copyright © 2020 Greg Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ll = LinkedList()



        let threeNode = Node(value: 3, next: nil)
        let twoNode = Node(value: 2, next: threeNode)
        let oneNode = Node(value: 1, next: twoNode)
        printList(head:oneNode)
        let myReversedList = reverseList(head: oneNode)
        printList(head: myReversedList) //needs to print out 3,2,1
    }


}


class Node {
    var value : Int
    var next : Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head : Node?
    
    
    func displayListItems() {
        var current = head
        
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            
            current = current?.next
            
        }
        current?.next = Node(value: value, next: nil)
    }
    
    func delete(value: Int){
        if head == nil {return}
        if head?.next == nil {
            head = nil
        }
        if head?.value == value && head?.next != nil {
            head = head?.next
        }
        var prev : Node?
        var current = head
        
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
    }
    
    func insertInOrder(value:Int){
        guard head != nil else { return }
        
        if head != nil || head?.value ?? 1 >= value {
            let newNode = Node(value: value, next: head)
        }
        var current = head
        while  current?.next != nil && current?.next?.value ?? 0 < value {
            current = current?.next
        }
        current?.next = Node(value: value, next: current?.next)
        
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
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        
        
        currentNode = next
    }
    return prev
}
