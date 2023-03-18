import Foundation
import XCTest
@testable import algo

final class DijkstraSearchTests: XCTestCase {
    func test() throws {

        var graph = [String: [String: Int]]()
        graph["start"] = [String: Int]()
        graph["a"]     = [String: Int]()
        graph["b"]     = [String: Int]()
        graph["end"]   = [String: Int]()

        graph["start"]!["a"] = 6
        graph["start"]!["b"] = 2
        graph["b"]!["a"]     = 3
        graph["a"]!["end"]   = 1
        graph["b"]!["end"]   = 5


        var sut = DijkstraSearch(graph: graph)
        let costs = sut.start()

        XCTAssertEqual(costs["end"], 6)
    }
}
