// MARK: Swift Arrays

// MARK: - Creating arrays

// MARK: Creating empty arrays
var emptyStringArray: [String] = [] // a mutable empty array of Strings
var anotherEmptyStringArray = [String]() // another way to write it, with type inference

print(emptyStringArray.isEmpty)
print(anotherEmptyStringArray.isEmpty)

// Invalid syntax
//var invalidEmptyArray = [] // compile-time error, type of array has not been declared, we need to explicitly declare it

print()

// MARK: Creating non-empty arrays
var nonEmptyArray: [Double] = [2.0, -5.2, 3.3, 10.2]
var simplerNonEmptyArray = [2.0, -5.2, 3.3, 10.2] // type of array is implied by type inference
//var invalidArray: [Int] = [3, 5.6, "Six"] // invalid, the array only accepts integers

//MARK: Creating non-empty arrays with a default value
var clhArray = Array(repeating: "Code Learn Hub", count: 5)
var defaultIntegersArray = Array(repeating: 3, count: 3)

private func printArray(array: [Any], message: String? = nil) {
    if let message = message {
        print(message)
    }
    
    for element in array {
        print(element)
    }
    
    print()
}

printArray(array: clhArray)
printArray(array: defaultIntegersArray)

// MARK: - Operations and methods of arrays

//MARK: Accessing elements of an array
var colors = ["Red", "Green", "Blue", "Yellow"]
let firstColor = colors[0]
print(firstColor)

print()

// invalid accessing
//let invalidColor1 = colors[-1]  // run-time error! negative numbers are always out of range
//let invalidColor2 = colors[4]   // any number greater than (number of elements - 1) = 3 is out of range

//MARK: The "count" property
let numberOfElementsInColorsArray = colors.count // 4

//MARK: The "isEmpty" property
let isColorsEmpty = colors.isEmpty // false

//MARK: Modify the value of an element at a specific index
printArray(array: colors)
colors[0] = "Magenta" // we modify the value of the first element
printArray(array: colors)

// MARK: Adding an element to the array
var fruit = ["Apple", "Banana", "Pear"]
printArray(array: fruit, message: "Fruit array initially:")

// Add at the end of the array
fruit.append("Peach")
printArray(array: fruit, message: "Adding \"Peach\" at the end of the array (\"append\" function):")

fruit += ["Pineapple"]
printArray(array: fruit, message: "Adding \"Pineapple\" at the end of the array (\"+=\" operator):")

var moreFruit = ["Grape", "Strawberry"]

fruit.append(contentsOf: moreFruit)
printArray(array: fruit, message: "Adding two fruit with the \"append(contentsOf)\" function:")

// alternatively
//fruit.append(contentsOf: ["Grape", "Strawberry"])

var evenMoreFruit = ["Cherry", "Mango"]
fruit += evenMoreFruit
printArray(array: fruit, message: "Adding two fruit with the \"+=\" operator:")

// alternatively
//fruit += ["Cherry", "Mango"]

// Add at specific index
fruit = ["Apple", "Banana", "Pear"] // reduce size for simplicity
printArray(array: fruit, message: "Fruit array initially:")

fruit.insert("Kiwi", at: 1)
printArray(array: fruit, message: "Inserting \"Kiwi\" at second place:")

fruit.insert(contentsOf: moreFruit, at: 2)
printArray(array: fruit, message: "Inserting two more fruits at third place:")

// MARK: Removing an element from an array
var vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"]
printArray(array: vegetables, message: "Vegetables array initially:")

// Remove at specific index
let removedVegetable = vegetables.remove(at: 3) // Garlic is removed
printArray(array: vegetables, message: "Removing \"\(removedVegetable)\":")

// Remove first and remove last
vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"] // resetting array
printArray(array: vegetables, message: "Vegetables array initially:")

let removedFirstVegetable = vegetables.removeFirst()
printArray(array: vegetables, message: "Removing the first vegetable (\(removedFirstVegetable)):")

let removedLastVegetable = vegetables.removeLast()
printArray(array: vegetables, message: "Removing the last vegetable (\(removedLastVegetable)):")

// Remove multiple elements starting from one index
vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"] // resetting array
printArray(array: vegetables, message: "Vegetables array initially:")

vegetables.removeSubrange(1...3)
printArray(array: vegetables, message: "Removing the second, third, and fourth vegetables:")

// Invalid ranges
//vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"]
//vegetables.removeSubrange(-1...3) // run-time error, Swift/Array.swift:1712: Fatal error: Array replace: subrange start is negative
//vegetables.removeSubrange(1...10)   // run-time error, Swift/Array.swift:1715: Fatal error: Array replace: subrange extends past the end

// Remove first k elements or last k elements
vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"] // resetting array
printArray(array: vegetables, message: "Vegetables array initially:")

vegetables.removeFirst(2)
printArray(array: vegetables, message: "Removing first two vegetables:")

vegetables.removeLast(2)
printArray(array: vegetables, message: "Removing last two vegetables:")

// Invalid removals
//vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"]
//vegetables.removeFirst(10)    // run-time error, Swift/RangeReplaceableCollection.swift:599: Fatal error: Can't remove more items from a collection than it has
//vegetables.removeLast(10)     // run-time error, Swift/RangeReplaceableCollection.swift:885: Fatal error: Can't remove more items from a collection than it contains

// Removing all elements
vegetables = ["Artichoke", "Lettuce", "Onion", "Garlic", "Potato"] // resetting array
printArray(array: vegetables, message: "Vegetables array initially:")

vegetables.removeAll()
printArray(array: vegetables, message: "Removing all vegetables")
print(vegetables.isEmpty)

print()

// MARK: Mutating constant arrays
//let clhWebsite = ["Code", "Learn", "Hub"]
//clhWebsite[0] = "Swift"     // compile-time error, Cannot assign through subscript: 'clhWebsite' is a 'let' constant
//clhWebsite.append(".com")   // compile-time error, Cannot use mutating member on immutable value: 'clhWebsite' is a 'let' constant
//clhWebsite.removeFirst()    // compile-time error, Cannot use mutating member on immutable value: 'clhWebsite' is a 'let' constant

// MARK: Iterating through arrays with for loops
let clhAuthors = ["Dimitris", "Akis", "John/Ignis"]

for clhAuthor in clhAuthors {
    print("Presenting CLH's author: \(clhAuthor)")
}

print()

for (index, clhAuthor) in clhAuthors.enumerated() {
    print("Presenting CLH author number \(index + 1): \(clhAuthor)")
}
