import Foundation
struct MinimumSwaps {

    let arr: [Int]

    func start() -> Int {

        var hash = [Int: Int]()
        var visited = [Bool]()
        var swaps = 0

        for i in 0..<arr.count {
            hash[i+1] = arr[i]
            visited.append(false)
        }

        for i in 1...hash.count {
            
            var next = Int.min
            
            if visited[i-1] == false {
                
                visited[i-1] = true
                
                if i != hash[i] {
                    var c = hash[i]!
                    
                    while !visited[c-1] {
                        visited[c-1] = true
                        next = hash[c]!
                        c = next
                        swaps += 1
                    }
                }
            }
        }
        return swaps
    }
}
