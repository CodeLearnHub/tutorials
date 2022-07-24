import Foundation

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

    // MARK: 5.1 Flexible Parameter Names With Argument Labels

    // Changing the parameters' names
    func sayHi(myNameIs: String, andIAm: Int) {
        print("Hi! My name is \(myNameIs) and I'm \(andIAm) years old.")
    }

    //sayHi(myNameIs: "Dimitris", andIAm: 26) // same output as before

    // Using argument labels
    func hi(myNameIs name: String, andIAm age: Int) {
        print("Hi! My name is \(name) and I'm \(age) years old.")
    }

    //sayhi(myNameIs: "Dimitris", andIAm: 26) // same output as before

    // MARK: 5.2 Shorter Function Calls by Omitting Argument Labels
    markHeading(numbering: "5.2")

    func calculateHypotenuse(_ a: Double, _ b: Double) -> Double {
        return sqrt(pow(a, 2) + pow(b, 2))
    }

    print(calculateHypotenuse(6, 8))


    // MARK: 5.3 Completely Omit Parameters With Default Values
    markHeading(numbering: "5.3")

    func randomNumberFromZero(to upperLimit: Int = 100) {
        if upperLimit < 0 {
            return
        }
        print("Your number is: \(Int.random(in: 0...upperLimit))")
    }

    randomNumberFromZero(to: 10)
    randomNumberFromZero()

    // MARK: 5.4 Dynamic Number of Parameters With Variadic Parameters
    markHeading(numbering: "5.4")

    func multiplyAndEstimate(numbers: Int..., estimation: Int) {
        let product = numbers.reduce(1, { $0 * $1 })
        
        let verdict = product == estimation ? "You were right!" : "You were wrong..."
        
        print("The product is \(product). You estimated: \(estimation). \(verdict)")
    }

    multiplyAndEstimate(numbers: 1, 3, 100, 34, estimation: 1000)
    multiplyAndEstimate(numbers: 3, 1000, estimation: 3000)

    // MARK: 5.5 Modify the Actual Parameters With In-Out Parameters
    markHeading(numbering: "5.5")

        // MARK: 5.5.1 Regular Function
        markHeading(numbering: "5.5.1")

        func regularFuncForRaise(salary: Double) -> Double {
        //    salary = salary + (salary * 0.1) // Compile-time error: Cannot assign to value: 'salary' is a 'let' constant
            return salary + (salary * 0.1)
        }

        let salary1 = 1000.0
        var salary2 = 2000.0

        let regularSalary1 = regularFuncForRaise(salary: salary1)
        let regularSalary2 = regularFuncForRaise(salary: salary2)
        let regularSalary3 = regularFuncForRaise(salary: 3000)

        print("salary1: \(salary1) - salary2: \(salary2) - regularSalary1: \(regularSalary1) - regularSalary2: \(regularSalary2) - regularSalary3: \(regularSalary3)")

        // MARK: 5.5.2 In-Out Function
        markHeading(numbering: "5.5.2")

        func inOutFuncForRaise(salary: inout Double) {
            salary = salary + (salary * 0.1)
        }

        let salaryA = 1000.0
        var salaryB = 2000.0

        // Uncomment to see the errors

        //inOutFuncForRaise(salary: &salaryA)  // Compile-time error: Cannot pass immutable value as inout argument: 'salaryA' is a 'let' constant
        inOutFuncForRaise(salary: &salaryB)
        //inOutFuncForRaise(salary: 3000)      // Compile-time error: Cannot pass immutable value as inout argument: literals are not mutable

        print("salaryA: \(salaryA) - salaryB: \(salaryB)") // salaryB has been modified!!

// MARK: - 6. Using Functions as Types for Other Functions
markHeading(numbering: "6")

func increaseSalary(salary: Double, percentage: Double) -> Double {
    return salary + (salary * (percentage / 100.0))
}

func decreaseSalary(salary: Double, percentage: Double) -> Double {
    return salary - (salary * (percentage / 100.0))
}

let salary = 1500.0

var salaryChangeOperation: (Double, Double) -> Double = increaseSalary
print(salaryChangeOperation(salary, 50))

salaryChangeOperation = decreaseSalary
print(salaryChangeOperation(salary, 20))

    // MARK: 6.1 Using a Function Type as a Parameter to Other Swift Functions
    markHeading(numbering: "6.1")

    func announceSalaryChange(salaryOperation: ((Double, Double) -> Double),
                              salary: Double,
                              percentage: Double)
    {
        let newSalary = salaryOperation(salary, percentage)
        let modificationString = newSalary < salary ? "decreased" : "increased"
        print("Your salary of $\(salary) has been \(modificationString) by \(percentage)%.\nYour new salary is $\(newSalary).")
    }

    announceSalaryChange(salaryOperation: increaseSalary, salary: 2000, percentage: 50)
    print()
    announceSalaryChange(salaryOperation: decreaseSalary, salary: 2000, percentage: 20)

    // MARK: 6.2 Returning a Function Type From Within Other Swift Functions
    markHeading(numbering: "6.2")

    func chooseSalaryOperation(toBePromoted: Bool) -> ((Double, Double) -> Double) {
        return toBePromoted ? increaseSalary : decreaseSalary
    }

    let promoteOperation = chooseSalaryOperation(toBePromoted: true)
    let demoteOperation = chooseSalaryOperation(toBePromoted: false)

    print("Your salary increased from 2000 to \(promoteOperation(2000, 13)), by 13%.")
    print("Your salary decreased from 2000 to \(demoteOperation(2000, 10)), by 10%.")

// MARK: - 7. Define Functions Inside Functions With Nested Swift Functions
markHeading(numbering: "7")

func statsFor(range: Int...) {
    func minMax() -> (min: Int?, max: Int?) {
        return (range.min(), range.max())
    }
    
    func sum() -> Int {
        return range.reduce(0, { $0 + $1 })
    }
    
    func count() -> Int {
        return range.count
    }
    
    func mean() -> Int {
        if range.isEmpty {
            return 0
        }
        return sum() / count()
    }
    
    print("Stats:")
    print("Minimum Value: \(minMax().min ?? 0)")
    print("Maximum Value: \(minMax().max ?? 0)")
    print("Sum: \(sum())")
    print("Count: \(count())")
    print("Mean/Average: \(mean())")
}

statsFor(range: 33, 563, 4, -210, 9, 21, 45, 5, 3, 88, 4, 113, 46, 73, 65, 24, 60, 99)
