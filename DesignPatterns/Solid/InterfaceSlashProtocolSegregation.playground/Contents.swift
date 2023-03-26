import Foundation

protocol CanTopUpEnergy {
    func fillUp() -> String
}

class Vehicle {
    func drive() -> Void {
        print("Vrooommmmm")
    }
    
    func honk() -> Void {
        print("beep")
    }
}

class Car: Vehicle, CanTopUpEnergy {
    func fillUp() -> String {
        return "Goes to the filling station and pours petrol"
    }
    
    let brand: String
    
     init(brand: String) {
        self.brand = brand
        super.init()
    }
    
    
}

class ElectricCar: Vehicle, CanTopUpEnergy {
    let brand: String
    let selfCharging: Bool = false
    
    override func drive() {
        print("whiiiiiiiiiiiew")
    }
    
     init(brand: String) {
        self.brand = brand
        super.init()
    }
    
    func fillUp() -> String {
        return "Goes to Charging Station gets plugged in and batteries charge"
    }
}


let vehicle = Vehicle();
vehicle.drive()
vehicle.honk()

let lexusSedan = Car(brand: "Lexus LS")
lexusSedan.drive();
lexusSedan.honk();

let bmwElectric = ElectricCar(brand: "BMW i7")
bmwElectric.drive()
bmwElectric.honk()


