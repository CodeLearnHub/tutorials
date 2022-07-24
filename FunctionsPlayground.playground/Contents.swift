// MARK: ArticleName

// MARK: - 2. The Simplest Function in Swift
markHeading(numbering: "2")

func printMyMessage() {
    print("My first function!")
}

printMyMessage()

// MARK: - 3. Functions With One or More Parameters
markHeading(numbering: "3")

func sayHi(name: String, age: Int) {
    print("Hi! My name is \(name) and I'm \(age) years old.")
}

sayHi(name: "Dimitris", age: 26)
sayHi(name: "Akis", age: 25)
sayHi(name: "John", age: 25)
//sayHi(age: 26, name: "Dimitris") // Argument 'name' must precede argument 'age'

    // MARK: 3.1 When Are Two Swift Functions Different?
    func sayHi(name: String) {}                 // 1 - unique, different number of parameters
    func sayHi(name: String, age: Double) {}    // 2 - unique, same number of parameters but different type for one of them
    func sayHi(fullName: String, age: Int) {}   // 3 - unique, same number of parameters, same type of parameters in same order but different name for one of them
    func sayHi(age: Int, name: String) {}       // 4 - unique, similar to case 2
    func sayHi() {}                             // 5 - unique, similar to case 1

// MARK: - 4. Functions With One or More Return Types
markHeading(numbering: "4")

    // MARK: 4.1 Swift Functions That Return a Single Value
    markHeading(numbering: "4.1")

    func calculatePercentage(percentage: Double, number: Double) -> Double {
        return number * (percentage / 100)
    }

    print(calculatePercentage(percentage: 13.83, number: 145))                      // returned value used immediately

    let twentySevenPercentOf50 = calculatePercentage(percentage: 27, number: 50)    // return value is saved in a constant
    print(twentySevenPercentOf50)

    calculatePercentage(percentage: 51, number: 6)                                  // return value is ignored

    // Another way to write single-line return functions (single or multiple values)
    func calculatePercentageV2(percentage: Double, number: Double) -> Double {
        number * (percentage / 100)
    }

    // MARK: 4.2 Swift Functions That Return Multiple Values
    markHeading(numbering: "4.2")

    func meanMedian(numbers: [Int]) -> (mean: Double, median: Int)? {
        if numbers.isEmpty {
            return nil
        }
        let sortedNumbers = numbers.sorted()
        
        let meanNumber = Double(sortedNumbers.reduce(0, { $0 + $1 })) / Double(sortedNumbers.count)
        let medianNumber = sortedNumbers[sortedNumbers.count / 2]
        
        return (meanNumber, medianNumber)
    }

    func printMeanMedian(meanMedian: (mean: Double, median: Int)?) {
        if let meanMedianResult = meanMedian {
            print("Mean: \(meanMedianResult.mean), Median: \(meanMedianResult.median)")
        } else {
            print("Initial array of numbers was empty.")
        }
    }

    printMeanMedian(meanMedian: meanMedian(numbers: [22, 41, -4, 19, 7, 8, 33, 50, 14, 4, 9, 29, 30]))
    printMeanMedian(meanMedian: meanMedian(numbers: []))

// MARK: - 5. Characteristics of Swift Function Parameters
markHeading(numbering: "5")
