import Foundation
import XCTest
@testable import algo

final class MinimumSwapsTests: XCTestCase {
    func test() throws {

        let arr1 = [2,3,4,1,5]
        let arr2 = [1,3,5,2,4,6,7]

        XCTAssertEqual(MinimumSwaps(arr: arr1).start(), 3)
        XCTAssertEqual(MinimumSwaps(arr: arr2).start(), 3)
    }
}
