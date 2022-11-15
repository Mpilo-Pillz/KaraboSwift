/**
 ARRAYS
 */
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

/**
 Dictionary
 */

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

/**
 Range
 */
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")
// Prints "3 to the power of 10 is 59049"

let minutes = 60
for tickMark in 0..<minutes {
    print("\(tickMark) seconds")
}

let minuteInterval = 5
print("------MINUTE-----")
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    
    print("\(tickMark) minutes")
}

let hours = 12
let hourInterval = 3
print("-----HOUR-------")
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    
    print("\(tickMark) hours")
}


/**
 Compound Switch
 */


let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Prints "The letter A"


/**
Interval matching
 */

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."


/**
Continue
 */

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print("------------------------puzzleOutput-------------------")
print(puzzleOutput)

/**
Labelled Statements - Snakes and Ladders
 */

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    
    if diceRoll == 7 { diceRoll = 1}
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

/**
Early Exit - Guard let
 */
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you")
        return
    }
    
    print("I hope the weather is nice in \(location)")
}

greet(person: ["name": "Sfiso"])
// Prints "Hello Sfiso!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Nontobeko", "location": "Malkerns"])
// Prints "Hello Nontobeko!"
// Prints "I hope the weather is nice in Malkerns."
