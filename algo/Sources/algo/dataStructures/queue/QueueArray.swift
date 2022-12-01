struct QueueArray<T>: Queue {
    private var array = [T]()

    var isEmpty: Bool {
        array.isEmpty
    }

    var peek: T? {
        array.first
    }

    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }

    @discardableResult
    mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String {
        String(describing: array)
    }
}
