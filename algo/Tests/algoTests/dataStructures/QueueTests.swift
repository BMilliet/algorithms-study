import Foundation
import XCTest
@testable import algo

final class QueueTests: XCTestCase {
    func testQueueArray() throws {
        var queue = QueueArray<Int>()
        XCTAssertTrue(queue.isEmpty)

        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        queue.enqueue(4)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.peek, 1)

        queue.dequeue()

        XCTAssertEqual(queue.peek, 2)
    }

    func testQueueLinkedList() throws {
        var queue = QueueLinkedList<Int>()
        XCTAssertTrue(queue.isEmpty)

        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        queue.enqueue(4)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.peek, 1)

        queue.dequeue()

        XCTAssertEqual(queue.peek, 2)
    }
}
