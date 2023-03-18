import Foundation
import XCTest
@testable import algo

final class SearchShortestPathTests: XCTestCase {
    func test() throws {

        let node1 = GraphNode(target: true, neighbors: [])
        var node2 = GraphNode()
        let node3 = GraphNode()
        let node4 = GraphNode()

        let node5 = GraphNode(neighbors: [node1, node2])
        let node6 = GraphNode(neighbors: [node3, node4])
        let node7 = GraphNode(neighbors: [])

        let node8 = GraphNode(neighbors: [node5, node6])
        let node9 = GraphNode(neighbors: [node6, node7])

        node2.neighbors = [node9, node8]

        let rootNode = GraphNode(neighbors: [node8, node9])

        XCTAssertEqual(SearchShortestPath(root: rootNode).start()!.id, node1.id)
    }
}
