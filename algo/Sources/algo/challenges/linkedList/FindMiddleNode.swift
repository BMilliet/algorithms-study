struct FindMiddleNode<T> {

    let linkedList: LinkedList<T>

    func start() -> Node<T>? {
        return runnerTechnique()
    }

    private func runnerTechnique() -> Node<T>? {
        var slow = linkedList.head
        var fast = linkedList.head
        
        while let nextFast = fast?.next {
            fast = nextFast.next
            slow = slow?.next
        }
        
        return slow
    }

    private func sliceList() -> Node<T>? {
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
