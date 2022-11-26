import Foundation
import XCTest
@testable import algo

final class FindMiddleNodeTests: XCTestCase {
    func test() throws {
        var linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)

        let sut = FindMiddleNode(linkedList: linkedList).start()

        XCTAssertEqual(sut?.data, 2)
    }
}
