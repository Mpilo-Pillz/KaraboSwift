import UIKit

var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

// array literal
var shoppingList: [String] = ["Eggs", "Milk"]
// implicit
var shoppingList = ["Eggs", "Milk"]
