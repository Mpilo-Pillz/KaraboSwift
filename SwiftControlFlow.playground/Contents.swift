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
