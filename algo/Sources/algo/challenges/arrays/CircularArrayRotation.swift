struct CircularArrayRotation {
    let array: [Int]
    let rotations: Int
    let sets: [Int]

    func run() -> [Int] {

        var resp = [Int]()
        
        
        let rotatedArray = rotate()
        
        sets.forEach {
            resp.append(rotatedArray[$0])
        }

        return resp
    }

    private func rotate() -> [Int] {
        var newArray = array

        for _ in 1...rotations {
            let last = newArray.removeLast()
            newArray.insert(last, at: 0)
        }


        return newArray
    }
}
