import Foundation
import XCTest
@testable import algo

final class MergeListsTests: XCTestCase {
    func test() throws {
        var list1 = LinkedList<Int>()
        list1.append(1)
        list1.append(2)
        list1.append(3)

        var list2 = LinkedList<Int>()
        list2.append(-1)
        list2.append(4)
        list2.append(5)

        let sut = MergeLists(list1: list1, list2: list2).start().values()

        XCTAssertEqual(sut, [-1, 1, 2, 3, 4, 5])
    }
}
