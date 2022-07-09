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

    private func monthNumberToSeason(monthNumber: Int) {
        switch monthNumber {
        case 1...2: // values 1, 2
            print("Winter ☃️")
        case 3...5: // values 3, 4, 5
            print("Spring 🌺")
        case 6...8: // values 6, 7, 8
            print("Summer ⛱")
        case 9...11: // values 9, 10, 11
            print("Autumn 🍁")
        case 12: // 12
            print("Winter ☃️")
        default: // invalid value; do nothing
            break
        }
    }

    monthNumberToSeason(monthNumber: 1)
    monthNumberToSeason(monthNumber: 13) // will not print/do anything
    monthNumberToSeason(monthNumber: 4)
    monthNumberToSeason(monthNumber: 5)

    // MARK: 2.4 Switching on Tuples to Check for Each of Their Elements
    markHeading3(subsectionNumber: "2.4")

    private func explainLogicalOrOperation(logicalTuple: (Bool, Bool)) {
        switch logicalTuple { // no default case required, since we cover all of the cases
        case (true, true):
            print("true OR true IS true")
        case (true, false):
            print("true OR false IS true")
        case (false, true):
            print("false OR true IS true")
        case (false, false):
            print("false OR false IS false")
        }
    }

    explainLogicalOrOperation(logicalTuple: (true, true))
    explainLogicalOrOperation(logicalTuple: (true, false))
    explainLogicalOrOperation(logicalTuple: (false, true))
    explainLogicalOrOperation(logicalTuple: (false, false))

    print("\nSimplified version:\n")

    private func explainLogicalOrOperationSimplified(logicalTuple: (Bool, Bool)) {
        switch logicalTuple { // no default case required, since we cover all of the cases
        case (_, true):
            print("true OR true IS true")
        case (true, _):
            print("true OR false IS true")
        case (false, false):
            print("false OR false IS false")
        }
    }

    explainLogicalOrOperationSimplified(logicalTuple: (true, true))
    explainLogicalOrOperationSimplified(logicalTuple: (true, false))
    explainLogicalOrOperationSimplified(logicalTuple: (false, true))
    explainLogicalOrOperationSimplified(logicalTuple: (false, false))

    // MARK: 2.5 Using Value Bindings to use Variables or Constants Inside the Case
    markHeading3(subsectionNumber: "2.5")

    private func explainLogicalOrOperationValueBind(logicalTuple: (Bool, Bool)) {
        switch logicalTuple { // no default case required, since we cover all of the cases
        case (let firstOperand, true): // true-true and false-true
            print("First case: \(firstOperand) OR true IS true")
        case (false, let secondOperand): // false-true and false-false
            if secondOperand { // false-true, never executed since it's handled by above case
                print("Second case A: false OR true IS true")
            } else { // false-false
                print("Second case B: false OR false IS true")
            }
        case (let firstOperand, let secondOperand): // any other combination, but most importantly the missing true-false
            print("Third case: \(firstOperand) OR \(secondOperand) IS \(firstOperand || secondOperand)")
        }
    }

    explainLogicalOrOperationValueBind(logicalTuple: (true, true))
    explainLogicalOrOperationValueBind(logicalTuple: (true, false))
    explainLogicalOrOperationValueBind(logicalTuple: (false, true))
    explainLogicalOrOperationValueBind(logicalTuple: (false, false))

    // MARK: 2.6 Using a Where Clause to Check for Additional Criteria
    markHeading3(subsectionNumber: "2.6")

    private func explainLogicalXorOperationWhereClause(logicalTuple: (Bool, Bool)) {
        switch logicalTuple {
        case (let firstOperand, let secondOperand) where firstOperand == secondOperand: // true-true and false-false
            print("\(firstOperand) XOR \(secondOperand) IS false")
        case (let firstOperand, let secondOperand) where firstOperand != secondOperand: // false-true and true-false
            print("\(firstOperand) XOR \(secondOperand) IS true")
        default:
            break
        }
    }

    explainLogicalXorOperationWhereClause(logicalTuple: (true, true))
    explainLogicalXorOperationWhereClause(logicalTuple: (true, false))
    explainLogicalXorOperationWhereClause(logicalTuple: (false, true))
    explainLogicalXorOperationWhereClause(logicalTuple: (false, false))

    // MARK: 2.7 Combining Multiple Cases at Once With Compound Cases
    markHeading3(subsectionNumber: "2.7")

    private func isGreekLetterConsonantOrVowel(letter: Character) {
        switch letter {
        case "α", "ε", "η", "ι", "ο", "υ", "ω":
            print("\(letter) is a vowel")
        case "β", "γ", "δ", "ζ", "θ", "κ", "λ", "μ", "ν", "ξ", "π", "ρ", "σ", "τ", "φ", "χ", "ψ":
            print("\(letter) is a consant")
        default:
            print("Only lowercase Greek letters are accepted")
        }
    }

    isGreekLetterConsonantOrVowel(letter: "α")
    isGreekLetterConsonantOrVowel(letter: "υ")
    isGreekLetterConsonantOrVowel(letter: "δ")
    isGreekLetterConsonantOrVowel(letter: "ξ")
    isGreekLetterConsonantOrVowel(letter: "G")

// MARK: - 3. Comparing With if Statements


    // MARK: 3.1 Using an if Statement


    // MARK: 3.2 Using a switch Statement
