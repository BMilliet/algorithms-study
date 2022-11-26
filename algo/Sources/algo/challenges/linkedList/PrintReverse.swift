struct PrintReverse<T> {

    let linkedList: LinkedList<T>

    func start() -> [T] {
        return linkedList.reversed()
    }
}
