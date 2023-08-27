import UIKit

// Functions are types

struct Math {
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func subTwoInts(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}

func printHelloWorld() {
    print("Hi")
}

struct Calculator {
    var mathFunction: (Int, Int) -> Int = Math().addTwoInts
}

var calc = Calculator()

calc.mathFunction(3, 2)

calc.mathFunction = Math().subTwoInts

calc.mathFunction(3, 2)

struct Calculator2 {
    typealias expression = (Int, Int) -> Int
    var matchFunction: expression = Math().addTwoInts
}


// Challenge
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
typealias longComplicatedExpression = (Int) -> Bool
func hasAnyMatches(list: [Int], condition: longComplicatedExpression) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

// My answer
func betweenOneAndTen(number: Int) -> Bool {
    return number > 0 && number < 11
}

var number = [20, 19, 7, 12]
hasAnyMatches(list: number, condition: lessThanTen)
hasAnyMatches(list: number, condition: betweenOneAndTen)

hasAnyMatches(list: [2,3,4], condition: betweenOneAndTen) // true
hasAnyMatches(list: [0, 11], condition: betweenOneAndTen) // false
hasAnyMatches(list: [1, 11], condition: betweenOneAndTen) // true
hasAnyMatches(list: [0, 10], condition: betweenOneAndTen) // true
