// MARK: Swift Tuple

// MARK: - 2. How to Create a Tuple?
let greekFlagColors = ("Sky Blue", "White")

// MARK: - 3. Accessing and Modifying a Tuple’s Elements
markHeading(numbering: "3")

    // MARK: 3.1 Accessing a Tuple’s Elements
    markHeading(numbering: "3.1")

    print(greekFlagColors.0)
    print(greekFlagColors.1)

    print()

    let greekFlagColors2 = (color1: "Sky Blue", color2: "White")
    print(greekFlagColors2.color1)
    print(greekFlagColors2.color2)

    print()

    let greekFlagColors3 = ("Sky Blue", color2: "White")
    print(greekFlagColors3.0)
    print(greekFlagColors3.color2)

    print()

    // equality check
    print(greekFlagColors == greekFlagColors2)
    print(greekFlagColors == greekFlagColors3)

    // MARK: 3.2 Modifying a Tuple’s Elements
    markHeading(numbering: "3.2")

    // Uncomment to see the errors
//    greekFlagColors.0 = "Blue"          // Compile-time error: Cannot assign to property: 'greekFlagColors' is a 'let' constant
//    greekFlagColors.1 = "0x000000"      // Compile-time error: Cannot assign to property: 'greekFlagColors' is a 'let' constant
//    greekFlagColors = ("white", "blue") // Compile-time error: Cannot assign to property: 'greekFlagColors' is a 'let' constant

    var greekFlagColorsVariable = ("Sky Blue", "White")

    greekFlagColorsVariable.0 = "Blue"
    greekFlagColorsVariable.1 = "0x000000"
    print(greekFlagColorsVariable)

    greekFlagColorsVariable = ("white", "blue")
    print(greekFlagColorsVariable)

// MARK: 4. Decomposing a Tuple
markHeading(numbering: "4")

let dimitris = (name: "Dimitris", age: 26) // from 2 values to 1 tuple
let (dimitrisName, dimitrisAge) = dimitris // from 1 tuple to 2 values, decomposition

print(dimitrisName)
print(dimitrisAge)

print()

let (_, dimitrisAgeAgain) = dimitris
print(dimitrisAgeAgain)

// MARK: 5. Adding and Removing Values in a Tuple
markHeading(numbering: "5")

// Uncomment to see the errors
//dimitris.2 = "Tasios"   // Compile-time error: Value of tuple type '(name: String, age: Int)' has no member '2'
//dimitris.remove(26)     // Compile-time error: Value of tuple type '(name: String, age: Int)' has no member 'remove'
