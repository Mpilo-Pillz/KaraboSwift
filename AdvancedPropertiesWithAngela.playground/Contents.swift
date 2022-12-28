import Foundation

let pizzaInInches: Int = 10

var numberOfSlicesStored: Int = 6

// Cannot infer data type
// has to be a variable not a constant
var numberOfSlicesComputedGetter: Int {
    return pizzaInInches - 4
}

// if your find yourself creating methods that do not have an input and an output
// potentially use a computed property
func ifComputedPropertiesWerenotAvailabe() -> Int {
    return pizzaInInches - 4
}

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

let a = numberOfSlicesComputedGetter * 2
let b = ifComputedPropertiesWerenotAvailabe() * 2

print(numberOfSlices)
