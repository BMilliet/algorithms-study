import Foundation
import XCTest
@testable import algo

final class BinarySearchTreeTests: XCTestCase {
    func testInsert() throws {
        let tree = BinarySearchTreeFactory().makeNumbersTree1()
        
        XCTAssertEqual(tree.root?.value, 40)
        XCTAssertEqual(tree.root?.leftChild?.value, 18)
        XCTAssertEqual(tree.root?.rightChild?.value, 77)
    }
    
    func testContains() throws {
        let tree = BinarySearchTreeFactory().makeNumbersTree1()
        
        XCTAssertTrue(tree.contains(40))
        XCTAssertTrue(tree.contains(0))
        XCTAssertFalse(tree.contains(99))
    }
}
