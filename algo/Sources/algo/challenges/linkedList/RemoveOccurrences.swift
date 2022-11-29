struct RemoveOccurrences<T: Equatable> {

    let linkedList: LinkedList<T>
    let value: T

    func start() -> LinkedList<T> {
        var list = linkedList
        
        while let head = list.head, list.head?.data == value {
            list.head = list.head?.next
        }

        var prev = list.head
        var current = list.head?.next

        while let currentNode = current {
            guard currentNode.data != value else {
                prev?.next = currentNode.next
                current = prev?.next
                continue
            }
            prev = current
            current = current?.next
        }

        list.tail = prev
        return list
    }
}
