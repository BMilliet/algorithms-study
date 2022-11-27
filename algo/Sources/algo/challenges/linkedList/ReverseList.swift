struct ReverseList<T> {

    let linkedList: LinkedList<T>

    func start() -> LinkedList<T> {
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
