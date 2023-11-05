import Foundation

// take the size of the pizza in inches subtrack 4 from the inches you end up with the number of slices
/**
 * Stored Slices
 */
let pizzaInInches: Int = 12
var numberOfPerople: Int = 6
let slicesPerPerson: Int = 5

var storedNumberOfSlices: Int = 6

// must always be a Var and always explicitly type it
/**
 * this is a getter
 * if you have a function that does not return and out put nor take inputs consider making it a computed property or a getter
 * and all it does it excecut a block of code
 */
var numberOfSilces: Int {
    return pizzaInInches - 4
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSilces / slicesPerPerson
        return numberOfPerople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSilces * newValue // rember newValue is bult in and is given to us for free when we use a stetter
        numberOfPerople = totalSlices / slicesPerPerson
    }
}
print(numberOfPizza)

var getNumOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        /**
         * runs whenever this property gets a new value
         */
        print("Number of slices now has a new alue of: \(newValue)")
    }
}

numberOfPizza = 4 // triggers newValue
print(numberOfPerople)
print(numberOfSilces)
getNumOfSlices = 12 // automatically triggers newValue



