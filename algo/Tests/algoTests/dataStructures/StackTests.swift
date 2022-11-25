import Foundation
import XCTest
@testable import algo

final class StackTests: XCTestCase {
    func testPush() throws {
        var stack = Stack(storage: [1,2,3])
        stack.push(4)

        XCTAssertEqual(stack.content.first, 4)
        XCTAssertEqual(stack.content, [4,3,2,1])
    }

    func testPop() throws {
        var stack = Stack(storage: [1,2,3])
        stack.pop()

        XCTAssertEqual(stack.content.first, 2)
        XCTAssertEqual(stack.content, [2,1])
    }

    func testPeek() throws {
        var stack = Stack(storage: [1,2,3])

        XCTAssertEqual(stack.peek(), 3)

        stack.pop()
        XCTAssertEqual(stack.peek(), 2)

        stack.pop()
        XCTAssertEqual(stack.peek(), 1)
    }

    func testEmpty() throws {
        let stack = Stack<Int>()

        XCTAssertTrue(stack.isEmpty)
    }
}
