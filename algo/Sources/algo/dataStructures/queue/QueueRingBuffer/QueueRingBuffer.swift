public struct QueueRingBuffer<T>: Queue {

    private var ringBuffer: RingBuffer<T>

    public init(count: Int) {
        ringBuffer = RingBuffer<T>(count: count)
    }

    public var isEmpty: Bool {
        ringBuffer.isEmpty
    }

    public var peek: T? {
        ringBuffer.first
    }

    @discardableResult
    public mutating func enqueue(_ element: T) -> Bool {
        ringBuffer.write(element)
    }

    @discardableResult
    public mutating func dequeue() -> T? {
        ringBuffer.read()
    }
}

extension QueueRingBuffer: CustomStringConvertible {
    public var description: String {
        String(describing: ringBuffer)
    }
}
