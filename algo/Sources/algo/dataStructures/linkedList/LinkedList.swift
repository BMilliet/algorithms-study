final class LinkedList {
    var head: Node?

    init(head: Node? = nil) {
        self.head = head
    }

    func empty() -> Bool {
        return head == nil
    }

    func size() -> Int {
        var current = head
        var count = 0

        while current != nil {
            count += 1
            current = current?.next
        }

        return count
    }

    func add(data: Any) {
        let newNode = Node(data: data, next: head)
        head = newNode
    }

    func toString() -> String {
        var current = head

        var stringList = ["[HEAD: \(head?.data ?? "nil")]"]

        while current != nil {
            if current?.next == nil {
                stringList.append("[TAIL: \(current?.data ?? "nil")]")
            } else {
                stringList.append("[\(current?.data ?? "nil")]")
            }

            current = current?.next
        }

        return stringList.joined(separator: " -> ")
    }
}
