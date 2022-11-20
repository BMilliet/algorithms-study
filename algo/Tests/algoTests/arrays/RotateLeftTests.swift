import Foundation
import XCTest
@testable import algo

final class RotateLeftTests: XCTestCase {
    func test() throws {

        let arr1 = [1,2,3,4,5]
        let arr2 = [1,2,3,4,5,6]

        XCTAssertEqual(RotateLeft(array: arr1, numberOfRotations: 4).start(), [5, 1, 2, 3, 4])
        XCTAssertEqual(RotateLeft(array: arr2, numberOfRotations: 11).start(), [6, 1, 2, 3, 4, 5])
    }
}
