// MARK: Swift if Statement

// MARK: - Examples

// MARK: Single if statement
func eligibleToVoteVersion1(age: Int) {
    print("If you are \(age) years old...")
    
    if age >= 18 {
        print("You can vote.")
    }
    print("You cannot vote.")
    
    print("Thanks for asking!")
}

eligibleToVoteVersion1(age: 10)
print()
eligibleToVoteVersion1(age: 20)

print()

// MARK: Adding an else statement
func eligibleToVoteVersion2(age: Int) {
    print("If you are \(age) years old...")
    
    if age >= 18 {
        print("You can vote.")
    } else {
        print("You cannot vote.")
    }
    
    print("Thanks for asking!")
}

eligibleToVoteVersion2(age: 10)
print()
eligibleToVoteVersion2(age: 20)
print()
eligibleToVoteVersion2(age: -10)

print()

// MARK: Adding an else_if statement
func eligibleToVoteVersion3(age: Int) {
    print("If you are \(age) years old...")
    
    if age >= 18 && age <= 125 {                    // age from 18 to 125
        print("You can vote.")
    } else if age > 0 && age <= 17 {                // age from 1 to 17
        print("You cannot vote.")
    } else if age > 125 {
        print("Humans don't live this long....")    // perhaps this path will never be entered, but we have to inlcude it to avoid bugs in the future
    } else {
        print("Invalid age.")                       // negative age
    }
    
    print("Thanks for asking!")
}

eligibleToVoteVersion3(age: 10)
print()
eligibleToVoteVersion3(age: 20)
print()
eligibleToVoteVersion3(age: -10)
print()
eligibleToVoteVersion3(age: 2000)

print()

// MARK: - API Availability
if #available(iOS 14, *) {
    print("This will be executed on iOS 14 and later.")
} else {
    print("This will be executed on iOS 13 and lower.")
}
