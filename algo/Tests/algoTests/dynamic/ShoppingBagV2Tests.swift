import Foundation
import XCTest
@testable import algo

final class ShoppingBagV2Tests: XCTestCase {
    func test() throws {

        let products = [
            Product(name: "book", value: 3, weight: 1),
            Product(name: "camera", value: 6, weight: 1),
            Product(name: "food", value: 9, weight: 2),
            Product(name: "coat", value: 5, weight: 2),
            Product(name: "water", value: 10, weight: 3),
        ]

        let bag1 = ShoppingBagProblemV2(limit: 1, products: products).start()
        let bag2 = ShoppingBagProblemV2(limit: 2, products: products).start()
        let bag3 = ShoppingBagProblemV2(limit: 3, products: products).start()
        let bag4 = ShoppingBagProblemV2(limit: 4, products: products).start()
        let bag5 = ShoppingBagProblemV2(limit: 5, products: products).start()
        let bag6 = ShoppingBagProblemV2(limit: 6, products: products).start()

        XCTAssertEqual(6.0, bag1?.value())
        XCTAssertEqual(9.0, bag2?.value())
        XCTAssertEqual(15.0, bag3?.value())
        XCTAssertEqual(18.0, bag4?.value())
        XCTAssertEqual(20.0, bag5?.value())
        XCTAssertEqual(25.0, bag6?.value())
    }
}
