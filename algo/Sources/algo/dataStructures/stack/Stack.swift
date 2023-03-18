import Foundation

struct Stack<Element> {
    private var storage: [Element] = []
    
    init(storage: [Element] = [Element]()) {
        self.storage = storage
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        storage.last
    }
    
    var content: [Element] {
        storage.reversed()
    }
    
    var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomDebugStringConvertible {

  public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
  }
}
