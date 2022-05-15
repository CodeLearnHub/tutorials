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

// MARK: - Operations and methods of Swift Sets
var europeanLanguages: Set = ["English", "Spanish", "Italian", "Greek"]
var noLanguages = Set<String>()

// MARK: The "count" property
print("Number of languages in \"europeanLanguages\": \(europeanLanguages.count)")
print("Number of languages in \"noLanguages\": \(noLanguages.count)")

print()

// MARK: The "isEmpty" property
print("Is \"europeanLanguages\" empty: \(europeanLanguages.isEmpty)")
print("Is \"noLanguages\" empty: \(noLanguages.isEmpty)")

print()

// MARK: Inserting elements
europeanLanguages.insert("French")
print("Number of languages in \"europeanLanguages\" after inserting \"French\": \(europeanLanguages.count)")

// inserting an element that already exists in the Set
europeanLanguages.insert("Spanish")
print("Number of languages in \"europeanLanguages\"after inserting \"Spanish\" again: \(europeanLanguages.count)")

print()

// MARK: "Sorting" the values of a Set
europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set

let europeanLanguagesSorted = europeanLanguages.sorted() // Array of Strings with the values of Set sorted
print(europeanLanguagesSorted)
print(europeanLanguages) // with each run, the elements will be printed in a different order

print()

// MARK: Removing elements

// MARK: remove()
print("European languages Set initially: \(europeanLanguages)\n")

var greek = europeanLanguages.remove("Greek") // can be nil
print("Removed element: \(greek ?? "\"Greek not found\"")")

print("European languages Set after removing \"Greek\": \(europeanLanguages)\n")

var lithuanian = europeanLanguages.remove("Lithuanian") // can be nil
print("Removed element: \(lithuanian ?? "\"Lithuanian not found\"")")

print("European languages Set after removing \"Lithuanian\": \(europeanLanguages)\n")

// MARK: removeFirst()
europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set

var englishRemovedTimes = 0
var spanishRemovedTimes = 0
var italianRemovedTimes = 0
var greekRemovedTimes = 0

for _ in 0...99 {
    europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set
    let language = europeanLanguages.removeFirst()
    if language == "English" {
        englishRemovedTimes += 1
    } else if language == "Spanish" {
        spanishRemovedTimes += 1
    } else if language == "Italian" {
        italianRemovedTimes += 1
    } else {
        greekRemovedTimes += 1
    }
}

print("English removed \(englishRemovedTimes) times")
print("Spanish removed \(spanishRemovedTimes) times")
print("Italian removed \(italianRemovedTimes) times")
print("Greek removed \(greekRemovedTimes) times")

print()

// MARK: remove(at:)
europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set

if let indexOfEnglish = europeanLanguages.firstIndex(of: "English") {
    let englishRemoved = europeanLanguages.remove(at: indexOfEnglish)
    
    print("Removed: \(englishRemoved)")
    print(europeanLanguages)
}

// invalid removal
//let invalidRemoval = noLanguages.remove(at: noLanguages.startIndex) // error: Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).

print()

// MARK: removeAll()
europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set

print("European language Set before removing all elements: \(europeanLanguages)\nIs it empty: \(europeanLanguages.isEmpty)")
europeanLanguages.removeAll()
print("\nEuropean language Set after removing all elements: \(europeanLanguages)\nIs it empty: \(europeanLanguages.isEmpty)")

print()

// MARK: contains()
europeanLanguages = ["English", "Spanish", "Italian", "Greek"] // resetting Set

print("European languages Set contains \"Italian\": \(europeanLanguages.contains("Italian"))")
print("European languages Set contains \"German\": \(europeanLanguages.contains("German"))")

print()

// MARK: - Mutability of Sets
//let constantSet: Set = [1, 4, 3]
//constantSet.insert(2) // Cannot use mutating member on immutable value: 'constantSet' is a 'let' constant
//constantSet.remove(1) // Cannot use mutating member on immutable value: 'constantSet' is a 'let' constant

// MARK: - For loops with Sets
let numbersSet: Set = [-4, 3, 10, 6, 2, 22, -100]
for number in numbersSet {
    print(number)
}

print()

let numbersArray = Array(numbersSet) // for a sorted array use numberSet.sorted()
for number in numbersArray {
    print(number)
}

print()

