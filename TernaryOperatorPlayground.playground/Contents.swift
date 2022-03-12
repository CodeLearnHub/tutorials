// MARK: - Ternary Operator example

// only numbers less than 10 are allowed
func max10(number: Int) {
    let resultNumber = number < 10 ? number : 10
    print("Your number: \(number). Final number: \(resultNumber).")
}

max10(number: 3)
max10(number: -9)
max10(number: 20)

print()

// MARK: if-else equivalent function
func max10IfElse(number: Int) {
    var resultNumber: Int
    if number < 10 {
        resultNumber = number
    } else {
        resultNumber = 10
    }
    print("Your number: \(number). Final number: \(resultNumber).")
}

max10IfElse(number: 3)
max10IfElse(number: -9)
max10IfElse(number: 20)

print()

// MARK: Nested ternary operators
let number = 5
let messageNumberIsBetween3And7 = number >= 3 ? (number <= 7 ? "\(number) is between 3 and 7." : "\(number) is not between 3 and 7.") : "\(number) is not between 3 and 7."
print(messageNumberIsBetween3And7)

print()

if number >= 3 {
    if number <= 7 {
        print("\(number) is between 3 and 7.")
    } else {
        print("\(number) is not between 3 and 7.")
    }
} else {
    print("\(number) is not between 3 and 7.")
}
