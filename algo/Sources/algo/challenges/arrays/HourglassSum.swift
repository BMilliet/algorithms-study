struct HourglassSum {

    let arr: [[Int]]

    func start() -> Int {
        var max = Int.min

        for row in 0..<4 {
            for col in 0..<4 {

                let newMax =
                arr[row][col] + arr[row][col+1] + arr[row][col+2] +
                arr[row+1][col+1] +
                arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]

                if newMax > max { max = newMax }
            }
        }

        return max
    }
}
