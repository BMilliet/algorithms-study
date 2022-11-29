struct RemoveOccurrences<T: Equatable> {

    let linkedList: LinkedList<T>
    let value: T

    func start() -> LinkedList<T> {
        var list = linkedList

        while let _ = list.head, list.head?.data == value {
            list.head = list.head?.next
        }

        var prev = list.head
        var current = list.head?.next

        while current != nil {
            if current?.data == value {
                prev?.next = current?.next
                current = prev?.next
            } else {
                prev = current
                current = current?.next
            }
        }

        list.tail = prev

       return list
    }
}