// MARK: - Operations between two Sets
let oddNumbersSet: Set = [1, 3, 5, 7, 9]            // odd numbers
let sequentialNumbersSet: Set = [1, 2, 3, 4, 5]     // sequential numbers

// MARK: Intersection
let intersectionSet = oddNumbersSet.intersection(sequentialNumbersSet)           // 1, 3, 5 (in any order)
let oppositeIntersectionSet = sequentialNumbersSet.intersection(oddNumbersSet)   // 1, 3, 5 (in any order)

// MARK: Symmetric difference
let symmetricDifferenceSet = oddNumbersSet.symmetricDifference(sequentialNumbersSet)            // 2, 4, 7, 9 (in any order)
let oppositeSymmetricDifferenceSet = sequentialNumbersSet.symmetricDifference(oddNumbersSet)   // 2, 4, 7, 9 (in any order)

// MARK: Union
let unionSet = oddNumbersSet.union(sequentialNumbersSet)            // 1, 2, 3, 4, 5, 7, 9 (in any order)
let oppositeUnionSet = sequentialNumbersSet.union(oddNumbersSet)    // 1, 2, 3, 4, 5, 7, 9 (in any order)

// MARK: Subtraction
let commonNumbersSet = oddNumbersSet.intersection(sequentialNumbersSet)                     // 1, 3, 5
let subtractingOddSetFromSequentialSet = sequentialNumbersSet.subtracting(oddNumbersSet)    // 2, 4 (in any order)
let subtractingSequentialSetFromOddSet = oddNumbersSet.subtracting(sequentialNumbersSet)    // 7, 9 (in any order)

// MARK: - Comparing two Sets

// MARK: The "==" operator
let numbersSetA: Set = [-1, 44, 10]
let numbersSetB: Set = [10, -1, 44]

let areSetsEqual = (numbersSetA == numbersSetB)         // true, order doesn't matter
let hasSymmetricProperty = (numbersSetB == numbersSetA) // true, symmetric property exists
let hasReflexiveProperty = (numbersSetA == numbersSetA) // true, a Set is equal to itself, known as the "reflexive" property

// MARK: isSubset(of:) and isSuperset(of:)
let setA: Set = [1, 2, 3, 4, 5]
let setB: Set = [1, 2, 3 ,4 ,5, 6]
let setC: Set = [1, 2, 3 ,4 ,5, 6]

let aSubseta = setA.isSubset(of: setA)      // true
let aSubsetB = setA.isSubset(of: setB)      // true
let bSubsetA = setB.isSubset(of: setA)      // false

let bSupersetB = setB.isSuperset(of: setB)  // true
let bSupersetA = setB.isSuperset(of: setA)  // true
let aSupersetB = setA.isSuperset(of: setB)  // false

let cSubsetB = setC.isSubset(of: setB)      // true
let cSupersetB = setC.isSuperset(of: setB)  // true
let bSubsetC = setB.isSubset(of: setC)      // true
let bSupersetC = setB.isSuperset(of: setC)  // true

// MARK: isStrictSubset(of:) and isStrictSuperset(of:)
let aStrictSubseta = setA.isStrictSubset(of: setA)      // false
let aStrictSubsetB = setA.isStrictSubset(of: setB)      // true
let bStrictSubsetA = setB.isStrictSubset(of: setA)      // false

let bStrictSupersetB = setB.isStrictSuperset(of: setB)  // false
let bStrictSupersetA = setB.isStrictSuperset(of: setA)  // true
let aStrictSupersetB = setA.isStrictSuperset(of: setB)  // false

let cStrictSubsetB = setC.isStrictSubset(of: setB)      // false
let cStrictSupersetB = setC.isStrictSuperset(of: setB)  // false
let bStrictSubsetC = setB.isStrictSubset(of: setC)      // false
let bStrictSupersetC = setB.isStrictSuperset(of: setC)  // false

// MARK: isDisjoint(with:)
let negativeNumbersSet: Set = [-3, -2, -1]
let positiveNumbersSet: Set = [1, 2, 3]

let positiveDisjointPositive = positiveNumbersSet.isDisjoint(with: positiveNumbersSet) // false
let positiveDisjointNegative = positiveNumbersSet.isDisjoint(with: negativeNumbersSet) // true
let negativeDisjointPositive = negativeNumbersSet.isDisjoint(with: positiveNumbersSet) // true
let negativeDisjointNegative = negativeNumbersSet.isDisjoint(with: negativeNumbersSet) // false

