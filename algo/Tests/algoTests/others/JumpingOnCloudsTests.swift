import Foundation
import XCTest
@testable import algo

final class JumpingOnCloudsTests: XCTestCase {
    func test() throws {

        XCTAssertEqual(JumpingOnClouds(c: [0,0,1,0], k: 2).start(), 96)
        XCTAssertEqual(JumpingOnClouds(c: [0,0,1,0,0,1,1,0], k: 2).start(), 92)
        XCTAssertEqual(JumpingOnClouds(c: [1,1,1,0,1,1,0,0,0,0], k: 3).start(), 80)
    }
}
