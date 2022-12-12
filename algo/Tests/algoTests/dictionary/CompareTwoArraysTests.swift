import Foundation
import XCTest
@testable import algo

final class CompareTwoArraysTests: XCTestCase {
    func test() throws {

        let arr1 = ["two", "times", "three", "is", "not", "four"]
        let arr2 = ["two", "times", "two", "is", "four"]

        let arr3 = [1,2,3,4,5,6,7,8,9,10]
        let arr4 = [1,1,3,4,5,6,7,8,9,10]
        
        let arr5 = [10,3,3,6,5,1,2,8,9,22]
        let arr6 = [3,5,1,22,10,9]

        XCTAssertFalse(CompareTwoArrays(first: arr1, second: arr2).start())
        XCTAssertFalse(CompareTwoArrays(first: arr3, second: arr4).start())
        XCTAssertTrue(CompareTwoArrays(first: arr5, second: arr6).start())
    }
}
