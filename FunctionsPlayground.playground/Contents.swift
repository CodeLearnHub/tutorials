// MARK: ArticleName

// MARK: - 2. The Simplest Function in Swift
markHeading1(numbering: "2")

func printMyMessage() {
    print("My first function!")
}

printMyMessage()

// MARK: - 3. Functions With One or More Parameters
markHeading1(numbering: "3")

func sayHi(name: String, age: Int) {
    print("Hi! My name is \(name) and I'm \(age) years old.")
}

sayHi(name: "Dimitris", age: 26)
sayHi(name: "Akis", age: 25)
sayHi(name: "John", age: 25)
//sayHi(age: 26, name: "Dimitris") // Argument 'name' must precede argument 'age'

    // MARK: 3.1 When Are Two Functions Different?
    func sayHi(name: String) {}                 // 1 - unique, different number of parameters
    func sayHi(name: String, age: Double) {}    // 2 - unique, same number of parameters but different type for one of them
    func sayHi(fullName: String, age: Int) {}   // 3 - unique, same number of parameters, same type of parameters in same order but different name for one of them
    func sayHi(age: Int, name: String) {}       // 4 - unique, similar to case 2
    func sayHi() {}                             // 5 - unique, similar to case 1

// MARK: - 4. Functions With One or More Return Types
