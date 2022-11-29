struct MergeLists<T: Comparable> {

    let list1: LinkedList<T>
    let list2: LinkedList<T>

    func start() -> LinkedList<T> {
        return arraySolution()
    }
    
    private func arraySolution() -> LinkedList<T> {
        var arr = (list1.values() + list2.values()).sorted(by: { $0 > $1 })
        var list = LinkedList<T>()

        arr.forEach {  list.push($0) }

        return list
    }

    private func mergeSort() -> LinkedList<T> {
        guard !list1.isEmpty else { return list2 }
        guard !list2.isEmpty else { return list1 }
        
        var newHead: Node<T>?
        var tail: Node<T>?
        var currentLeft = list1.head
        var currentRight = list2.head
        
        if let leftNode = currentLeft, let rightNode = currentRight {
            if leftNode.data < rightNode.data {
                newHead = leftNode
                currentLeft = leftNode.next
            } else {
                newHead = rightNode
                currentRight = rightNode.next
            }
            tail = newHead
        }
        
        while let leftNode = currentLeft, let rightNode = currentRight {
            if leftNode.data < rightNode.data {
                tail?.next = leftNode
                currentLeft = leftNode.next
            } else {
                tail?.next = rightNode
                currentRight = rightNode.next
            }
            tail = tail?.next
        }
        
        if let leftNodes = currentLeft { tail?.next = leftNodes }
        if let rightNodes = currentRight { tail?.next = rightNodes }
        
        var list = LinkedList<T>()
        list.head = newHead
        list.tail = {
            while let next = tail?.next {
                tail = next
            }
            return tail
        }()
        return list
    }
}
