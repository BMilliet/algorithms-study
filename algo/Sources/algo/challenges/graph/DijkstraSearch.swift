import Foundation

struct DijkstraSearch {
    let graph: [String: [String: Int]]

    var costs     = [String: Int]()
    var processed = [String]()

    mutating func start() -> [String: Int] {

        guard let start = graph["start"], let _ = graph["end"] else {
            print("graph need to have a start and end nodes")
            return [:]
        }

        populateCosts(start)
        costs["end"] = Int.max

        var cheapestNode = findCheapestNode()

        while !cheapestNode.isEmpty {
            let cheapKey   = cheapestNode.first!.key
            let cheapValue = cheapestNode.first!.value

            let neighbors = graph[cheapKey]!

            neighbors.forEach {
                let currentCost = costs[$0.key]!
                let newCost = neighbors[$0.key]! + cheapValue

                if newCost < currentCost {
                    costs[$0.key] = newCost
                }
            }

            processed.append(cheapKey)
            cheapestNode = findCheapestNode()
        }

        return costs
    }

    mutating func findCheapestNode() -> [String: Int] {
        var cheapestValue = Int.max
        var cheapestNode = [String: Int]()

        costs.forEach {
            if ($0.value < cheapestValue && !processed.contains($0.key)) || $0.value == -1 {
                cheapestValue = $0.value
                cheapestNode = [$0.key: $0.value]
            }
        }

        return cheapestNode
    }

    mutating func populateCosts(_ start: [String: Int]) {
        start.forEach { costs[$0.key] = $0.value }
    }
}
