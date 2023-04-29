import Foundation

struct Product: Equatable, Hashable {
    let name: String
    let value: Double
    let weight: Int
}

struct ShoppingBagProblem {

    let products: [Product]
    let weightLimit: Int

    func start() -> [Double: [Product]] {

        var table = [Int: [Product]]()

        for i in 1 ..< weightLimit + 1 {

            var limit = i
            var productsToAdd = [Product]()

            for product in products {
                if product.weight > i { break }

                // if product fits just add it
                if product.weight <= limit {
                    productsToAdd.append(product)
                    limit -= product.weight

                // product doenst fit, try to swap
                } else if product.weight <= i {

                    var bagValueSoFar = 0.0
                    productsToAdd.forEach { bagValueSoFar += $0.value }

                    var subValue = product.value
                    var tempBag = [product]
                    var tempLimit = i - product.weight

                    if tempLimit > 0 {
                        if let mostValuableAt = table[tempLimit] {
                            var subWeight = 0

                            mostValuableAt.forEach {
                                subWeight += $0.weight
                                subValue += $0.value
                                tempBag.append($0)
                            }

                            tempLimit -= subWeight
                        }
                    }

                    if subValue > bagValueSoFar {
                        productsToAdd = tempBag
                        limit = tempLimit
                    }
                }
            }

            table[i] = productsToAdd
        }

        var maxValue = 0.0
        let bestProducts = table[weightLimit]!

        bestProducts.forEach {
            maxValue += $0.value
        }

        return [maxValue: bestProducts]
    }
}
