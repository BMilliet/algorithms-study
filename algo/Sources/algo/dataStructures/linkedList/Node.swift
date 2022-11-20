final class Node {
    var data: Any
    var next: Node?

    init(data: Any, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
