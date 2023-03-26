import Foundation

struct FindRadios {
    let stations: [String: [String]]

    func start() -> [[String]] {
        var hash = stations
        var radios = [String]()
        var covered = Set<String>()

        while !hash.isEmpty {

            var stationKey = String()
            var states = [String]()

            hash.forEach { h in
                if  h.value.filter({ !covered.contains($0) }).count > states.count {
                    stationKey = h.key
                    states = h.value
                }
            }

            if stationKey.isEmpty { break }

            hash.removeValue(forKey: stationKey)
            radios.append(stationKey)
            states.forEach { covered.insert($0) }
        }

        return [radios, Array(covered)]
    }
}
