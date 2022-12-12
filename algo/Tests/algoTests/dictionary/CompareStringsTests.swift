import Foundation
import XCTest
@testable import algo

final class CompareStringsTests: XCTestCase {
    func test() throws {

        let str1 = "hello"
        let str2 = "world"

        let str3 = "dog"
        let str4 = "cat"
        
        let str5 = "ant"
        let str6 = "art"

        XCTAssertTrue(CompareStrings(first: str1, second: str2).start())
        XCTAssertFalse(CompareStrings(first: str3, second: str4).start())
        XCTAssertTrue(CompareStrings(first: str5, second: str6).start())
    }
}
