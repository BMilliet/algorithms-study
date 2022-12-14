public struct BinarySearchTree<Element: Comparable> {
    public private(set) var root: BinaryNode<Element>?

    public init() {}

    mutating func insert(_ value: Element) {
        root = insert(from: root, value: value)
    }

    private func insert(from node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element> {
        
        guard let node = node else {
            return BinaryNode(value: value)
        }
        
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        
        return node
    }
}

extension BinarySearchTree {
    
    public mutating func remove(_ value: Element) {
        root = remove(node: root, value: value)
    }
    
    private func remove(node: BinaryNode<Element>?, value: Element) -> BinaryNode<Element>? {
        guard let node = node else {
            return nil
        }
        
        if value == node.value {
            
            // is a leaf
            if node.leftChild == nil && node.rightChild == nil {
                return nil
            }
            
            // if only have one side
            if node.leftChild == nil {
                return node.rightChild
            }
            
            if node.rightChild == nil {
                return node.leftChild
            }
            
            // node has right and left nodes. Reconnect to tree by using min value (leaf - leftmost) from right side.
            node.value = node.rightChild!.min.value
            // remove the min leaf from right side
            node.rightChild = remove(node: node.rightChild, value: node.value)
            
        } else if value < node.value {
            node.leftChild = remove(node: node.leftChild, value: value)
        } else {
            node.rightChild = remove(node: node.rightChild, value: value)
        }
        return node
    }
}

extension BinarySearchTree {
    
    public func contains(_ value: Element) -> Bool {
        var current = root
        
        while let node = current {
            
            if node.value == value {
                return true
            }
            
            if value < node.value {
                current = node.leftChild
            } else {
                current = node.rightChild
            }
        }
        
        return false
    }
}

extension BinarySearchTree: CustomStringConvertible {
    public var description: String {
        guard let root = root else { return "empty tree" }
        return String(describing: root)
    }
}

extension BinarySearchTree: Equatable {
    public static func ==(lhs: BinarySearchTree,
                          rhs: BinarySearchTree) -> Bool {
        isEqual(lhs.root, rhs.root)
    }
    
    private static func isEqual<Element: Equatable>(_ node1: BinaryNode<Element>?,
                                                    _ node2: BinaryNode<Element>?) -> Bool {

        guard let leftNode = node1, let rightNode = node2 else {
            return node1 == nil && node2 == nil
        }

        return leftNode.value == rightNode.value &&
        isEqual(leftNode.leftChild, rightNode.leftChild) &&
        isEqual(leftNode.rightChild, rightNode.rightChild)
    }
}

extension BinarySearchTree where Element: Hashable {

    public func contains(_ subtree: BinarySearchTree) -> Bool {
        var resp = true
        var set: Set<Element> = []

        root?.traverseInOrder { set.insert($0) }

        subtree.root?.traverseInOrder {
            if !set.contains($0) {
                resp = false
            }
        }

        return resp
    }
}
