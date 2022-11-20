struct MinimumBribes {
    let q: [Int]

    func start() -> BribeResult {
        var arr = q

        var bribes = 0
        let position = arr.count
        
        for i in stride(from: position-1, through: 0, by: -1) {

            /*
             current element in array             => arr[i]
             the correct element for the position => i+1
             one swap in array                    => arr[i-1]
             two swaps in array                   => arr[i-3]
             */

            // if the current is not what supposed to
            if i+1 != arr[i] {

                // skipping one place we can find the correct element
                if (arr[i-1] == i+1) {

                    // swap back the correct position and add 1 bribe
                    arr[i-1] = arr[i]
                    arr[i] = i+1

                    bribes += 1
                    
                // skipping two places we can find the correct element
                } else if (arr[i-2] == i+1) {

                    // swap back the correct positions and add 2 bribes
                    arr[i-2] = arr[i-1]
                    arr[i-1] = arr[i]
                    arr[i] = i+1

                    bribes += 2
                } else {
                    return BribeResult(error: "Too chaotic")
                }
            }
        }

        return BribeResult(bribes: bribes)
    }
}

struct BribeResult {
    var bribes: Int? = nil
    var error: String? = nil

    func printValue() {
        if let bribes { print(bribes) }
        if let error { print(error) }
    }
}
