
final class ShoppingBag {
    let weightLimit: Int
    var items = Set<Product>()

    init(weightLimit: Int, items: Set<Product>) {
        self.weightLimit = weightLimit
        items.forEach { self.items.insert($0) }
    }

    func value() -> Double {
        var value = 0.0
        items.forEach { value += $0.value }
        return value
    }

    func weight() -> Int {
        var weight = 0
        items.forEach { weight += $0.weight }
        return weight
    }

    func availableWeight() -> Int {
        return weightLimit - weight()
    }

    func add(_ item: Product) {
        items.insert(item)
    }

    func canAdd(_ item: Product) -> Bool {
        return ((item.weight + weight()) <= weightLimit) && !isDuplicate(item)
    }

    func isDuplicate(_ item: Product) -> Bool {
        return items.contains { $0.name == item.name }
    }

    func remove(_ item: Product) {
        items.remove(item)
    }

    func dump() {
        items = []
    }

}

extension ShoppingBag: CustomStringConvertible {
    var description: String {
        "limit: \(weightLimit)\nweight: \(weight())\nvalue: \(value())\nproducts: \(items)"
    }
}


final class ShoppingBagProblemV2 {

    let limit: Int
    let products: [Product]

    var bags = [Int: ShoppingBag]()

    init(limit: Int, products: [Product]) {
        self.limit = limit
        self.products = products
    }

    func start() -> ShoppingBag? {

        for i in 1..<limit+1 {
            bags[i] = ShoppingBag(weightLimit: i, items: [])
        }

        fillBags()
        return bags[limit]
    }

    func fillBags() {

        for p in products {

            for i in 1..<limit+1 {

                let realBag = bags[i]!
                let bag = ShoppingBag(weightLimit: realBag.weightLimit, items: realBag.items)

                if p.weight > bag.weightLimit { continue }

                if bag.canAdd(p) {
                    bag.add(p)

                } else {
                    bag.dump()
                    bag.add(p)

                    if bag.availableWeight() > 0 {
                        guard let bestBag = bags[bag.availableWeight()] else { continue }
                        bestBag.items.forEach { bag.add($0) }
                    }
                }

                if bag.value() > realBag.value() {
                    bags[i] = bag
                }
            }
        }
    }
}
