import Foundation

struct GraphNode {
    let id        = UUID()
    var verified  = false
    var target    = false
    var neighbors = [GraphNode]()
}
