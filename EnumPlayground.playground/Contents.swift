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
        case tuesday = "Tuesday: 18:00 - 02:00"
        case wednesday = "Wednesday: 18:00 - 02:00"
        case thursday = "Thursday: 18:00 - 02:00"
        case friday = "Friday: 17:00 - 04:00"
        case saturday = "Saturday: 17:00 - 04:00"
        case sunday = "Sunday: 17:00 - 04:00"
    }

    print(PubDay.monday.rawValue)

        // MARK: 4.1.1 Implicit Raw Values
        markHeading(numbering: "4.1.1")

        enum NumberedDay: Int {
            case monday
            case tuesday
            case wednesday
            case thursday
            case friday
            case saturday
            case sunday
        }

        print(NumberedDay.monday.rawValue)      // 0
        print(NumberedDay.wednesday.rawValue)   // 2
        print(NumberedDay.saturday.rawValue)    // 5

        print()

        enum SelfLabeledDay: String {
            case monday
            case tuesday
            case wednesday
            case thursday
            case friday
            case saturday
            case sunday = "SUNDAY"
        }

        print(SelfLabeledDay.tuesday.rawValue)  // tuesday
        print(SelfLabeledDay.sunday.rawValue)   // SUNDAY

        // MARK: 4.1.2 Initializing an Enum From a Raw Value
        markHeading(numbering: "4.1.2")

        if let possibleDay = NumberedDay(rawValue: 20) {
            switch possibleDay {
            case .monday:
                print("I don't like Mondays....")
            default:
                print("As long as it's not Monday, I don't mind.")
            }
        } else {
            print("Invalid number for day.")
        }

