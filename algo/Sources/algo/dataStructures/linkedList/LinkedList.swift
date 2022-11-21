final class LinkedList<T> {
    var head: Node<T>?

    init(head: Node<T>? = nil) {
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

    func add(data: T) {
        let newNode = Node(data: data, next: head)
        head = newNode
    }

    func insert(data: T, index: Int) {
        if index == 0 {
            add(data: data)
        }

        if index < 0 {
            print("Invalid index")
            return
        }

        var current = head?.next
        var count = 1

        var previousNode = head

        while current != nil {
            if count == index {
                let newNode = Node(data: data)
                newNode.next = current
                previousNode?.next = newNode
                return
            }

            count += 1
            previousNode = current
            current = current?.next
        }
    }

    func toString() -> String {
        var current = head

        var stringList = [stringSection(head?.data, prefix: "HEAD: ")]
        current = head?.next

        while current != nil {
            if current?.next == nil {
                stringList.append(stringSection(current?.data, prefix: "TAIL: "))
            } else {
                stringList.append(stringSection(current?.data))
            }

            current = current?.next
        }

        return stringList.joined(separator: " -> ")
    }

    private func stringSection(_ value: T?, prefix: String = "") -> String {
        if let value = value {
            return "[\(prefix)\(value)]"
        } else {
            return "[nil]"
        }
    }

    func search<T: Equatable>(_ value: T) -> T? {
        var current = head

        while (current != nil) {

            if let currentData = current?.data as? (any Equatable) as? T {
                if currentData == value {
                    return currentData
                } else {
                    current = current?.next
                }
            } else {
                current = current?.next
            }
        }

        return nil
    }
}
