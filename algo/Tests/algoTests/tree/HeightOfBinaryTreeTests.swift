import Foundation
import XCTest
@testable import algo

final class HeightOfBinaryTreeTests: XCTestCase {
    func test() throws {
        let n1 = BinaryNode(value: 1)
        let n2 = BinaryNode(value: 2)

        let n3 = BinaryNode(value: 3)
        let n4 = BinaryNode(value: 4)
        let n5 = BinaryNode(value: 5)

        n1.leftChild = n2
        n1.rightChild = n3
        
        n2.leftChild = n4
        n4.rightChild = n5

        XCTAssertEqual(HeightOfBinaryTree(node: n1).start(), 3)
        XCTAssertEqual(HeightOfBinaryTree(node: n2).start(), 2)
    }
}
