import Foundation

struct BalanceTheParentheses {

    let str: String

    func start() -> Bool {
        var stack = Stack<Character>()
        
        for e in str {
            if e == ")" {
                if stack.isEmpty { return false }
                stack.pop()
            } else if e == "(" {
                stack.push("(")
            }
        }
        
        return stack.isEmpty
    }
}
