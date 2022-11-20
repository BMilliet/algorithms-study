struct RotateLeft {

    let array: [Int]
    let numberOfRotations: Int

    func start() -> [Int] {

        var actualRotations = numberOfRotations
        let arraySize = array.count

        if numberOfRotations > arraySize {
            actualRotations = findMinimalRotation(numberOfRotations, arraySize)
        }

        let first = Array(array[0..<actualRotations])
        let second = Array(array[actualRotations..<arraySize])

        return second + first
    }

    private func findMinimalRotation(_ rotations: Int, _ arraySize: Int) -> Int {
        var rot = rotations

        while rot > arraySize {
            rot -= arraySize
        }

        return rot
    }
}
