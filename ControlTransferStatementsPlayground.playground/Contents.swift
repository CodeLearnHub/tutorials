// MARK: Swift Control Transfer Statements

import Foundation

// MARK: - 2. The Control Transfer Statements

    // MARK: 2.1 The break Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.1")

        // MARK: 2.1.1 Using break inside a loop
        markHeading4(title: "\(HeadingWordings.section) 2.1.1")

        private func countRepetitionsToGenerate(number: Int) {
            var repetitions = 0
            let acceptableRange = -100...100
            
            if acceptableRange.contains(number) {
                while true {
                    repetitions += 1
                    let randomNumber = Int.random(in: acceptableRange)
                    if randomNumber == number {
                        break
                    }
                }
                
                print("It took \(repetitions) repetitions to generate the number \"\(number)\".")
            }
        }

        countRepetitionsToGenerate(number: 4)

        // MARK: 2.1.2 Using break inside a switch statement
        markHeading4(title: "\(HeadingWordings.section) 2.1.2")

        private func switchBreakExample(number: Int) {
            switch number {
            case 1, 2, 3, 4, 5:
                print("case for 1-5")
            case 6:
                break // don't handle this case
            case 7, 8, 9:
                let message = "Your number is: "
                if number == 7 {
                    print("\(message)a Lucky seven")
                    break
                }
                print("8 or 9")
            default:
                print("Your number is \(number)")
            }
            
            print("Thank you\n")
        }

        switchBreakExample(number: 2)
        switchBreakExample(number: 6)
        switchBreakExample(number: 7)
        switchBreakExample(number: 9)
        switchBreakExample(number: 110)

    // MARK: 2.2 The continue Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.2")

    // MARK: 2.3 The return Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.3")

    // MARK: 2.4 The fallthrough Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.4")

    // MARK: 2.5 The throws Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.5")

    // MARK: 2.6 The guard Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.6")

    // MARK: 2.7 Labeled Statements
    markHeading3(title: "\(HeadingWordings.section) 2.7")
