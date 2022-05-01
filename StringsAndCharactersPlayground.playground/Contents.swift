// MARK: Strings and Characters

// MARK: Characters
let letterD: Character = "D" // type: Character
let smirkEmoji: Character = "😏"  // also a valid Character
let stringD = "D" // by default, this is a String

// Invalid Character
//let invalidCharacter: Character = "Hello" // compile-time error: Character must only have one character

// MARK: Strings
let helloWorld = "Hello world!" // automatically inferred as a String
let anotherHelloWorld: String = "Hello world!" // explicitly declared as a String

// Multi-line String
let multilineString = """
This
message
spans
in
multiple
lines
"""

print(multilineString)

print()

// Escaping characters
//let notEscapedIntroduction = "My name is "Dimitris"" // Quotation marks must be escaped
let introduction = "My name is \"Dimitris\""
print(introduction)

print()

let doubleQuotationMark = "Double quotation mark: \"Terremoto\" is Spanish means \"Earthquake\"."
let nullCharacter = "Null: \0"
let backlash = "Backlash: To escape a character, we have to preceed it with a backlash (\\)."
let newLine = "New line: Article Title: Swift Strings and Characters \nWritten by: Dimitris Tasios"
let tab = "Tab: Article Title: Swift Strings and Characters \n\tWritten by: Dimitris Tasios"

print(doubleQuotationMark)
print(nullCharacter)
print(backlash)
print(newLine)
print(tab)

print()

// String interpolation
let siteName = "Code Learn Hub"
let siteIntroduction = "This example was written for the website \(siteName)."
print(siteIntroduction)

print()

// MARK: String operations

// count and isEmpty
let laser = "Light Amplification by Stimulated Emission of Radiation"
print(laser.count)      // 55
print(laser.isEmpty)    // false

let crickets = ""
print(crickets.count)   // 0
print(crickets.isEmpty) // true

// == and !=
let languageOfArgentina = "Spanish"
let languageOfMexico = "Spanish"
let languageOfBrasil = "Portuguese"

print(languageOfArgentina == languageOfMexico) // true
print(languageOfArgentina != languageOfMexico) // false

print(languageOfArgentina == languageOfBrasil) // false
print(languageOfArgentina != languageOfBrasil) // true

// Appending Strings
var myNameIsSticker = "Hi! My name is "
myNameIsSticker.append("What?")
print(myNameIsSticker) // Hi! My name is What?

// the following cannot be done
//let anotherMyNameIsSticker = "Hi! My name is "
//anotherMyNameIsSticker.append("Who?") // compile-time error

print()

// Concatenating Strings
let plants = "plants"
let birds = "birds"
let rocks = "rocks"
var desert = "There were " + plants + " and \(birds) and "
desert += rocks
desert.append(" and things")
print(desert)

print()

// Uppercase and lowercase
let clh = "Code Learn Hub"
print(clh.uppercased()) // CODE LEARN HUB
print(clh.lowercased()) // code learn hub

print()

// Prefix and suffix
let favouriteAlbum = "How I Spent My Summer Vacation"
print(favouriteAlbum.hasPrefix("How I Sp"))     // true
print(favouriteAlbum.hasPrefix("Summer"))       // false

print(favouriteAlbum.hasSuffix(" Vacation"))    // true
print(favouriteAlbum.hasSuffix(" Spent "))      // false
