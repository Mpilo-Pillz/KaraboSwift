import UIKit

var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// Adds to the end on an Array
someInts.append(3)
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

// array literal
var shoppingList: [String] = ["Eggs", "Milk"]
// implicit
//var shoppingList = ["Eggs", "Milk"]
print("The shopping list contains \(shoppingList.count) items")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty")
}

// Append to an array
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

// change the first item on the list
shoppingList[0] = "Six eggs"

// replace items and index 4 and 6
shoppingList[4...6] = ["Bananas", "Apples"]

// insert at a specific index
shoppingList.insert("Maple Syrup", at: 0)

// remove at index
let mapleSyrup = shoppingList.remove(at: 0) // retuns the removed value so you can store it in the constant

/**
 Any gaps in an array are closed when an item is removed, and so the value at index 0 is once again equal to "Six eggs":
 */
firstItem = shoppingList[0] // firstItem is now equal to "Six eggs"

/**
 If you want to remove the final item from an array, use the removeLast() method rather than the remove(at:) method to avoid the need to query the array’s count property. Like the remove(at:) method, removeLast() returns the removed item:
 */
let apples = shoppingList.removeLast()
