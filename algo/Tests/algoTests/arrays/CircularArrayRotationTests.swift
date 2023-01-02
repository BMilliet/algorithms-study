import Foundation
import XCTest
@testable import algo

final class CircularArrayRotationTests: XCTestCase {
    func test() throws {

        XCTAssertEqual(
            CircularArrayRotation(array: [3,4,5],
                                  rotations: 2,
                                  sets: [1,2]).run(),
            [5,3]
        )
    }
}
