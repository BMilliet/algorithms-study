import Foundation

final class TreeLevelString<T> {

    let tree: TreeNode<T>

    init(tree: TreeNode<T>) {
        self.tree = tree
    }

    func start() -> [[T]] {
        var arr = [Int: [T]]()
        var queue =  QueueStack<TreeNode<T>>()
        var nodesLeft = 0
        var count = 0
        queue.enqueue(tree)

        while !queue.isEmpty {
            nodesLeft = queue.count
            
            while nodesLeft > 0 {
                guard let node = queue.dequeue() else { break }
                node.children.forEach { queue.enqueue($0) }
                nodesLeft -= 1

                if var list = arr[count] {
                    list.append(node.value)
                    arr[count] = list
                } else {
                    arr[count] = [node.value]
                }
            }

            count += 1
        }

        var resp = [[T]]()

        for i in (0...count) {
            if let e = arr[i] {
                resp.append(e)
            }
        }

        return resp
    }
}
