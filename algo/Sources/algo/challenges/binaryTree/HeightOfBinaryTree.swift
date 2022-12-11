struct HeightOfBinaryTree<T> {
    let node: BinaryNode<T>

    func start() -> Int {
        
        return height(of: node)
    }

    func height<T>(of node: BinaryNode<T>?) -> Int {
        guard let node = node else { return -1 }
        return 1 + max(height(of: node.leftChild), height(of: node.rightChild))
    }
}
