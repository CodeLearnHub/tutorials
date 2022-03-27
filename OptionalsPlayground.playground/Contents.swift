// MARK: - Declaring an optional
var number: Int? = 5
print(number)

number = nil
print(number)

print()

// MARK: - Unwrapping optionals

// MARK: Forced unwrapping
var message: String? = "An optional message."
print(message!)

print()

message = nil
//print(message!) // our program will crash here

print()

// MARK: If-else block
func printNumberIfNotNil(number: Int?) {
    if number != nil {
        print(number!)
    } else {
        print("Variable is nil!")
    }
}

var ifElseVariable: Int? = 10
printNumberIfNotNil(number: ifElseVariable)

ifElseVariable = nil
printNumberIfNotNil(number: ifElseVariable)

print()

// MARK: Optional binding

// MARK: If let/if var statement
func addTwoIntegers(firstOperand: Int?, secondOperand: Int?) -> Int? {
    if let number1 = firstOperand {
        if let number2 = secondOperand {
            return number1 + number2
        } else {
            return nil
        }
    } else {
        return nil
    }
}

// clearer version, same as above
func addTwoIntegersV2(firstOperand: Int?, secondOperand: Int?) -> Int? {
    if let number1 = firstOperand, let number2 = secondOperand {
        return number1 + number2
    } else {
        return nil
    }
}

print(addTwoIntegers(firstOperand: 7, secondOperand: 5))     // 7 + 5 = 12
print(addTwoIntegers(firstOperand: 7, secondOperand: nil))   // 7 + nil = nil
print(addTwoIntegers(firstOperand: nil, secondOperand: 5))   // nil + 5 = nil
print(addTwoIntegers(firstOperand: nil, secondOperand: nil)) // nil + nil = nil

print()

if let tenPlusTwo = addTwoIntegers(firstOperand: 10, secondOperand: 2) {
    print(tenPlusTwo)
}

// MARK: Guard let/guard var statement
func addTwoIntegersGuard(firstOperand: Int?, secondOperand: Int?) -> Int? {
    guard let number1 = firstOperand else {
        return nil // must provide an alternative
    }
    
    guard let number2 = secondOperand else { // no extra ident, easily readable
        return nil
    }
    
    return number1 + number2 // both values available outside of guard statement
}

func addTwoIntegersIf(firstOperand: Int?, secondOperand: Int?) -> Int? {
    var result: Int?
    
    if let number1 = firstOperand {
        if let number2 = secondOperand { // extra ident, code becomes like a "pyramid"
            result = number1 + number2
        } // no alternative is provided; might have unpredictable behavior (what's the value of "result"?)
    } // number1 and number2 not accessible after this line
    
    return result
}

func addTwoIntegersGuardV2(firstOperand: Int?, secondOperand: Int?) -> Int? {
    guard let number1 = firstOperand, let number2 = secondOperand else {
        return nil
    }
    
    return number1 + number2
}

print()

// MARK: Optional chaining
struct Person {
    let name: String
    let numberOfCarsOwned: Int?
}

struct CarDealership {
    var todaysCustomers = [Person]()
}

let customerList = [Person(name: "Dimitris", numberOfCarsOwned: 1),
                    Person(name: "Akis", numberOfCarsOwned: nil),
                    Person(name: "Ignis", numberOfCarsOwned: 2)]

let myCarDealership = CarDealership(todaysCustomers: customerList)

let carsOfDimitris = myCarDealership.todaysCustomers.first(where: { $0.name == "Dimitris"})?.numberOfCarsOwned // Optional(1)
print(carsOfDimitris)

let carsOfJohn = myCarDealership.todaysCustomers.first(where: { $0.name == "John"})?.numberOfCarsOwned // nil
print(carsOfJohn)

print()

// MARK: Nil-coalescing operator
var aNumber: Int? = 4
let safeNumber = aNumber ?? 55          // prints 4

aNumber = nil
let anotherSafeNumber = aNumber ?? 43   // prints 43

print(safeNumber)
print(anotherSafeNumber)
