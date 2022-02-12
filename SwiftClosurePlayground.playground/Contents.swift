// MARK: No arguments and no return type closure
let helloWorldClosure = {
    print("Hello World!")
}

helloWorldClosure()

print()

// MARK: Closures with arguments but no return value
let sumTwoIntegersClosure = { (firstOperand: Int, secondOperand: Int) in
    print("The sum is \(firstOperand + secondOperand).")
}

sumTwoIntegersClosure(10, 3)

print()

// MARK: A closure that adds numbers an arbitrary amount of integers
let sumIntegersClosure = { (operands: Int...) in
    let sum = operands.reduce(0, +)
    print("The sum is \(sum).")
}

sumIntegersClosure(3, 7, 55, 100)
sumIntegersClosure(99, -4, 1)
sumIntegersClosure(5)

print()

// MARK: A closure that returns a random number
let randomNumberClosure = { () -> Double in
    return Double.random(in: 0...100)
}

for index in 1...10 {
    print("\(index). Random number: \(randomNumberClosure())")
}

print()

// MARK: A closure with arguments and return value
let capitalizeStringClosure = { (theString: String) -> String in
    return theString.uppercased()
}

let phrase = capitalizeStringClosure("The quick brown fox jumps over the lazy dog.")
print(phrase)

print()

// MARK: Closures as parameters to functions
func applyOperation(firstOperand number1: Double,
                    secondOperand number2: Double,
                    operationClosure closure: (Double, Double) -> Double) -> Double {
    print("Applying arithmetic operation between \(number1) and \(number2)")
    
    let result = closure(number1, number2)
    return result
}

let additionClosure = { (num1: Double, num2: Double) -> Double in
    return num1 + num2
}

let addtionOperationResult = applyOperation(firstOperand: 4, secondOperand: 5, operationClosure: additionClosure)
print("The addition result is \(addtionOperationResult).")

print()

let multiplicationClosure = { (num1: Double, num2: Double) -> Double in
    return num1 * num2
}

let multiplicationOperationResult = applyOperation(firstOperand: 18, secondOperand: 25, operationClosure: multiplicationClosure)
print("The multiplication result is \(multiplicationOperationResult).")

print()

// MARK: A trailing closure
func applyOperationOnNumber(number: Int, operationClosure: () -> Void) {
    print("The number is: \(number)")
    operationClosure()
}

// Calling the function without the trailing closure syntax
applyOperationOnNumber(number: 34 , operationClosure: {
    print("Its double is: \(34 * 2)")
})

print()

// Calling the function with a trailing closure syntax
applyOperationOnNumber(number: 21) {
    print("Its power of two is: \(21 * 21)")
}

// More than one trailing closures
func performActionsAfterPrinting(message: String, firstAction: (() -> Void), secondAction: (() -> Void)) {
    print(message)
    firstAction()
    secondAction()
}

print()

performActionsAfterPrinting(message: "First message") {
    print("Another message")
} secondAction: {
    let randomInteger = Int.random(in: 0...10)
    print("A random number: \(randomInteger)")
}

print()

// MARK: Capturing Values
// incorrect version
func makeNextEvenNumberFunctionIncorrect() -> () -> Int {
    return {
        var number = 0
        number += 2
        return number
    }
}

let getNextEvenNumberClosureIncorrect = makeNextEvenNumberFunctionIncorrect()
for _ in 1...5 {
    print(getNextEvenNumberClosureIncorrect())
}

print()

// correct version
func makeNextEvenNumberFunctionCorrect() -> () -> Int {
    var number = 0
    return {
        number += 2
        return number
    }
}

let getNextEvenNumberClosureCorrect = makeNextEvenNumberFunctionCorrect()
for _ in 1...5 {
    print(getNextEvenNumberClosureCorrect())
}

print()

// MARK: Escaping closures
var printAction = {}

func setPrintAction(action: @escaping () -> Void) {
    print("The action of the escapingFunction will be set.")
    printAction = action
}

setPrintAction(action: {
    print("printAction will print this now")
})

printAction()
