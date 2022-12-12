@testable import algo

struct BinarySearchTreeFactory {
    func makeNumbersTree() -> BinarySearchTree<Int> {
        var tree = BinarySearchTree<Int>()
        tree.insert(40)
        tree.insert(18)
        tree.insert(77)
        tree.insert(1)
        tree.insert(20)
        tree.insert(70)
        tree.insert(105)
        tree.insert(0)
        tree.insert(25)
        tree.insert(45)
        tree.insert(88)

        return tree
    }
}
