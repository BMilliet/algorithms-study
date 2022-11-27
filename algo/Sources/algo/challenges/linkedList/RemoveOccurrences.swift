struct RemoveOccurrences<T: Equatable> {

    let linkedList: LinkedList<T>

    func start() -> LinkedList<T> {

        var list = LinkedList<T>()

        var index = 0
        var current = linkedList.head
        var duplicated = [T]()
        var values = [T]()

        while current != nil {
            if let data = current?.data {
                if values.contains(data) {
                    duplicated.append(data)
                } else {
                    values.append(data)
                }
            }
            index += 1
            current = current?.next
        }

        values.forEach {
            if !duplicated.contains($0) {
                list.append($0)
            }
        }

        return list
    }
}
