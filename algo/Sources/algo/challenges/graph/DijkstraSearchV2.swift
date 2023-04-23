import Foundation


final class DijkstraSearchV2 {
    let source: DijstraNode
    private var nodes = [String: DijstraNode]()

    init(source: DijstraNode) {
        self.source = source
    }

    func start() -> Int? {
        calculateLowestCosts(source)
        let total = calculateCheapestPath(source: source, endNode: nodes["end"])
        return total
    }

    private func calculateLowestCosts(_ node: DijstraNode) {
        nodes[node.name] = node

        node.nextNodes.forEach {
            $0.key.update(newCost: $0.value, parent: node)
            calculateLowestCosts($0.key)
        }
    }

    private func calculateCheapestPath(source: DijstraNode, endNode: DijstraNode?) -> Int? {
        var currentNode: DijstraNode? = endNode
        var total = 0
        var path = ""

        while currentNode != source || currentNode == nil {
            path += "\(currentNode!.name) => "
            total += currentNode!.cost
            currentNode = currentNode!.cheapestParent
        }

        //print(path)
        return total
    }
}

// Node

final class DijstraNode {

    let name: String
    var cost: Int
    var nextNodes = [DijstraNode: Int]()
    var cheapestParent: DijstraNode? = nil

    init(name: String, cost: Int = Int.max) {
        self.name = name
        self.cost = cost
    }

    func addNext(node: DijstraNode, cost: Int) {
        nextNodes[node] = cost
    }

    func update(newCost: Int, parent: DijstraNode) {
        if cost > newCost {
            cost = newCost
            cheapestParent = parent
        }
    }
}

extension DijstraNode: Hashable {
    public static func == (lhs: DijstraNode, rhs: DijstraNode) -> Bool {
        return lhs.name == rhs.name
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }
}
