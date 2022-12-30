import Foundation
import XCTest
@testable import algo

final class DayOfProgrammerTests: XCTestCase {
    func test() throws {

        XCTAssertEqual(DayOfProgrammer(year: 1918).run(), "26.09.1918")
        XCTAssertEqual(DayOfProgrammer(year: 1984).run(), "12.09.1984")
        XCTAssertEqual(DayOfProgrammer(year: 2017).run(), "13.09.2017")
        XCTAssertEqual(DayOfProgrammer(year: 2016).run(), "12.09.2016")
        XCTAssertEqual(DayOfProgrammer(year: 1800).run(), "12.09.1800")
    }
}
