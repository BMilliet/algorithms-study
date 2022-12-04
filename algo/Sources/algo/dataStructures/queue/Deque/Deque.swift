enum Direction {
    case front
    case back
}

protocol Deque {
    associatedtype Element
    var isEmpty: Bool { get }
    func peek(from direction: Direction) -> Element?
    mutating func enqueue(_ element: Element, to direction: Direction) -> Bool
    mutating func dequeue(from direction: Direction) -> Element?
}

final class DequeImpl<T>: Deque {
    typealias Element = T

    var arr: DoublyLinkedList<Element>

    var isEmpty: Bool {
        arr.isEmpty
    }
    
    func peek(from direction: Direction) -> Element? {
        return direction == .back ? arr.last?.value : arr.first?.value
    }

    @discardableResult
    func enqueue(_ element: Element, to direction: Direction) -> Bool {
        direction == .back ?
        arr.append(element) :
        arr.prepend(element)

        return true
    }

    @discardableResult
    func dequeue(from direction: Direction) -> Element? {

        var element: Element?

        if direction == .back {
            guard let last = arr.last else { return nil }
            element = arr.remove(last)
        } else {
            guard let first = arr.first else { return nil }
            element = arr.remove(first)
        }

        return element
    }

    init(arr: DoublyLinkedList<Element>) {
        self.arr = arr
    }
}
