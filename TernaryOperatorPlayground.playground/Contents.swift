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

// MARK: Limitation of ternary operators
// the following cannot be written with a ternary operator
var aNumber = 10
if aNumber == 10 {
    print(aNumber)
} else {
    aNumber = 0
}

let invalid = (aNumber == 10 ? print(aNumber) : 0) // INVALID: Result values in '? :' expression have mismatching types '()' and 'Int'
(aNumber == 10 ? print(aNumber) : 0)               // INVALID: same error as above

aNumber == 10 ? print(aNumber) : print(0)          // VALID: it isn't saved in a variable since it doesnt return anything
let alsoValid = (aNumber == 10 ? aNumber : 0)      // VALID: each path returns an integer, which is saved on our constant "alsoValid"
