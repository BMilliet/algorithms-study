import Foundation
import XCTest
@testable import algo

final class PrintReverseTests: XCTestCase {
    func test() throws {
        var linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)

        let sut = PrintReverse(linkedList: linkedList).start()
        let expected = [3,2,1]

        XCTAssertEqual(sut, expected)
    }
}
