// MARK: A simple for loop, also known as a for-in loop
let languages = ["English", "Spanish", "Italian", "Greek"]

for language in languages {
    print("I speak \(language)")
}

print()

// MARK: printing the indices as well
print("Listing the languages I can speak: ")
for (languagePosition, language) in languages.enumerated() {
    print("\(languagePosition + 1). \(language)")
}

print()

// MARK: looping through the indices of an array
for index in languages.indices {
    print(index)
}

print()

// MARK: for loops with numeric ranges
for number in 10...15 {
    print(number)
}

print()

for number in 10..<15 {
    print(number)
}

print()

// MARK: not caring about index or value
for _ in 0...4 {
    print("Swift is fun.")
}

print()

// MARK: strides
for number in stride(from: 0, to: 30, by: 3) {
    print("Current number: \(number)")
}

print("\nDoing it again:\n")

for number in stride(from: 0, through: 30, by: 3) {
    print("Current number: \(number)")
}

print()

// MARK: where clause
let numbers = [1, 57, 44, 21, 9, 34]

// example without where clause
print("Printing numbers < 30 without \"where\" clause:")
for number in numbers {
    if number < 30 {
        print(number)
    }
}

print()

// example with where clause
print("Printing numbers < 30 with \"where\" clause:")
for number in numbers where number < 30 {
    print(number)
}

print()

// MARK: for loop for dictionaries
let pizzas = ["Marinara": 2, "Margherita": 3, "Capriciosa": 3.4, "Diavola": 3.6, "Quattro Formaggi": 5.5]

print("Our pizza menu is:")
for (pizza, price) in pizzas {
    print("\(pizza) costs \(price)€")
}

print()

// MARK: for loop for strings
let longPhrase = "This is a long phrase for this example, don't you think?"
for character in longPhrase where character.isPunctuation {
    print(character)
}

print()

// MARK: for loop for enums
enum ColorsEnum: CaseIterable {
    case red
    case green
    case purple
    case blue
    case yellow
}

for color in ColorsEnum.allCases {
    print(color)
}
