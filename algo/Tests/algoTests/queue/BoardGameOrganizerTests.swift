import Foundation
import XCTest
@testable import algo

final class BoardGameOrganizerTests: XCTestCase {
    func test() throws {
        var sut = BoardGameOrganizer(arr: QueueArray<String>())
        sut.arr.enqueue("Person1")
        sut.arr.enqueue("Person2")
        sut.arr.enqueue("Person3")
        sut.arr.enqueue("Person4")

        XCTAssertEqual(sut.nextPlayer(), "Person1")
        XCTAssertEqual(sut.nextPlayer(), "Person2")
        XCTAssertEqual(sut.nextPlayer(), "Person3")
        XCTAssertEqual(sut.nextPlayer(), "Person4")
        XCTAssertEqual(sut.nextPlayer(), "Person1")
        XCTAssertEqual(sut.nextPlayer(), "Person2")
    }
}
