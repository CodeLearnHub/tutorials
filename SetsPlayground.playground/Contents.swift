// MARK: Swift Sets

// MARK: - Creating Sets

// MARK: Creating an empty Set
var emptyStringSet: Set<String> = [] // a mutable empty Set of Strings
var anotherEmptyStringSet = Set<String>() // another way to write it, with type inference

print(emptyStringSet.isEmpty)
print(anotherEmptyStringSet.isEmpty)

print()

// MARK: Creating a non-empty Set
var colorsSet: Set<String> = ["Red", "Green", "Yellow", "Fuchsia", "Black", "White"]    // Set
var colorsSet2: Set = ["Red", "Green", "Yellow", "Fuchsia", "Black", "White"]           // Set, written in a briefer way
var colorsArray = ["Red", "Green", "Yellow", "Fuchsia", "Black", "White"]               // Array, since we didn't explicitly state it as a Set

print("The type of \"colorsSet\" is: \(type(of: colorsSet))")
print("The type of \"colorsSet2\" is: \(type(of: colorsSet2))")
print("The type of \"colorsArray\" is: \(type(of: colorsArray))")

print()

// Invalid declaration of a Set
//var invalidSet: Set = [1, 55, 5.7, ""] // Invalid, all elements must be of the same type

// However, this is valid
var validSet: Set = [4, 66.4]               // 4 is converted into Double
var alsoValidSet: Set<Double> = [4, 66.4]   // same as above

print(validSet)
print(alsoValidSet)

// This is invalid
//var invalidNumberSet: Set<Int> = [4, 66.4] // Invalid, 66.4 is not an Int


print()
