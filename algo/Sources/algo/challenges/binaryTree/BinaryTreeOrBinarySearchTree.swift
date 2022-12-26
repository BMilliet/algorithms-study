struct BinaryTreeOrBinarySearchTree<T: Comparable> {
    let tree: BinaryNode<T>
    
    func start() -> Bool {
        return istBinarySearchTree(tree, min: nil, max: nil)
    }

    private func istBinarySearchTree(_ node: BinaryNode<T>?,
                                     min: T?,
                                     max: T?) -> Bool {

        guard let node = node else { return true }

        if let min = min, node.value <= min {
            return false
        } else if let max = max, node.value > max {
            return false
        }

        if !istBinarySearchTree(node.leftChild, min: min, max: node.value) {
            return false
        }

        if !istBinarySearchTree(node.rightChild, min: node.value, max: max) {
            return false
        }

        return true
    }
}
