import Foundation

protocol CanTopUpEnergy {
    func fillUp() -> String
}

protocol OffRoadCapable {
    func toggleDiffLock() -> String
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

class ElectricSUV: ElectricCar, OffRoadCapable {
    func toggleDiffLock() -> String {
        return "Difflock actvated can toggle 4X4 hi and lo"
    }
    
    override init(brand: String) {
         super.init(brand: brand)
    }
}

func fillingUp(vehicle: CanTopUpEnergy) {
    print(vehicle.fillUp())
}

func goesOffRoad(vehicle: OffRoadCapable) {
    print(vehicle.toggleDiffLock())
}

let vehicle = Vehicle();
vehicle.drive()
vehicle.honk()

let lexusSedan = Car(brand: "Lexus LS")
lexusSedan.drive();
lexusSedan.honk();
fillingUp(vehicle: lexusSedan)

let bmwElectric = ElectricCar(brand: "BMW i7")
bmwElectric.drive()
bmwElectric.honk()
fillingUp(vehicle: bmwElectric)

let bmwX = ElectricSUV(brand: "BMW iX3")
bmwX.toggleDiffLock()
bmwX.honk()
bmwX.drive()
goesOffRoad(vehicle: bmwX)
//goesOffRoad(vehicle: bmwElectric) //error does is not off road capable
//goesOffRoad(vehicle: lexusSedan) //error does is not off road capable


