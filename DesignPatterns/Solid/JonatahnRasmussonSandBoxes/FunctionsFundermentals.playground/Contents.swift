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
