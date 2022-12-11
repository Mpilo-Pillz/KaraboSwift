import UIKit

// Normal Func
let names = ["Kagiso", "Katlego", "Tumelo", "Neo", "Paleo"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

func forward(_ s1: String, s2: String) -> Bool {
    return s1 < s2
}

var reversedNamesFunc = names.sorted(by: backward)
var forwaredNamesFunc = names.sorted(by: forward)

print(reversedNamesFunc)
print(forwaredNamesFunc)

// Closure
var reversedNAmes = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2 } )
var inferredReveresedNAmes = names.sorted(by: { s1, s2 in return s1 > s2 })
var inferredShorterReveresedNAmes = names.sorted(by: { s1, s2 in s1 > s2 })
var evenShorterForwardedNames = names.sorted(by: {$0 < $1})
var ridiculouslyShorterForwardedNames = names.sorted(by: >)

//081180
// i need a reference number

// Trailing Closures
var trailingForwardedNames = names.sorted() { $0 < $1 }
var traiilingForwardedNamesClosureThatDowNotNEedToBeCalled = names.sorted { $0 > $1 }


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

print(16 % 10) // 6
print(58 % 10) // 8
print(510 % 10) // 0

let strings = numbers.map { (number) -> String in
    print("--->\(number)")
    var number = number
    var output = ""
    repeat {
        print("repeatedNumber--->\(number)")
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)

var num = 1 / 10

// Capturing Values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen()) // returns 10
print(incrementByTen()) // returns 20

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()


// Closures as referenceTypes
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// returns a value of 50

incrementByTen()
// returns a value of 60

/**
 The example above shows that calling alsoIncrementByTen is the same as calling incrementByTen. Because both of them refer to the same closure, they both increment and return the same running total
 */


