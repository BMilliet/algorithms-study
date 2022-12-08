import Foundation
import XCTest
@testable import algo

final class TreeLevelStringTests: XCTestCase {
    func test() throws {
        let tree = TreeFactory().makeNumbersTree2()
        let sut = TreeLevelString(tree: tree).start()

        let expected = [
            [15],
            [1, 17, 20],
            [1, 5, 0, 2, 5, 7],
            [42, 40]
        ]

        XCTAssertEqual(sut, expected)
    }
}
