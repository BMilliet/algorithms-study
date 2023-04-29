import Foundation
import XCTest
@testable import algo

final class ShoppingBagTests: XCTestCase {
    func test() throws {

        let products = [
            Product(name: "book", value: 3, weight: 1),
            Product(name: "camera", value: 6, weight: 1),
            Product(name: "food", value: 9, weight: 2),
            Product(name: "coat", value: 5, weight: 2),
            Product(name: "water", value: 10, weight: 3),
        ]

        let productsToBuy = ShoppingBagProblem(products: products, weightLimit: 6).start()

        XCTAssertEqual(productsToBuy.first?.key, 25)
    }
}
