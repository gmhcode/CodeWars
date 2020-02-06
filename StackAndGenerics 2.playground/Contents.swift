import UIKit

var str = "Hello, playground"

class Node<T> {
    let value: T
    var next : Node?
    
    init(value: T) {
        self.value = value
    }
}


class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
        
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
    
}

struct User {
    let name : String
    let userName : String
}

let me = User(name: "Greg", userName: "GregHughes")
let you = User(name: "You", userName: "@You")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)


let firstUserPop = usersStack.pop()

print(firstUserPop?.name ?? "")


//let stack = Stack()
//stack.push(1)
//stack.push(2)
//stack.push(3)


//stack.peek()
//
//let firstpop = stack.pop()//should return 3
//stack.peek()
//let secondPop = stack.pop()
//let thirdPop = stack.pop()
//let finalPop = stack.pop()//should be nil
