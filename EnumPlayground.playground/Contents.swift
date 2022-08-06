// MARK: Swift Enum

// MARK: - 2. Syntax of a Swift Enum
markHeading(numbering: "2")

enum DayOfTheWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var favoriteDay = DayOfTheWeek.friday
favoriteDay = .saturday
var leastFavoriteDay: DayOfTheWeek = .monday

// cases in a single line
enum Day {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

// MARK: - 3. Using an Enum in a Switch Statement
markHeading(numbering: "3")

let day = DayOfTheWeek.monday

switch day {
case .monday, .tuesday, .wednesday, .thursday:
    print("18:00 - 02:00") // this will be executed
case .friday, .saturday, .sunday:
    print("17:00 - 04:00")
}

switch day {
case .saturday, .sunday:
    print("17:00 - 04:00")
default:
    print("closed")  // this will be executed
}

// MARK: - 4. Characteristics of a Swift Enum
markHeading(numbering: "4")

    // MARK: 4.1 Raw Values
    markHeading(numbering: "4.1")

enum PubDay: String {
    case monday = "Monday: 18:00 - 02:00"
    case tuesday = "18:00 - 02:00"
    case wednesday = "18:00 - 02:00"
    case thursday = "18:00 - 02:00"
    case friday = "18:00 - 02:00"
    case saturday = "18:00 - 02:00"
    case sunday = "18:00 - 02:00"
}

print(PubDay.monday.rawValue)
