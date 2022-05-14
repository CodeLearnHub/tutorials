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

