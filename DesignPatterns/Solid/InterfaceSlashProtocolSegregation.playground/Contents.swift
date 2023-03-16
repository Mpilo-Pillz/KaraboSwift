import Foundation

class Vehicle {
    func drive() -> Void {
        print("Vrooommmmm")
    }
    
    func honk() -> Void {
        print("beep")
    }
}

class Car: Vehicle {
    let brand: String
    
     init(brand: String) {
        self.brand = brand
        super.init()
    }
}

let vehicle = Vehicle();
vehicle.drive()
vehicle.honk()

let lexusSedan = Car(brand: "Lexus LS")
lexusSedan.drive();
lexusSedan.honk()


