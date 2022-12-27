import Foundation

let pizzaInInches: Int = 10

var numberOfSlices: Int = 6

// Cannot infer data type
// has to be a variable not a constant
var numberOfSlicesComputedGetter: Int {
    return pizzaInInches - 4
}

func ifComputedPropertiesWerenotAvailabe() -> Int {
    return pizzaInInches - 4
}

let a = numberOfSlicesComputedGetter * 2
let b = ifComputedPropertiesWerenotAvailabe() * 2

print(numberOfSlices)
