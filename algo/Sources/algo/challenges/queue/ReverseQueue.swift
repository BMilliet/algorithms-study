
final class ReverseQueue<T> {
    var arr: QueueArray<T>

    init(arr: QueueArray<T>) {
        self.arr = arr
    }

    func start() -> QueueArray<T> {
        var stack = Stack<T>()

        while let e = arr.dequeue() {
            stack.push(e)
        }

        while let e = stack.pop() {
            arr.enqueue(e)
        }

        return arr
    }
}
