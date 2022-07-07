// MARK: Swift switch Statement

// MARK: - 1. What Is a switch Statement in Swift?

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

    print("\nSection 1.2: sayColorsInSeychellesFlag function\n")

    sayColorInSeychellesFlag(forStripe: 1)
    sayColorInSeychellesFlag(forStripe: 4)
    sayColorInSeychellesFlag(forStripe: 0)
    sayColorInSeychellesFlag(forStripe: -10)
    sayColorInSeychellesFlag(forStripe: 8)

// MARK: - 2. Characteristics of Swift's switch Statements

    // MARK: 2.1 A Switch Statement Must Be Exhaustive and Have Non-Empty Cases

    

    // MARK: 2.2 A Switch Statement Will Only Execute a Single Case by Default
    print("\nSection 2.2: sayColorsInSeychellesFlag function\n")

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


    // MARK: 2.4 Switching on Tuples to Check for Each of Their Elements


    // MARK: 2.5 Using Value Bindings to use Variables or Constants Inside the Case


    // MARK: 2.6 Using a Where Clause to Check for Additional Criteria


    // MARK: 2.7 Combining Multiple Cases at Once With Compound Cases


// MARK: - 3. Comparing With if Statements


    // MARK: 3.1 Using an if Statement


    // MARK: 3.2 Using a switch Statement
