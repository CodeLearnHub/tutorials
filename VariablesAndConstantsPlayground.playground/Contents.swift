// MARK: Declaring variables and constants
// Declaring a variable
var myVariable: String = "This is a variable"

// Declaring a constant
let myConstant: String = "This is a constant"

// changing the value of a variable
myVariable = "I have a new value"

// constants cannot change their value, uncomment (remove the // of the next line) to see the corresponding error
//myConstant = "I can't change my value"

// multiple variables and constants in the same line
var variable1: Int = 1, variable2: String = "another variable", variable3: Bool = false
let constant1: Int = 5, constant2: Bool = true

// declaring variables and constants from other variables and constants
var numberFive: Int = 5
let numberTen: Int = 10

var numberFiveVariable: Int = numberFive // 5  - declaring a variable from another variable
var numberTenVariable: Int = numberTen   // 10 - declaring a variable from a constant
let numberFiveConstant: Int = numberFive // 5  - declaring a constant from a variable
let numberTenConstant: Int = numberTen   // 10 - declaring a constant from another constant

// the following is not possible as the types must be the same, uncomment (remove the // of the next line) to see the corresponding error
//let myDouble: Double = 4.5
//let myNumber: Int = myDouble

// MARK: Type annotations
var anIntVariable: Int = 55
var anotherIntVariable = 12

// type annotation when declaring variables and constants from other variables and constants
let message = "Hello world"
let copiedMessage = message // copiedMessage is a String variable now

// MARK: Types of variables and constants

// Int and Uint

//Int
let smallestInt = Int.min // -9223372036854775808
let largestInt = Int.max  // 9223372036854775807

// UIInt
let smallestUInt = UInt.min // 0
let largestUInt = UInt.max  // 18446744073709551615

// Int vs UInt
let anInteger: Int = 5  // this is an Int
let anotherInteger = 5  // this is also an Int
let aUInteger: UInt = 5 // this is a UInt

// Float and Double
let aFloatNumber: Float = -5.2      // this a Float
let aDoubleNumber: Double = 15.986  // this a Double
let anotherDouble = 54.0            // this is also a Double

// Character and String
let letterD: Character = "C"            // this is a Character
let aWord: String = "Let's learn Swift" // this is a String
let letterString = "C"                  // this is also a String

// Bool
let aTrueBool = true
let aFalseBool = false

// MARK: Naming variables and constants
let _underscoreConstant = "_"   // names can begin with an underscore
let year2022 = 2022             // numbers that are not in the beginning of the name (the first character of the can't be a number)
let 😏 = "smirk"                // names of variables can be emojis
let ελληνικά = "greek"          // different alphabets

var `for` = "for"               // even reserved keywords, surrounded in backticks (`)
`for` = "for loop"              // always used with backticks

// MARK: Printing variables and constants
let myMessage = "Swift is fun!"
print(myMessage)                                    // printing only our constant
print("My message to the world is: \(myMessage)")   // printing our constant as part of another String
