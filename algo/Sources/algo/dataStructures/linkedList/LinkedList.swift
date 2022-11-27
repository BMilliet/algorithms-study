struct LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?

    var isEmpty: Bool { head == nil }

    mutating func push(_ value: T) {
        head = Node(data: value, next: head)
        if tail == nil { tail = head }
    }

    mutating func append(_ value: T) {
        guard !isEmpty else { push(value); return }
        tail?.next = Node(data: value)
        tail = tail?.next
    }

    func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0

        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }

        return currentNode
    }

    func values() -> [T] {
        var arr = [T]()
        var current = head

        while current != nil {
            if let data = current?.data { arr.append(data) }
            current = current?.next
        }

        return arr
    }

    @discardableResult
    mutating func pop() -> Node<T>? {
        defer {
            head = head?.next
            if isEmpty { tail = nil }
        }
        return head
    }

    @discardableResult
    mutating func removeLast() -> Node<T>? {
        guard head?.next != nil else { return pop() }

        var prev = head
        var current = head

        while let next = current?.next {
            prev = current
            current = next
        }

        prev?.next = nil
        tail = prev

        return current
    }

    @discardableResult
    mutating func remove(at index: Int) -> Node<T>? {
        if index == 0 { return pop() }

        let nodeBefore = node(at: index - 1)
        guard let nodeToRemove = node(at: index) else { return nil }
        nodeBefore?.next = nodeToRemove.next

        return nodeToRemove
    }

    mutating func insert(_ value: T, at index: Int) {
        if index <= 0 { push(value); return }
        guard let node = self.node(at: index - 1) else { return }
        insert(value, after: node)
    }

    @discardableResult
    mutating func insert(_ value: T, after node: Node<T>) -> Node<T>? {
        guard tail !== node else {
            append(value)
            return tail
        }

        node.next = Node(data: value, next: node.next)
        return node.next
    }

    mutating func remapNodes() {
        guard !isKnownUniquelyReferenced(&head) else { return }
        guard var oldNode = head else { return }

        head = Node(data: oldNode.data)
        var newNode = head

        while let nextOldNode = oldNode.next {
            newNode!.next = Node(data: nextOldNode.data)
            newNode = newNode?.next

            oldNode = nextOldNode
        }

        tail = newNode
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

extension LinkedList: Collection {
    public struct Index: Comparable {
        
        public var node: Node<T>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool {
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.next === right.next
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        static public func <(lhs: Index, rhs: Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            let nodes = sequence(first: lhs.node) { $0?.next }
            return nodes.contains { $0 === rhs.node }
        }
    }
    
    public var startIndex: Index {
        Index(node: head)
    }

    public var endIndex: Index {
        Index(node: tail?.next)
    }

    public func index(after i: Index) -> Index {
        Index(node: i.node?.next)
    }

    public subscript(position: Index) -> T {
        position.node!.data
    }
}
