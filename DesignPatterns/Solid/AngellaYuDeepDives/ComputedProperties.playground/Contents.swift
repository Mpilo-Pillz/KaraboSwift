import Foundation

// take the size of the pizza in inches subtrack 4 from the inches you end up with the number of slices
/**
 * Stored Slices
 */
let pizzaInInches: Int = 12

var storedNumberOfSlices: Int = 6

// must always be a Var and always explicitly type it
/**
 * this is a getter
 * if you have a function that does not return and out put nor take inputs consider making it a computed property or a getter
 */
var numberOfSilces: Int {
    return pizzaInInches - 4
}

print(numberOfSilces)
