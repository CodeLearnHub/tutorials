// MARK: Swift Dictionaries

// MARK: - Creating Dictionaries
// MARK: Creating an empty Dictionary
var emptyDictionary: [Int: String] = [:] // a mutable empty Dictionary with integer keys and String values
var anotherEmptyDictionary = [Int: String]() // another way to write it, with type inference

print(emptyDictionary.isEmpty)
print(anotherEmptyDictionary.isEmpty)

print()

// MARK: Creating a non-empty Set
var greenDictionary1: [String: String] = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"]   // no type inference
var greenDictionary2 = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"]                     // type inference

print(greenDictionary1)
print(greenDictionary2)

print()

// Invalid declarations of a Dictionary
//var invalidDictionaryKey: [Int: String] = [1: "one", 2.5: "two point five"] // Invalid, keys must have the same type
//var invalidDictionaryValue: [Int: String] = [1: "one", 2: 3] // Invalid, keys must have the same type

// Run-time error if we have two same keys
//var doublicateDictionaryKeys: [Int: String] = [1: "one", 2: "two", 1: "One"] // run-time error

// MARK: - Operations and methods of Swift Dictionaries
var greenDictionary = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"]
var noWordsDictionary = [String: String]()

// MARK: The "count" property
print("Number of words in \"greenDictionary\": \(greenDictionary.count)")
print("Number of words in \"noWordsDictionary\": \(noWordsDictionary.count)")

print()

// MARK: The "isEmpty" property
print("Is \"greenDictionary\" empty: \(greenDictionary.isEmpty)")
print("Is \"noWordsDictionary\" empty: \(noWordsDictionary.isEmpty)")

print()

// MARK: Accessing items
let englishGreen = greenDictionary["English"]   // Green
let frenchGreen = greenDictionary["French"]     // nil

// MARK: Modifying items
print("English word for \"Green\" before the change: \(greenDictionary["English"] ?? "")")
greenDictionary["English"] = "GREEN" // new value
print("English word for \"Green\" after the change: \(greenDictionary["English"] ?? "")")

print()

// Using updateValue function
greenDictionary = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"] // reset

print("English word for \"Green\" before the change: \(greenDictionary["English"] ?? "")")
let oldEnglishValue = greenDictionary.updateValue("GREEN", forKey: "English")
print("English word for \"Green\" after the change: \(greenDictionary["English"] ?? ""). The old one was: \(oldEnglishValue ?? "").")

print()

// MARK: Inserting items
greenDictionary = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"] // reset

print(greenDictionary)

greenDictionary["French"] = "Vert"                                                                              // insert a new item value for French
let nilValueForGerman = greenDictionary.updateValue("Grün", forKey: "German") ?? "No value for German before"   // insert a new item value for German, old value is nil

print(greenDictionary)
print("Old value for German: \(nilValueForGerman)")

print()

// MARK: Removing items
greenDictionary = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"] // reset

print(greenDictionary)

greenDictionary["Turkish"] = nil                                                        // Turkish is removed
let spanishRemoved = greenDictionary.removeValue(forKey: "Spanish") ?? "nil value"      // Verde

// Removing items that don't exist
greenDictionary["Portuguese"] = nil                                                     // removing an item that doesn't exist does nothing
let romanianRemoved = greenDictionary.removeValue(forKey: "Romanian") ?? "nil value"    // returns nil since that key didn't exist

print(greenDictionary)
print(spanishRemoved)
print(romanianRemoved)

print()

// MARK: - Mutability of Dictionaries
let constantDictionary = [1: 1.0, 2:2.0, 3:3.0]

//constantDictionary[4] = 4.0 // insertion not allowed
//constantDictionary[2] = nil // removal not allowed
//constantDictionary[1] = 1.1 // modification not allowed

// MARK: - Iterating through Dictionaries
greenDictionary = ["English": "Green", "Spanish": "Verde", "Greek": "Πράσινο", "Italian": "Verde", "Turkish": "Yeşil"] // reset

// Tuple
for (language, green) in greenDictionary {
    print("In \(language), \"Green\" is called \(green).")
}

print()

// "keys" property
print("The keys of \"greenDictionary\":")
for language in greenDictionary.keys {
    print(language)
}

print()

// "values" property
print("The values of \"greenDictionary\":")
for green in greenDictionary.values {
    print(green)
}

print()

// Sorted
print("The keys of \"greenDictionary\" sorted:")
for language in greenDictionary.keys.sorted() {
    print(language)
}

print()

print("The values of \"greenDictionary\" sorted:")
for green in greenDictionary.values.sorted() {
    print(green)
}
