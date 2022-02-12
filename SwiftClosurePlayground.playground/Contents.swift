// No arguments and no return type closure
let helloWorldClosure = {
    print("Hello World!")
}

helloWorldClosure()

print()

// Closures with arguments but no return value
let sumTwoIntegersClosure = { (firstOperand: Int, secondOperand: Int) in
    print("The sum is \(firstOperand + secondOperand).")
}

sumTwoIntegersClosure(10, 3)

print()

// A closure that adds numbers an arbitrary amount of integers
let sumIntegersClosure = { (operands: Int...) in
    let sum = operands.reduce(0, +)
    print("The sum is \(sum).")
}

sumIntegersClosure(3, 7, 55, 100)
sumIntegersClosure(99, -4, 1)
sumIntegersClosure(5)

print()

// A closure that returns a random number
let randomNumberClosure = { () -> Double in
    return Double.random(in: 0...100)
}

for index in 1...10 {
    print("\(index). Random number: \(randomNumberClosure())")
}

print()

// A closure with arguments and return value
let capitalizeStringClosure = { (theString: String) -> String in
    return theString.uppercased()
}

let phrase = capitalizeStringClosure("The quick brown fox jumps over the lazy dog.")
print(phrase)

print()

// Closures as parameters to functions
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

// A trailing closure
func printSpecialMessage(message: String, printClosure: () -> Void) {
    print(message)
    printClosure()
}

// Calling the function without the trailing closure syntax
printSpecialMessage(message: "Hello there", printClosure: {
    print("General Kenobi")
})

print()

// Calling the function with a trailing closure syntax
printSpecialMessage(message: "Hello again") {
    print("You again....")
}

// 
