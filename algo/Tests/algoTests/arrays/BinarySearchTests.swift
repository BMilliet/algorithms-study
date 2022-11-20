import Foundation
import XCTest
@testable import algo

final class BinarySearchTests: XCTestCase {
    func test() throws {

        let arr1 = [1,2,3,4,5,6,7,8,9,10]

        let arr2 = [1,2,3,4,5,6,7,8,9,10]

        let arr3 = [1,2,3,4,5,6,7,8,9,10]

        let arr4 = [1,2,3,4,5,6,7,8,9,10]

        XCTAssertEqual(BinarySearch(list: arr1, target: 4).start(), 4)
        XCTAssertEqual(BinarySearch(list: arr2, target: 9).start(), 9)
        XCTAssertNil(BinarySearch(list: arr3, target: 11).start())
        XCTAssertNil(BinarySearch(list: arr4, target: 0).start())
    }
    
    func testRescursion() throws {

        let arr1 = [1,2,3,4,5,6,7,8,9,10]

        let arr2 = [1,2,3,4,5,6,7,8,9,10]

        let arr3 = [1,2,3,4,5,6,7,8,9,10]

        let arr4 = [1,2,3,4,5,6,7,8,9,10]

        XCTAssertEqual(BinarySearchRecursive(list: arr1, target: 4).start(), 4)
        XCTAssertEqual(BinarySearch(list: arr2, target: 9).start(), 9)
        XCTAssertNil(BinarySearch(list: arr3, target: 11).start())
        XCTAssertNil(BinarySearch(list: arr4, target: 0).start())
    }
}
