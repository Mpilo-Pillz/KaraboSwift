import UIKit

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    print("")
    print("a = \(a)")
    print("b = \(b)")
    let temporaryA = a
    a = b
    b = temporaryA
    
    print("a = \(a)")
    print("b = \(b)")
}

var num1 = 1
var num2 = 2

swapTwoInts(&num1, &num2)
