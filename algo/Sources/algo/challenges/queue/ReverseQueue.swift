
final class ReverseQueue<T> {
    var arr: QueueArray<T>

    init(arr: QueueArray<T>) {
        self.arr = arr
    }

    func start() -> QueueArray<T> {
        let size = arr.size
        var stack = Stack<T>()
        var newArr = QueueArray<T>()

        for _ in 1...size {
            guard let e = arr.dequeue() else { break }
            stack.push(e)
        }

        for _ in 1...size {
            guard let e = stack.pop() else { break }
            newArr.enqueue(e)
        }

        return newArr
    }
}
