// MARK: Swift while Loop

// MARK: - Regular while loop
func sumToOneHundread() {
    var sum = 0
    var numberOfRepetitions = 0
    while sum < 100 {
        let randomNumber = Int.random(in: 0...10)
        sum += randomNumber
        numberOfRepetitions += 1
    }
    print("The final sum is \(sum), which took \(numberOfRepetitions) repetitions.")
}

for repetition in 0..<5 {
    print("Repetition \(repetition + 1):")
    sumToOneHundread()
    print()
}

// MARK: - repeat-while loop
while false {
    print("This will never be executed.")
}

repeat {
    print("This will be executed once.")
} while false
            
print()

// MARK: - Interrupting while loops

// MARK: The "break" keyword
func breakWhileLoop() {
    print("breakWhileLoop:")
    
    var repetition = 0
    while repetition < 10 {
        repetition += 1
        print("repetition \(repetition): inside loop, before break statement")
        
        if repetition == 3 {
            print("repetition \(repetition): inside loop, inside break statement")
            break
        }
        
        print("repetition \(repetition): inside loop, outside break statement")
    }
    print("outside loop")
}

breakWhileLoop()

print()

// MARK: The "continue" keyword
func continueWhileLoop() {
    print("continueWhileLoop:")
    
    var repetition = 0
    while repetition < 10 {
        repetition += 1
        print("repetition \(repetition): inside loop, before continue statement")
        
        if repetition == 3 {
            print("repetition \(repetition): inside loop, inside continue statement")
            continue
        }
        
        print("repetition \(repetition): inside loop, outside continue statement")
    }
    print("outside loop")
}

continueWhileLoop()

print()

// MARK: The "return" keyword
func returnWhileLoop() {
    print("returnWhileLoop:")
    
    var repetition = 0
    while repetition < 10 {
        repetition += 1
        print("repetition \(repetition): inside loop, before return statement")
        
        if repetition == 3 {
            print("repetition \(repetition): inside loop, inside return statement")
            return
        }
        
        print("repetition \(repetition): inside loop, outside return statement")
    }
    print("outside loop")
}

returnWhileLoop()

print()

// MARK: - Infinite while loop

// Run at your own risk!
var finalNegativeSum = 0
while finalNegativeSum <= 0 { // write "while true {", to achieve an infinite loop on purpose
    finalNegativeSum -= 1
}
print(finalNegativeSum)
