import Foundation
import XCTest
@testable import algo

final class DequeTests: XCTestCase {
    func testDeque() throws {
        let sut = DequeImpl<Int>(arr: DoublyLinkedList())
        XCTAssertTrue(sut.isEmpty)

        sut.enqueue(1, to: .front)
        XCTAssertEqual(sut.peek(from: .front), 1)
        sut.enqueue(2, to: .front)
        XCTAssertEqual(sut.peek(from: .front), 2)
        sut.enqueue(3, to: .front)
        XCTAssertEqual(sut.peek(from: .front), 3)
        sut.enqueue(4, to: .back)
        XCTAssertEqual(sut.peek(from: .back), 4)

        sut.dequeue(from: .front)
        XCTAssertEqual(sut.peek(from: .front), 2)

        sut.dequeue(from: .back)
        XCTAssertEqual(sut.peek(from: .back), 1)
    }
}
