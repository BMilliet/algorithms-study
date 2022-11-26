import Foundation
import XCTest
@testable import algo

final class LinkedListTests: XCTestCase {
    func testPushMultipleValues() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)

        let headValue: Int = try XCTUnwrap(list.head?.data as? Int)
        let tailValue: Int = try XCTUnwrap(list.tail?.data as? Int)

        XCTAssertEqual(headValue, 3)
        XCTAssertEqual(tailValue, 1)
    }

    func testPushSingleValue() throws {
        var list = LinkedList<Int>()
        list.push(1)

        let headValue: Int = try XCTUnwrap(list.head?.data as? Int)
        let tailValue: Int = try XCTUnwrap(list.tail?.data as? Int)

        XCTAssertEqual(headValue, 1)
        XCTAssertEqual(tailValue, 1)
    }

    func testAppendMultipleValues() throws {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)

        let headValue: Int = try XCTUnwrap(list.head?.data as? Int)
        let tailValue: Int = try XCTUnwrap(list.tail?.data as? Int)

        XCTAssertEqual(headValue, 1)
        XCTAssertEqual(tailValue, 3)
    }

    func testAppendSingleValue() throws {
        var list = LinkedList<Int>()
        list.append(1)

        let headValue: Int = try XCTUnwrap(list.head?.data as? Int)
        let tailValue: Int = try XCTUnwrap(list.tail?.data as? Int)

        XCTAssertEqual(headValue, 1)
        XCTAssertEqual(tailValue, 1)
    }

    func testInset() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        list.insert(8, at: 2)
        list.insert(9, at: 5)

        XCTAssertEqual(list.node(at: 2)?.data, 8)
        XCTAssertEqual(list.node(at: 5)?.data, 9)
        XCTAssertEqual(list.tail?.data, 9)
        
        list.insert(10, at: 0)

        XCTAssertEqual(list.head?.data, 10)
    }

    func testPop() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        let previousHead = list.head
        let removed = list.pop()

        XCTAssertEqual(list.head?.data, 3)
        XCTAssertEqual(removed?.data, previousHead?.data)
    }

    func testRemoveLast() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        let previousTail = list.tail
        let removed = list.removeLast()

        XCTAssertEqual(list.tail?.data, 2)
        XCTAssertEqual(removed?.data, previousTail?.data)
    }

    func testRemoveAtIndex() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        let nodeAtIndex = list.node(at: 2)
        let removed = list.remove(at: 2)

        XCTAssertEqual(removed?.data, nodeAtIndex?.data)

        list.remove(at: 0)
        XCTAssertEqual(list.head?.data, 3)
    }

    func testCollection() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        XCTAssertEqual(list.firstIndex(of: 3)?.node?.data, 3)
        XCTAssertEqual(list.startIndex.node?.data, 4)
        XCTAssertNil(list.endIndex.node?.data)
        XCTAssertEqual(list.first, 4)
        XCTAssertEqual(list.reduce(0, +), 10)
    }

    func testCOW() throws {
        var list = LinkedList<Int>()
        list.push(1)
        list.push(2)
        list.push(3)
        list.push(4)

        var list2 = list
        list2.remapNodes()

        list2.append(10)
        list2.remove(at: 3)

        XCTAssertTrue(isKnownUniquelyReferenced(&list.head))
        XCTAssertTrue(isKnownUniquelyReferenced(&list2.head))
    }
}
