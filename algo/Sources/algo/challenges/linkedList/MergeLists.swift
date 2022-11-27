struct MergeLists<T: Comparable> {

    let list1: LinkedList<T>
    let list2: LinkedList<T>

    func start() -> LinkedList<T> {

        var arr = (list1.values() + list2.values()).sorted(by: { $0 > $1 })
        var list = LinkedList<T>()

        arr.forEach {  list.push($0) }

        return list
    }
}
