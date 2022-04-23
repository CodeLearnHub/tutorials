// MARK: Range Operators

// MARK: Notes
// illegal usage
//let from6To1 = 6...1 // runtime error

// Legal operators
let negativeRange = -25 ... -5 // legal
let semiNegativeRange = -10...10 // also legal

// MARK: Closed Range Operator, ...
let from1To5 = 1...5 // 1, 2, 3, 4, 5
let from5To5 = 5...5 // 5

// MARK: Half-Open Range Operator, ..<
let from6To10Excluded = 6..<10 // 6, 7, 8, 9. Same as 6...9
let from6To6Excluded = 6..<6 // empty range

// illegal usage
//let from6To5Excluded = 6..<5 // runtime error

// MARK: One-Sided Range Operator, ...
let from5ToInfinity = 5... // [5, +∞)
from5ToInfinity.contains(4) // false
from5ToInfinity.contains(5) // true
from5ToInfinity.contains(4354) // true

//from5ToInfinity.contains(Int(Double.infinity)) // error, EXC_BAD_INSTRUCTION

let fromInfinityToThree = ...3 // (-∞, 3]
fromInfinityToThree.contains(-45345) // true
fromInfinityToThree.contains(3) // true
from5ToInfinity.contains(2) //false

let fromInfinityToTenExcluded = ..<10 // (-∞, 10)
fromInfinityToTenExcluded.contains(10) // false

// MARK: Using ranges

// MARK: for loops
let forLoopRange = 3...10
for number in forLoopRange {
    print(number)
}

//invalid
//let invalidForLoopRange = ...10
//for number in invalidForLoopRange {
//    print(number)
//}

// infinite loop, Uncomment at your own risk!
//let infiniteForLoopRange = 10...
//for number in infiniteForLoopRange {
//    print(number)
//}

// MARK: arrays
let letters = ["A", "B", "C", "D", "E", "F"]

print(letters[0...2]) // ["A", "B", "C"] but we'll use the notation "A, B, C" for brevity
print(letters[3...5]) // D, E, F

print(letters[0..<4]) // A, B, C, D

print(letters[0...0]) // A
print(letters[0..<0]) // no letters printed

print(letters[...])   // prints all letters
print(letters[..<4])  // same as 0..<4
print(letters[...3])  // same as 0...3 and 0..<4
print(letters[3...])  // same as 3...5

//print(letters[..<])   // compile error, invalid syntax
//print(letters[...10]) // runtime error, we are out of bounds
