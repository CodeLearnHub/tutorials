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

    private func printOnlyConsonants(ofWord word: String) {
        let vowels: [Character] = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
        for letter in word {
            if vowels.contains(letter) {
                continue
            }
            print(letter, terminator: "")
        }
        print("\n")
    }

    printOnlyConsonants(ofWord: "Code Learn Hub")

    private func countAttemptsOneToTen() {
        var number = 1                  // current number
        var attempts = 1                // attempts to reach next number
        var attemptsPerNumber = [Int]() // saving the attempts of each number, until we reach 10
        
        while true {
            let randomNumber = Int.random(in: -100...100)
            
            if number == 10 { // in order to break from the infinite loop
                break
            }
            
            if randomNumber - number != 1 { // if the number generated isn't the next integer, skip this loop
                attempts += 1
                continue
            }
            
            attemptsPerNumber.append(attempts)  // save all attempts
            attempts = 0                        // reset attempts for next progression/integer
            number += 1                         // increase the target integer
        }
        
        for (theNumber, theAttempts) in attemptsPerNumber.enumerated() {
            print("It took us \(theAttempts) attempts to go from \(theNumber + 1) to \(theNumber + 2).")
        }
    }

    countAttemptsOneToTen()

    // MARK: 2.3 The return Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.3")

    private func talkLikeSpongebob(phrase: String) {
        if phrase.isEmpty {
            return // exit the function if we have nothing to say
        }
        var finalPhrase = ""
        
        for (index, letter) in phrase.enumerated() {
            if index % 2 == 0 {
                finalPhrase.append(letter.lowercased())
            } else {
                finalPhrase.append(letter.uppercased())
            }
        }
        
        print(finalPhrase)
    }

    talkLikeSpongebob(phrase: "You can't imitate Spongebob")
    talkLikeSpongebob(phrase: "")

    print()

    private func shout(message: String) -> String {
        return message.uppercased()
    }

    print(shout(message: "I love Swift"))

    // MARK: 2.4 The fallthrough Keyword
    // Check out here our switch statement article: https://codelearnhub.com/swift-switch-statement/#22_A_Switch_Statement_Will_Only_Execute_a_Single_Case_by_Default

    // MARK: 2.5 The throw Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.5")

    enum DayError: Error {
        case notAnActualDayError(String)
    }

    private func sayDay(fromNumber number: Int) throws {
        switch number {
        case 1:
            print("I don't care if Monday's blue.")
        case 2:
            print("Tuesday's grey.")
        case 3:
            print("And Wednesday too (is grey).")
        case 4:
            print("Thursday I don't care about you.")
        case 5:
            print("It's Friday, I'm in love!")
        case 6:
            print("Saturday wait...")
        case 7:
            print("And Sunday always comes too late")
        default:
            throw DayError.notAnActualDayError("NotAnActualDayError: There's no day for number \"\(number)\".\n")
        }
        
        print("Song: Friday I'm in Love - The Cure.\n")
    }

    do {
        try sayDay(fromNumber: 1)
        try sayDay(fromNumber: 10)
    } catch DayError.notAnActualDayError(let message) {
        print(message)
    }


    // MARK: 2.6 The guard Keyword
    markHeading3(title: "\(HeadingWordings.section) 2.6")

    private func jackpot(number: Int) {
        let eligibleNumbers = -100...100
        
        guard eligibleNumbers.contains(number) else {
            print("Your number must be in the range [-100, 100]")
            return
        }
        
        let selectedNumber = Int.random(in: -100...100)
        
        guard number == selectedNumber else {
            print("Selected number was \(selectedNumber). Better luck next time!")
            return
        }
        
        print("Congratulations! You hit the jackpot!")
    }

    jackpot(number: 200)
    jackpot(number: 50)
    jackpot(number: 4)

    // MARK: 2.7 Labeled Statements
    markHeading3(title: "\(HeadingWordings.section) 2.7")
