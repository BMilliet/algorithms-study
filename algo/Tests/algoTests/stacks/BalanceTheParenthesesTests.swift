import Foundation
import XCTest
@testable import algo

final class BalanceTheParenthesesTests: XCTestCase {
    func test() throws {

        let balanced1 = "h((e))llo(world)()"
        let balanced2 = "(h((e))llo(world)())"
        let unbalanced1 = "(hello world"
        let unbalanced2 = "(hello world("

        XCTAssertTrue(BalanceTheParentheses(str: balanced1).start())
        XCTAssertTrue(BalanceTheParentheses(str: balanced2).start())
        XCTAssertFalse(BalanceTheParentheses(str: unbalanced1).start())
        XCTAssertFalse(BalanceTheParentheses(str: unbalanced2).start())
    }
}
