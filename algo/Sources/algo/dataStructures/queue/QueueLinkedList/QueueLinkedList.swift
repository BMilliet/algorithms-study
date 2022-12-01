public class QueueLinkedList<T>: Queue {
    private var list = DoublyLinkedList<T>()
    public init() {}

    @discardableResult
    public func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }

    @discardableResult
    public func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else {
            return nil
        }
        return list.remove(element)
    }

    public var peek: T? {
        list.first?.value
    }

    public var isEmpty: Bool {
        list.isEmpty
    }
}

extension QueueLinkedList: CustomStringConvertible {
    public var description: String {
        String(describing: list)
    }
}
