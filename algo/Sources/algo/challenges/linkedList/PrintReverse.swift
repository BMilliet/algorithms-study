struct PrintReverse<T> {

    let linkedList: LinkedList<T>

    func start() -> [T] {
        var arr = [T]()
        retrieveValue(linkedList.head, arr: &arr)
        return arr
    }

    private func retrieveValue(_ node: Node<T>?, arr: inout [T]) {
        guard let node = node else { return }
        retrieveValue(node.next, arr: &arr)
        arr.append(node.data)
    }
}
