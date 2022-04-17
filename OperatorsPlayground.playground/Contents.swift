// MARK: Swift Operators

// MARK: - Assignment Operators

// MARK: Assignment Operator, =
var myVar = 4 // the assignment operator "=" creates a new variable with the value "4"
myVar = 5 // the assignment operator updates the variable with the value "5"

let aString = "Hello world!" // assigning a String value to a constant

// the following cannot be done, since they don't have the same type (Int assigned to String variable)
var anotherString = "Hello again"
//anotherString = 5 // compilation error

// MARK: Addition Assignment Operator, +=
let myConstant = 3
var varForAddition = 5
varForAddition += myConstant // 8, this is equal to varForAddition = varForAddition + myConstant

var messageForConcatenation = "Code Learn"
messageForConcatenation += " Hub" // "Code Learn Hub", concatenation between Strings, with the += operator

// MARK: Subtraction Assignment Operator, -=
var varForSubtraction = 10
varForSubtraction -= 4 // 6, equal to varForSubtraction = varForSubtraction - 4

// MARK: Multiplication Assignment Operator, *=
var varForMultiplication = 7
varForMultiplication *= 8 // 56, equal to varForMultiplication = varForMultiplication * 4

// MARK: Division Assignment Operator, /=
var varForDivision = 100
varForDivision /= 25 // 4, equal to varForDivision = varForDivision / 4

// MARK: Remainder Assignment Operator, %=
var varForRemainder = 100
varForRemainder /= 25 // 0, equal to varForDivision = varForDivision % 4

// MARK: - Arithmetic Operators

// MARK: Addition Operator, +
let addition = 5 + 2 // 7
let clh = "Code " + "Learn Hub"

// MARK: Subtraction Operator, "-"
let subtraction = 100 - 99 // 1

// MARK: Multiplication Operator, *
let multiplication = 30 * 3 // 90

// MARK: Division Operator, /
let division = 30 / 2 // 15

let divisionOfInts = 30 / 4 // 7
let divisionOfDoubles = 30 / 4.0 // 7.5, same as 30.0 / 4 and 30.0 / 4.0

// MARK: Remainder or Modulo Operator, %
let remainderOrModulo = 30 % 4 // 2

// MARK: Unary Minus Operator
let fiftyTwo = 52
let unaryMinus = -fiftyTwo // -52, operator used 1 (odd) time
let doubleUnaryMinus = -(-fiftyTwo) // -(-52) = 52, operator used 2 (even) times

// MARK: Unary Plus Operator
let forty = 40
let unaryPlus = +40 // 40, identical to the statement above

// MARK: - Comparison Operators

// MARK: Equal To Operator, ==
let thirtySix = 36
let isEqualTo36 = thirtySix == 36 // true, 36=36
let isEqualTo33 = (thirtySix == 33) // false, 36≠33. Parentheses are used for clarity

// MARK: Not Equal To Operator, !=
let twentyTwo = 22
let isNotEqual22 = (twentyTwo != 22) // false, 22=22
let isNotEqual23 = (twentyTwo != 23) // true, 22≠23

// MARK: Greater Than Operator, >
let sixtyNine = 69
let isGreaterThan70 = (sixtyNine > 70) // false, 69<70
let isGreaterThan68 = (sixtyNine > 68) // true, 69>68
let isGreaterThan69 = (sixtyNine > 69) // false, 69=69 but this operator doesn't check for equality

// MARK: Greater Than Or Equal Operator, >=
let seventySix = 76
let isGreaterThanOrEqualTo77 = (seventySix >= 77) // false, 76<77
let isGreaterThanOrEqualTo75 = (seventySix >= 75) // true, 76>75
let isGreaterThanOrEqualTo76 = (seventySix >= 76) // true, 76=76, this operator checks for equality

