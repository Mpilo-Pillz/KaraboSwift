import UIKit

class AnimalViolatingOpenClosed {
    let name: String
    let age: Int
    let type: String
    
    init(name: String, age: Int, type: String) {
        self.name = name
        self.age = age
        self.type = type
    }
    
    func getSpeed() {
        switch type {
        case "cheetah":
            print("Cheetah runs up to 130mph")
        case "lion":
            print("Lion runs up to 80mph")
        case "elephant":
            print("Lion runs up to 40mph")
        default:
            print("Unsupported Animal Type: \(type)")
//            throw Error)
        }
    }
}

let baboon = AnimalViolatingOpenClosed(name: "Baboon", age: 2, type: "baboon")
let cheetah = AnimalViolatingOpenClosed(name: "Cheetah", age: 5, type: "cheetah")
baboon.getSpeed()
cheetah.getSpeed()


class SpeedRate {

    func getSpeed() -> Int {
        return self.getSpeed()
    }
}

//struct SpeedRate {
//let getSpeed: () -> String
//} cant use structs for inheritence

class Animal {
    let name: String
    let age: Int
    let speedRate: SpeedRate
    
    init(name: String, age: Int, speedRate: SpeedRate) {
        self.name = name
        self.age = age
        self.speedRate = speedRate
    }
    
    func getSpeed() -> Int {
        return speedRate.getSpeed()
    }
}

class LeopardSpeedRate: Animal {
    
    override func getSpeed() -> Int {
        return 100
    }
}

class TigerSpeedRate: SpeedRate {
    override  func getSpeed() -> Int {
        return 70
    }
}

class Buffalo: SpeedRate {
    override func getSpeed() -> Int {
        return 65
    }
}

class Sheep: SpeedRate {
    override func getSpeed() -> Int {
        return 60
    }
}

let buffalo = Animal(name: "Baffalo", age: 7, speedRate: Buffalo())
let sheep = Animal(name: "Sheep", age: 8, speedRate: Sheep())
print(buffalo.getSpeed())
print(sheep.getSpeed())

//TODO: read https://www.swiftbysundell.com/articles/composing-types-in-swift/
