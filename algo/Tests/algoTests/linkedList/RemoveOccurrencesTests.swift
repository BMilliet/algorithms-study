import Foundation
import XCTest
@testable import algo

final class RemoveOccurrencesTests: XCTestCase {
    func test() throws {
        var linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        linkedList.append(4)
        linkedList.append(4)
        linkedList.append(4)

        let sut = RemoveOccurrences(linkedList: linkedList, value: 4).start().values()

        XCTAssertEqual(sut, [1, 2, 3])

        var linkedList2 = LinkedList<Int>()
        linkedList2.append(4)
        linkedList2.append(1)
        linkedList2.append(2)
        linkedList2.append(4)
        linkedList2.append(2)
        linkedList2.append(3)
        linkedList2.append(4)

        let sut2 = RemoveOccurrences(linkedList: linkedList2, value: 2).start().values()

        XCTAssertEqual(sut2, [4, 1, 4, 3, 4])
    }
}
