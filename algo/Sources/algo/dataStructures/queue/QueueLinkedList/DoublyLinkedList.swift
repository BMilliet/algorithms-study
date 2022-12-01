public class DoubleNode<T> {
    public var value: T
    public var next: DoubleNode<T>?
    public var previous: DoubleNode<T>?

    public init(value: T) {
        self.value = value
    }
}

extension DoubleNode: CustomStringConvertible {

    public var description: String {
        String(describing: value)
    }
}

public class DoublyLinkedList<T> {

    private var head: DoubleNode<T>?
    private var tail: DoubleNode<T>?

    public init() { }

    public var isEmpty: Bool {
        head == nil
    }

    public var first: DoubleNode<T>? {
        head
    }

    public func append(_ value: T) {
        let newNode = DoubleNode(value: value)

        guard let tailNode = tail else {
            head = newNode
            tail = newNode
            return
        }

        newNode.previous = tailNode
        tailNode.next = newNode
        tail = newNode
    }

    public func remove(_ node: DoubleNode<T>) -> T {
        let prev = node.previous
        let next = node.next

        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }

        next?.previous = prev

        if next == nil {
            tail = prev
        }

        node.previous = nil
        node.next = nil

        return node.value
    }
}

extension DoublyLinkedList: CustomStringConvertible {

    public var description: String {
        var string = ""
        var current = head
        while let node = current {
            string.append("\(node.value) -> ")
            current = node.next
        }
        return string + "end"
    }
}

public class LinkedListIterator<T>: IteratorProtocol {

    private var current: DoubleNode<T>?

    init(node: DoubleNode<T>?) {
        current = node
    }

    public func next() -> DoubleNode<T>? {
        defer { current = current?.next }
        return current
    }
}

extension DoublyLinkedList: Sequence {
    public func makeIterator() -> LinkedListIterator<T> {
        LinkedListIterator(node: head)
    }
}
