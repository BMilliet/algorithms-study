import Foundation
import XCTest
@testable import algo

final class MinimumBribesTests: XCTestCase {
    func test() throws {

        let arr1 = [2,1,5,3,4]
        let arr2 = [2,5,1,3,4]
        let arr3 = [5,1,2,3,7,8,6,4]

        XCTAssertEqual(MinimumBribes(q: arr1).start().bribes, 3)
        XCTAssertEqual(MinimumBribes(q: arr2).start().error, "Too chaotic")
        XCTAssertEqual(MinimumBribes(q: arr3).start().error, "Too chaotic")
    }
}
