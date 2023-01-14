final class JumpingOnClouds {
    let c: [Int]
    let k: Int
    private var e = 100
    private var jumps = 0

    init(c: [Int], k: Int) {
        self.c = c
        self.k = k
    }

    func start() -> Int {

        jumpClouds()

        while jumps != 0 {
            jumpClouds()
        }

        return e
    }

    private func jumpClouds() {
        jumps += k

        if jumps >= c.count {
            jumps %= c.count
        }

        if c[jumps] == 1 {
            e -= 3
        } else {
            e -= 1
        }
    }
}
