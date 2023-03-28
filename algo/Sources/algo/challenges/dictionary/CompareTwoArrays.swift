import Foundation

struct CompareTwoArrays<T: Comparable & Hashable> {

    let first: [T]
    let second: [T]

    func start() -> Bool {
        var secondHash = createHash(second)
        
        first.forEach { w in
            if let e = secondHash[w] {
                if e > 1 {
                    secondHash[w] = e - 1
                } else {
                    secondHash.removeValue(forKey: w)
                }
            }
        }

        return secondHash.isEmpty
    }

    private func createHash(_ arr: [T]) -> [T: Int] {
        var dictionary = [T: Int]()
        
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
