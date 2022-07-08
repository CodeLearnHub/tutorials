// MARK: Swift switch Statement

// MARK: Helper functions
private func markHeading2(sectionNumber: String) {
    print("\n------------------------Section \(sectionNumber)------------------------\n")
}

private func markHeading3(subsectionNumber: String) {
    print("\n------------Subection \(subsectionNumber)------------\n")
}

private func markHeading4(subsectionNumber: String) {
    print("\n------Subection \(subsectionNumber)------\n")
}

// MARK: - 1. What Is a switch Statement in Swift?
markHeading2(sectionNumber: "1")
    // MARK: 1.1 Introduction and Syntax
        //         switch your_value {
        //           case possible_value_1:
        //              lines of code 1
        //           case possible_value_2:
        //              lines of code 2
        //           ......
        //           case possible_value_n:
        //              lines of code n
        //           default:
        //              lines of code if no other possible value is appropriate
        //         }

    // MARK: 1.2 A Simple Example
    markHeading3(subsectionNumber: "1.2")

    private func sayColorInSeychellesFlag(forStripe stripe: Int) {
        switch stripe {
        case 1:
            print("The first stripe in the flag of Seychelles 🇸🇨 is Blue 🔵")
        case 2:
            print("The second stripe in the flag of Seychelles 🇸🇨 is Yellow 🟡")
        case 3:
            print("The third stripe in the flag of Seychelles 🇸🇨 is Red 🔴")
        case 4:
            print("The fourth stripe in the flag of Seychelles 🇸🇨 is White ⚪️")
        case 5:
            print("The fifth stripe in the flag of Seychelles 🇸🇨 is Green 🟢")
        default:
            print("The number \"\(stripe)\" is invalid, sorry!")
        }
    }

    sayColorInSeychellesFlag(forStripe: 1)
    sayColorInSeychellesFlag(forStripe: 4)
    sayColorInSeychellesFlag(forStripe: 0)
    sayColorInSeychellesFlag(forStripe: -10)
    sayColorInSeychellesFlag(forStripe: 8)

// MARK: - 2. Characteristics of Swift's switch Statements
markHeading2(sectionNumber: "2")

    // MARK: 2.1 A Switch Statement Must Be Exhaustive and Have Non-Empty Cases
    markHeading3(subsectionNumber: "2.1")

        // MARK: 2.1.1 Not Exhaustive Example
        //     Uncomment the follwing function to see its compile-time error

        //    private func whatDoesHeLikeNotExhaustive(author: String) {
        //        switch author { // ERROR: Switch must be exhaustive
        //        case "Dimitris":
        //            print("Dimitris likes Swift!")
        //        case "Akis":
        //            print("Akis likes Java!")
        //        case "John":
        //            print("John likes Unity!")
        //        }
        //    }

        // MARK: 2.1.2 Empty Case Example
        //     Uncomment the follwing function to see its compile-time error

        //    private func whatDoesHeLikeEmptyStatement(author: String) {
        //        switch author {
        //        case "Dimitris": // ERROR: 'case' label in a 'switch' must have at least one executable statement
        //        case "Akis":
        //            print("Akis likes Java!")
        //        case "John":
        //            print("John likes Unity!")
        //        default:
        //            print("Join us to appear in examples!")
        //        }
        //    }

        // MARK: 2.1.3 Using the break Keyword
        markHeading4(subsectionNumber: "2.1.3")

        private func whatDoesHeLike(author: String) {
            switch author {
            case "Dimitris":
                print("Dimitris likes Swift!")
            case "Akis":
                print("Akis likes Java!")
                break
                print("test") // WARNING: Code after 'break' will never be executed
            case "John":
                print("John likes Unity!")
            default:
                if author.isEmpty {
                    print("Name cannot be empty.")
                    break // the rest of the 'default' case won't be executed
                } else {
                    print("\(author), join us to appear in examples!")
                }
                print("See you soon!")
            }
        }

        whatDoesHeLike(author: "Akis")
        print()
        whatDoesHeLike(author: "Joseph")
        print()
        whatDoesHeLike(author: "")

    // MARK: 2.2 A Switch Statement Will Only Execute a Single Case by Default
    markHeading3(subsectionNumber: "2.2")

    private func sayColorsInSeychellesFlag(fromStripe stripe: Int) {
        switch stripe {
        case 1:
            print("The first stripe in the flag of Seychelles 🇸🇨 is Blue 🔵")
            fallthrough
        case 2:
            print("The second stripe in the flag of Seychelles 🇸🇨 is Yellow 🟡")
            fallthrough
        case 3:
            print("The third stripe in the flag of Seychelles 🇸🇨 is Red 🔴")
            fallthrough
        case 4:
            print("The fourth stripe in the flag of Seychelles 🇸🇨 is White ⚪️")
            fallthrough
        case 5:
            print("The fifth stripe in the flag of Seychelles 🇸🇨 is Green 🟢")
            fallthrough
        default:
            print("The number \"\(stripe)\" is invalid, sorry!")
        }
    }

    sayColorsInSeychellesFlag(fromStripe: 1)
    print()
    sayColorsInSeychellesFlag(fromStripe: 4)
    print()
    sayColorsInSeychellesFlag(fromStripe: 0)
    print()
    sayColorsInSeychellesFlag(fromStripe: -10)
    print()
    sayColorsInSeychellesFlag(fromStripe: 8)

    print()

    // MARK: 2.3 Match Multiple Values in a Range
    markHeading3(subsectionNumber: "2.3")


    // MARK: 2.4 Switching on Tuples to Check for Each of Their Elements
    markHeading3(subsectionNumber: "2.4")


    // MARK: 2.5 Using Value Bindings to use Variables or Constants Inside the Case
    markHeading3(subsectionNumber: "2.5")


    // MARK: 2.6 Using a Where Clause to Check for Additional Criteria
    markHeading3(subsectionNumber: "2.6")


    // MARK: 2.7 Combining Multiple Cases at Once With Compound Cases
    markHeading3(subsectionNumber: "2.7")


// MARK: - 3. Comparing With if Statements


    // MARK: 3.1 Using an if Statement


    // MARK: 3.2 Using a switch Statement
