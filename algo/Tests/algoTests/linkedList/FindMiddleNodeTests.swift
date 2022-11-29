import Foundation
import XCTest
@testable import algo

final class FindMiddleNodeTests: XCTestCase {
    func test() throws {
        var linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        linkedList.append(4)
        linkedList.append(5)
        linkedList.append(6)
        linkedList.append(7)
        linkedList.append(8)
        linkedList.append(9)
        linkedList.append(10)

        let sut = FindMiddleNode(linkedList: linkedList).start()

        XCTAssertEqual(sut?.data, 6)
    }
}
