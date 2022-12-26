import Foundation
import XCTest
@testable import algo

final class BinaryTreeOrBinarySearchTreeTests: XCTestCase {
    func test() throws {
        let tree = BinarySearchTreeFactory().makeNumbersTree()
        
        XCTAssertTrue(BinaryTreeOrBinarySearchTree<Int>(tree: tree.root!).start())
    }
}
