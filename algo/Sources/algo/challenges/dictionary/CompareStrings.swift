import Foundation
struct CompareStrings {

    let first: String
    let second: String

    func start() -> Bool {
        let secondHash = createHash(Array(second))
        var count = 0
        
        Array(first).forEach { w in
            if let _ = secondHash[w] {
                count += 1
            }
        }

        return count > 0
    }

    private func createHash(_ arr: [Character]) -> [Character: Int] {
        var dictionary = [Character: Int]()
        
        for i in 0...arr.count - 1 {
            if let hash = dictionary[arr[i]] {
                dictionary[arr[i]] = hash + 1
            } else {
                dictionary[arr[i]] = 1
            }
        }
        
        return dictionary
    }
}