// MARK: Less Than Operator, <
let fiftyNine = 59
let isLessThan60 = (fiftyNine < 60) // true, 59<60
let isLessThan58 = (fiftyNine < 58) // false, 59>58
let isLessThan59 = (fiftyNine < 59) // false, 59=59 but this operator doesn't check for equality

// MARK: Less Than Or Equal To Operator, <=
let eightyOne = 81
let isLessThanOrEqualTo82 = (eightyOne <= 82) // true, 81<82
let isLessThanOrEqualTo80 = (eightyOne <= 80) // false, 81>80
let isLessThanOrEqualTo81 = (eightyOne <= 81) // true, 81=81, this operator checks for equality

// MARK: Identity Equality Operator, ===
class SimpleClass {
    var classNumber = 0
    
    init(number: Int) {
        self.classNumber = number
    }
}

let classA = SimpleClass(number: 5)
let classB = SimpleClass(number: 5)
let classC = classA

let aPointsToSameAsB = (classA === classB) // false, their values inside are the same but not the objects themselves
let aPointsToSameAsC = (classA === classC) // true, classC points to classA


// MARK: Identity Inequality Operator, !==
let simpleClassA = SimpleClass(number: 4)
let simpleClassB = SimpleClass(number: 5)
let simpleClassC = simpleClassA

let aPointsToDifferentThanB = (simpleClassA !== simpleClassB) // true, different references
let aPointsToDifferentThanC = (simpleClassA !== simpleClassC) // false, same references

// MARK: - Logical Operators

// MARK: Logical AND Operator, &&
let andTrueOperand = true
let andFalseOperand = false

let trueOperandAndTrue = (andTrueOperand && true) // true, true AND true -> true
let trueOperandAndFalse = (andTrueOperand && false) // false, true AND false -> false

let falseOperandAndTrue = (andFalseOperand && true) // false, false AND true -> false
let falseOperandAndFalse = (andFalseOperand && false) // false, false AND false -> false

// MARK: Logical OR Operator, ||
let orTrueOperand = true
let orFalseOperand = false

let trueOperandOrTrue = (orTrueOperand || true) // true, true OR true -> true
let trueOperandOrFalse = (orTrueOperand || false) // true, true OR false -> true

let falseOperandOrTrue = (orFalseOperand || true) // true, false OR true -> true
let falseOperandOrFalse = (orFalseOperand || false) // false, false OR false -> false

// MARK: Logical NOT Operator, !
let notTrueOperand = true
let notFalseOperand = false

let notTrue = !notTrueOperand // false, NOT true -> false
let notFalse = !notFalseOperand // true, NOT false -> true

// MARK: - Miscellaneous Operators

// MARK: Ternary Operator, ? :
// Check our article here: https://codelearnhub.com/swift-ternary-operator-tutorial/

// MARK: Nil-Coalescing Operator, ??
// Check our article here: https://codelearnhub.com/swift-optionals/#35_Nil-Coalescing_Operator/

// MARK: Range Operators

// MARK: Closed Range Operator, ...
let from1To5 = 1...5 // 1, 2, 3, 4, 5
let from5To5 = 5...5 // 5

// illegal usage
//let from6To1 = 6...1 // runtime error

// MARK: Half-Open Range Operator, ..<
let from6To10Excluded = 6..<10 // 6, 7, 8, 9. Same as 6...9
let from6To6Excluded = 6..<6 // 6

// illegal usage
//let from6To5Excluded = 6..<5 // runtime error

// MARK: One-Sided Range Operator, ...
let from5ToInfinity = 5... // [5, +∞)
from5ToInfinity.contains(4) // false
from5ToInfinity.contains(5) // true
from5ToInfinity.contains(4354) // true

let fromInfinityToThree = ...3 // (-∞, 3]
fromInfinityToThree.contains(-45345) // true
fromInfinityToThree.contains(3) // true
from5ToInfinity.contains(2) //false

let fromInfinityToTenExcluded = ..<10 // (-∞, 10)
fromInfinityToTenExcluded.contains(10) // false
