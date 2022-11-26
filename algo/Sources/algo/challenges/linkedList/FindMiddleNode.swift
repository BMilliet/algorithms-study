struct FindMiddleNode<T> {

    let linkedList: LinkedList<T>

    func start() -> Node<T>? {
        var current = linkedList.head
        var count = 0

        while current != nil {
            current = current?.next
            count += 1
        }

        let middle = count / 2

        return linkedList.node(at: middle)
    }
}
