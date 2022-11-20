import Foundation
import XCTest
@testable import algo

final class HourglassSumTests: XCTestCase {
    func test() throws {

        let arr1 = [
            [-9, -9, -9, 1, 1, 1],
            [0, -9, 0, 4, 3, 2],
            [-9, -9, -9, 1, 2, 3],
            [0, 0, 8, 6, 6, 0],
            [0, 0, 0, -2, 0, 0],
            [0, 0, 1, 2, 4, 0]
        ]

        let arr2 = [
            [1, 1, 1, 0, 0, 0],
            [0, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 0],
            [0, 0, 2, 4, 4, 0],
            [0, 0, 0, 2, 0, 0],
            [0, 0, 1, 2, 4, 0]
        ]

        XCTAssertEqual(HourglassSum(arr: arr1).start(), 28)
        XCTAssertEqual(HourglassSum(arr: arr2).start(), 19)
    }
}
