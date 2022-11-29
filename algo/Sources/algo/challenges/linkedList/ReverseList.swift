struct ReverseList<T> {

    let linkedList: LinkedList<T>

    func start() -> LinkedList<T> {
        var list = linkedList

        list.tail = list.head
        var prev = list.head
        var current = list.head?.next
        prev?.next = nil

        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }

        list.head = prev

        return list
    }

    private func usingArray() -> LinkedList<T> {
        var newList = LinkedList<T>()

        var current = linkedList.head

        while current != nil {
            if let data = current?.data {
                newList.push(data)
            }
            current = current?.next
        }

        newList.remapNodes()

        return newList
    }
}
