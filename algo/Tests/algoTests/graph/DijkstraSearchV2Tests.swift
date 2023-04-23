import Foundation
import XCTest
@testable import algo

final class DijkstraSearchV2Tests: XCTestCase {
    func testDijsktraBestPath() throws {

        let nodeInit = DijstraNode(name: "init")
        let nodeA    = DijstraNode(name: "a")
        let nodeB    = DijstraNode(name: "b")
        let nodeC    = DijstraNode(name: "c")
        let nodeEnd  = DijstraNode(name: "end")

        nodeInit.addNext(node: nodeA, cost: 6)
        nodeInit.addNext(node: nodeB, cost: 2)
        nodeInit.addNext(node: nodeC, cost: 1)

        nodeA.addNext(node: nodeEnd, cost: 1)

        nodeB.addNext(node: nodeA, cost: 3)
        nodeB.addNext(node: nodeEnd, cost: 5)

        nodeC.addNext(node: nodeA, cost: 100)

        let result = DijkstraSearchV2(source: nodeInit).start()

        XCTAssertEqual(6, result)
    }

    func testDijkstraGreedy() throws {

        let nodeInit = DijstraNode(name: "init")
        let nodeA    = DijstraNode(name: "a")
        let nodeB    = DijstraNode(name: "b")
        let nodeC    = DijstraNode(name: "c")
        let nodeEnd  = DijstraNode(name: "end")

        nodeInit.addNext(node: nodeA, cost: 6)
        nodeInit.addNext(node: nodeB, cost: 2)
        nodeInit.addNext(node: nodeC, cost: 1)

        nodeA.addNext(node: nodeEnd, cost: 1)

        nodeB.addNext(node: nodeA, cost: 3)
        nodeB.addNext(node: nodeEnd, cost: 5)

        nodeC.addNext(node: nodeA, cost: 100)

        let resultGreedy = DijkstraSearchV2(source: nodeInit, greedy: true).start()

        XCTAssertEqual(102, resultGreedy)
    }
}
