struct BinaryTreeSerialization<T> {
    let node: BinaryNode<T>
    
    init(node: BinaryNode<T>) {
        self.node = node
    }

    func start() -> [T?] {
        var list = [T?]()
        
        node.traversePreOrder { e in
            list.append(e)
        }

        return list //list.reversed()
    }
}
