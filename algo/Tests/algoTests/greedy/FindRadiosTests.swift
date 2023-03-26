import Foundation
import XCTest
@testable import algo

final class FindRadiosTests: XCTestCase {
    func test() throws {

        var stations = [String: [String]]()
        stations["r1"] = ["id", "nv", "ut"]
        stations["r2"] = ["wa", "id", "mt"]
        stations["r3"] = ["or", "nv", "ca"]
        stations["r4"] = ["nv", "ut"]
        stations["r5"] = ["ca", "az"]

        let allStations = ["id", "nv", "ut", "wa", "mt", "or", "ca", "az"]

        let costs = FindRadios(stations: stations).start()

        XCTAssertTrue(allStations.allSatisfy({ costs.last!.contains($0) }))
        XCTAssertTrue(costs.first!.count == 4)
    }
}
