protocol BoardGameManager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}

struct BoardGameOrganizer<T>: BoardGameManager {
    typealias Player = T

    var arr = QueueArray<Player>()

    mutating func nextPlayer() -> Player? {
        guard let person = arr.dequeue() else { return nil }
        arr.enqueue(person)
        return person
    }
}
