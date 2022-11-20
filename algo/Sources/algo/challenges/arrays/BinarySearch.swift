struct BinarySearch {
    let list: Array<Int>
    let target: Int

    func start() -> Int? {
        var min = 0
        var max = list.count - 1

        while min <= max {
            let middleIndex = (min + max) / 2
            let guess = list[middleIndex]

            if (guess == target) {
                return guess
            }

            if (guess > target) {
                max = middleIndex - 1
            } else {
                min = middleIndex + 1
            }
        }

        return nil
    }
}

struct BinarySearchRecursive {
    let list: Array<Int>
    let target: Int

    func start() -> Int? {
        return recursiveSearch(list, target: target)
    }

    private func recursiveSearch(_ list: [Int], target: Int) -> Int? {

        if list.isEmpty { return nil }

        let middle = list.count / 2

        if (list[middle] == target) { return list[middle] }

        let newList = (list[middle] < target) ?
        Array(list[middle+1...list.count-1]) :
        Array(list[0...middle])

        return recursiveSearch(newList, target: target)
    }
}
