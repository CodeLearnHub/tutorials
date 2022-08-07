// MARK: Swift Enum

import Foundation

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

    enum PubDay: String, CaseIterable {
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

    // MARK: 4.2 Associated Values
    markHeading(numbering: "4.2")

    enum WeaponType {
        case melee(power: Double, durability: Int)
        case ranged(power: Double, durability: Int, range: Int)
        case magic(power: Double)
    }

    func showWeaponAttributes(weapon: WeaponType) {
        switch weapon {
        case .melee(let power, let durability):
            print("Melee weapon: Power = \(power), Durability = \(durability)/100.")
        case .ranged(let power, let durability, let range):
            print("Ranged weapon: Power = \(power), Durability = \(durability)/100, Range: \(range) meters.")
        case .magic(let power):
            print("Magic weapon: Power = \(power).")
        }
    }

    let dagger: WeaponType = .melee(power: 15, durability: 30)
    let bow: WeaponType = .ranged(power: 10, durability: 20, range: 100)
    let darkMagic: WeaponType = .magic(power: 50)

    showWeaponAttributes(weapon: dagger)
    showWeaponAttributes(weapon: bow)
    showWeaponAttributes(weapon: darkMagic)

    // MARK: 4.3 Iterating Over All Cases of an Enum
    markHeading(numbering: "4.3")

    print("The pub is open \(PubDay.allCases.count) days a week. The full opening hours are shown below:\n")

    for day in PubDay.allCases {
        print(day.rawValue)
    }

    // MARK: 4.4 Miscellaneous Characteristics
    markHeading(numbering: "4.4")

    enum IceCreamFlavor: String, CaseIterable {
        case chocolate = "Chocolate"
        case vanilla = "Vanilla"
        case banana = "Banana"
        case strawberry = "Strawberry"
        
        var enEspañol: String {
            switch self {
                
            case .chocolate:
                return "Chocolate"
            case .vanilla:
                return "Vainilla"
            case .banana:
                return "Plátano"
            case .strawberry:
                return "Fresa"
            }
        }
        
        init() {
            let randomNumber = Int.random(in: 1...4)
            
            switch randomNumber {
            case 1:
                self = .chocolate
            case 2:
                self = .vanilla
            case 3:
                self = .banana
            default:
                self = .strawberry
            }
        }
        
        static func displayMenu() {
            print("Welcome to our humble ice-cream van!\n")
            
            print("Our available ice cream flavors are:")
            for flavor in IceCreamFlavor.allCases {
                print(flavor.rawValue)
            }
            
            print("\nPrices:")
            print("1 scoop = $1\n2 scoops $1.5\n3 scoops $2\n")
            
            print("Available in cone or cup.")
        }
    }

        // MARK: 4.4.1 Initializers in an Enum
        markHeading(numbering: "4.4.1")

        let randomFlavor = IceCreamFlavor()
        print(randomFlavor)

        // MARK: 4.4.2 Computed Properties
        markHeading(numbering: "4.4.2")

        let strawberryIceCream = IceCreamFlavor.strawberry
        print(strawberryIceCream.enEspañol)

        // MARK: 4.4.3 Methods
        markHeading(numbering: "4.4.3")

        IceCreamFlavor.displayMenu()
