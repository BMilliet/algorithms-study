import Foundation
import XCTest
@testable import algo

final class ReverseListTests: XCTestCase {
    func test() throws {
        var linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)

        var sut = ReverseList(linkedList: linkedList).start().values()

        XCTAssertEqual(sut, [3, 2, 1])
    }
}
