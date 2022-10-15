import UIKit

// Define your parameters and pass in the arguments

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
     
}

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

func printWithoutCountingDeeper(string: String) {
   printAndCount(string: string)
}

func runApp() -> () {
    // () represents void
    print(greet(person: "Karabo"))
    print(greet(person: "Nikita", alreadyGreeted: true))
    print(printAndCount(string: "Fikasentani"))
    print(printWithoutCounting(string: "Thulani"))
    print(printWithoutCountingDeeper(string: "Mpilo"))
    
    
}
runApp()





// Multiple Return Values and Tuples
let myTuple = (me: "Mpilo", myLady: "Thapelo")

print(myTuple.me)
print(myTuple.myLady)
print(myTuple.0)
print(myTuple.1)

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}


//let bounds = minMax(array: [18, -40, 100, 20, 10, 77, 87, 35])
//print("min is \(bounds.min) and max is \(bounds.max)")

// optional binding
if let safeBounds = minMax(array: [18, -40, 100, 20, 10, 77, 87, 35]) {
    print("min is \(safeBounds.min) and max is \(safeBounds.max)")
}

// Implicit return
// equivalent to const = mbingelelo(person) => "Kunjani, " + person + "!"
func mbingelelo(for person: String) -> String {
    "Kunjani, " + person + "!"
}

print(mbingelelo(for: "Nomthandazo"))

func dumedisa(mung motho: String) -> String {
    return "Ashe, " + motho + "!"
}

print(dumedisa(mung: "Hunadi"))


// Argument Labels and Parameter names

/*
 * Each function parameter has both an argument label and a parameter name. The argument
 * label is used when calling the function; each argument is written in the function call with its
 * argument label before it. The parameter name is used in the implementation of the function.
 * By default, parameters use their parameter name as their argument label.
 */

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    print("Yeah nomally logic comes here")
}
someFunction(firstParameterName: 1, secondParameterName: 2)

func someFunction(argumentLabel parameterName: Int) {
    print("Argument Label helps the logic read like english")
}

func greetClearly(person: String, from hometown: String) -> String {
    return "Hello \(person)! I plan to visit \(hometown)"
}

print(greetClearly(person: "Mpilz", from: "Malkerns"))

// Omitting Argument Labels
func someUnderFunc(_ firstParameterName: Int, secondParameterName: Int) {
    print("Logic HEre")
}

someUnderFunc(1, secondParameterName: 2)

// Default Parameter Values
func someFunc(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    print("If you dont pass in the second arg when calling it")
}

someFunc(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunc(parameterWithoutDefault: 4)


// Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(
    arithmeticMean(1, 2, 3, 4, 5)
)
print(arithmeticMean(60000, 120000, 295000, 320000, 400000, 420000, 465000, 689000, 720000, 740000, 800000, 400000, 960000, 1044000))


// In-Out Parameters
/* Function parameters are constants by default
 */

// omitting the argument labels cos it will look cluttered ing the parenthesis
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


func addTwoInts(_ a: Int, _ b:Int) -> Int {
    return a + b
}

func multiplyTowInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

/**
 Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.
 */
print("Result: \(mathFunction(2, 3))")

/**
 A different function with the same matching type can be assigned to the same variable, in the same way as for nonfunction types:
 */
mathFunction = multiplyTowInts // infering the type
print("Result: \(mathFunction(2, 3))")

/**
 Function Types as Parameter Types
 You can use a function type such as (Int, Int) -> Int as a parameter type for another function. This enables you to leave some aspects of a function’s implementation for the function’s caller to provide when the function is called.
 */

func multiplyFunc(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result \(mathFunction(a,b))")
}

printMathResult(multiplyFunc, 200000, 12)


// Functions as return types
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 5

let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")

// Nested Functions
func chooseNestedStepFunction(backward: Bool) -> (Int) -> Int {
    func stepNestedForward(input: Int) -> Int {return input + 1}
    func stepNestedBackward(input: Int) -> Int {return input - 1}
    return backward ? stepNestedBackward : stepNestedForward
}
var currentNestedValue = -4
let moveNearerToNestedZero = chooseNestedStepFunction(backward: currentNestedValue > 0)

while currentNestedValue != 0 {
    print("\(currentNestedValue...)")
    currentNestedValue = moveNearerToNestedZero(currentNestedValue)
}
print("Zero")


