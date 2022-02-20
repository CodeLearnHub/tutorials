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
