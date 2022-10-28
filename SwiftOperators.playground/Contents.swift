import UIKit

let (a,b) = (1, 2)

/**
 * URINARY MINUS OPERATOR
 */
let three = 3
let minusThree = -three // -3
let plusThree = -minusThree // two minuses (--3)

/**
 * URINARY PLUS OPERATOR
 */
let minusSix = -6
let alsoMinusSix = +minusSix // alsoMinusSix equals -6

/**
 * COMPOUND ASSIGNMENT OPERATORS
 */
var x = 1
x += 2

/**
 * Identity operators
 * Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance.
 */

/**
 * COMPARISON OPERATORS
 */

let name = "world"
if name == "world" {
    print("Hello world")
} else {
    print("Sorry \(name) is not recognised")
}

/**
 * TUPLE COMPARISON OPERATORS
 */
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared

(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"

(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

("blue", -1) < ("purple", 1)        // OK, evaluates to true

//("blue", false) < ("purple", true)  // Error because < can't compare Boolean values


/**
 * TERARY  OPERATOR
 */

let contentHeight = 40
let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)

/**
 * Nil-Coalescing Operator
 * The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that’s stored inside a.
 */
var p: String = "ilo"
var m: String?
m != nil ? m! : p

let defaultColorName = "systemBackground"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

