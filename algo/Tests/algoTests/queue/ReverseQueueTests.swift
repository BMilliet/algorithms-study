import Foundation
import XCTest
@testable import algo

final class ReverseQueueTests: XCTestCase {
    func test() throws {
        var arr = QueueArray<Int>()
        arr.enqueue(1)
        arr.enqueue(2)
        arr.enqueue(3)
        arr.enqueue(4)

        let sut = ReverseQueue(arr: arr).start()

        XCTAssertEqual(sut.description, "[4, 3, 2, 1]")
    }
}
