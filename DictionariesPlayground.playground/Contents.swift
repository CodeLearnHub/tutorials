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
