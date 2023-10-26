import UIKit

//let sharedURLSEssion // is also asingle ton along with defaults

// singletons have one copy that is shared accross the app

class Car {
    var colour = "Dark Blue"
}

let myCar = Car()
myCar.colour = "Champagne"

let herCar = Car()
print(herCar.colour) // prints red as its a new obj that has nothing to do witht he previous one

class MacBook {
    var colour = "Spacegray"
    
    // a static var that is a Macbook object inisitalised from its own class
    static let singletonMacBook = MacBook()
}

let myMacBook = MacBook.singletonMacBook
myMacBook.colour = "Silver"

let herMacBook = MacBook.singletonMacBook
print(herMacBook.colour)

class Air {
    init () {
        MacBook.singletonMacBook.colour = "Gold"
    }
}

class ProM1 {
    init() {
        print(MacBook.singletonMacBook.colour)
    }
}

let a = Air()
let b = Air()

print(myMacBook.colour) // changed from silver to gold
print(herMacBook.colour)
