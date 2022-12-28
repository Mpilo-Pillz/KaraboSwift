import Foundation

var pizzaInInches: Int = 16 {
    willSet {
        print("if you wanted to access the The OLD Value: \(pizzaInInches)")
        print("The size before was \(newValue)")
    }
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid Size specified, pizza in inches set to 18")
            pizzaInInches = 18
        }
    }
}
pizzaInInches = 28

var numberOfPeople: Int = 12
let slicePerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicePerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicePerPerson
    }
}

numberOfPizza = 4
print("We need \(numberOfPizza) pizzas")
print("Based on the number of pizzas left, We can invite \(numberOfPeople) people")



//var pizzaInInches: Int = 16 {
//    willSet {
//        print("if you wanted to access the The OLD Value: \(pizzaInInches)")
//        print("The size before was \(newValue)")
//    }
//    didSet {
//        print("The size after was \(oldValue)")
//        print("if you wanted to access the The NEW Value: \(pizzaInInches)")
//    }
//}
//let pizzaInInches: Int = 16
//var numberOfSlicesStored: Int = 6
//
//// Cannot infer data type
//// has to be a variable not a constant
//var numberOfSlicesComputedGetter: Int {
//    return pizzaInInches - 4
//}
//
//// if your find yourself creating methods that do not have an input and an output
//// potentially use a computed property
//func ifComputedPropertiesWerenotAvailabe() -> Int {
//    return pizzaInInches - 4
//}
//
//var numberOfSlices: Int {
//    get {
//        return pizzaInInches - 4
//    }
//    // executed when ever this property gets a new value
//    set {
//        print("NumberOfSlices now has a new value which is \(newValue)")
//    }
//}
//
//let a = numberOfSlicesComputedGetter * 2
//let b = ifComputedPropertiesWerenotAvailabe() * 2
//
//print(numberOfSlices)
//numberOfSlices = 20 // with out a setter this will thorw an error


