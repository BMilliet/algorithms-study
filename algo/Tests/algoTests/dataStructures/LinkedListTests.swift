import Foundation
import XCTest
@testable import algo

final class LinkedListTests: XCTestCase {
    func testSize() throws {
        let n3 = Node(data: 3, next: nil)
        let n2 = Node(data: 2, next: n3)
        let n1 = Node(data: 1, next: n2)

        let list = LinkedList(head: n1)

        XCTAssertEqual(list.size(), 3)
    }

    func testAdd() throws {
        let n3 = Node(data: 3, next: nil)
        let n2 = Node(data: 2, next: n3)
        let n1 = Node(data: 1, next: n2)

        let list = LinkedList(head: n1)
        list.add(data: 10)

        let headValue: Int = try XCTUnwrap(list.head?.data as? Int)
        let nextValue: Int = try XCTUnwrap(list.head?.next?.data as? Int)

        XCTAssertEqual(list.size(), 4)
        XCTAssertEqual(headValue, 10)
        XCTAssertEqual(nextValue, 1)
    }

    func testToString() throws {
        let n3 = Node(data: 3, next: nil)
        let n2 = Node(data: 2, next: n3)
        let n1 = Node(data: 1, next: n2)

        let list = LinkedList(head: n1)

        XCTAssertEqual(list.toString(), "[HEAD: 1] -> [2] -> [TAIL: 3]")
    }

    // TODO: return node
    func testSearch() throws {
        let n3 = Node(data: 3, next: nil)
        let n2 = Node(data: 2, next: n3)
        let n1 = Node(data: 1, next: n2)

        let list = LinkedList(head: n1)

        XCTAssertEqual(list.search(3), 3)
    }

    func testInsert() throws {
        let n3 = Node(data: 3, next: nil)
        let n2 = Node(data: 2, next: n3)
        let n1 = Node(data: 1, next: n2)

        let list = LinkedList(head: n1)
        list.insert(data: 10, index: 2)

        XCTAssertEqual(list.toString(), "[HEAD: 1] -> [2] -> [10] -> [TAIL: 3]")
    }
}
