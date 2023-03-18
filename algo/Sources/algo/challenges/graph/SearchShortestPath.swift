import Foundation

struct SearchShortestPath {
    let root: GraphNode

    func start() -> GraphNode? {
        return search(root.neighbors)
    }

    private func search(_ n: [GraphNode]) -> GraphNode? {
        var nodes = n

        if n.isEmpty { return nil }

        let first = nodes.removeFirst()

        if first.target { return first }

        return search(nodes + first.neighbors)
    }
}
