struct DayOfProgrammer {

    let year: Int

    func run() -> String {
        if isTransition() {
            return "26.09.\(year)"
        }

        if isGregorianCalendar() {
            if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
        } else {
            if year % 4 == 0 {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
        }
    }

    private func isGregorianCalendar() -> Bool {
        return year >= 1917
    }

    private func isTransition() -> Bool {
        return year == 1918
    }
}
