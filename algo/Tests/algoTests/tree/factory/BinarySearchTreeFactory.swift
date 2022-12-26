@testable import algo

struct BinarySearchTreeFactory {
    func makeNumbersTree1() -> BinarySearchTree<Int> {
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

    func makeNumbersTree2() -> BinarySearchTree<Int> {
        var tree = BinarySearchTree<Int>()
        tree.insert(40)
        tree.insert(18)
        tree.insert(77)
        tree.insert(1)
        tree.insert(20)

        return tree
    }

    func makeNumbersTree3() -> BinarySearchTree<Int> {
        var tree = BinarySearchTree<Int>()
        tree.insert(44)
        tree.insert(19)
        tree.insert(78)
        tree.insert(110)
        tree.insert(20)

        return tree
    }
}
