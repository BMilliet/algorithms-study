import Foundation
import XCTest
@testable import algo

final class TreeNodeTests: XCTestCase {
    func testBasicStructure() throws {
        let node = TreeNode(1)

        node.add(TreeNode(2))
        node.add(TreeNode(3))

        XCTAssertEqual(node.children[0].value, 2)
        XCTAssertEqual(node.children[1].value, 3)
    }

    func testSearch() throws {
        let tree = TreeFactory().makeBeverageTree()

        XCTAssertNotNil(tree.search("coffee"))
        XCTAssertNotNil(tree.search("soda"))
        XCTAssertNil(tree.search("123"))
    }
}
