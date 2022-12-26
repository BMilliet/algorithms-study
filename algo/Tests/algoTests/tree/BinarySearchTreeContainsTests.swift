import Foundation
import XCTest
@testable import algo

final class BinarySearchTreeContainsTests: XCTestCase {
    func testContainsTree() throws {
        let tree1 = BinarySearchTreeFactory().makeNumbersTree1()
        let tree2 = BinarySearchTreeFactory().makeNumbersTree2()
        
        XCTAssertTrue(tree1.contains(tree2))
    }
    
    func testDoNotContainTree() throws {
        let tree1 = BinarySearchTreeFactory().makeNumbersTree1()
        let tree2 = BinarySearchTreeFactory().makeNumbersTree3()
        
        XCTAssertFalse(tree1.contains(tree2))
    }
}
