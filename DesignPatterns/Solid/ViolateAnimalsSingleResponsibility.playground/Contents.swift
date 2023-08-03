import UIKit

class ViolatingSingleResponsibilityAnimal {
    let name: String
    let feedingType: String
    let soundMade: String
    
    init(name: String, feedingType: String, soundMade: String) {
        self.name = name
        self.feedingType = feedingType
        self.soundMade = soundMade
    }
    
    func nomenclature() {
        print("The name of the animal is \(name)")
    }
    
    func sound() {
        print("\(name) \(soundMade)s")
    }
    
    func feeding() {
        print("\(name) is a \(feedingType)")
    }
}

let elephant = ViolatingSingleResponsibilityAnimal(name: "Elaphant", feedingType: "herbivore", soundMade: "trumpet")
elephant.nomenclature()
elephant.sound()
elephant.feeding()

// Fixing violation
class Animal {
    let name: String
    
    init(name: String){
        self.name = name
    }
    
    func nomenclature() {
        print("The name of the animal is \(name)")
    }
}

class Sound {
    let soundMade: String
    let name: String
    
    init(soundMade: String, name: String) {
        self.soundMade = soundMade
        self.name = name
    }
    
    func sound() {
        print("\(name) \(soundMade)s")
    }
}

class Feeding {
    let name: String
    let feedingType: String
    
    init(feedingType: String, name: String) {
        self.feedingType = feedingType
        self.name = name
    }
    
    func feeding() {
        print("\(name) is a \(feedingType)")
    }
}

let giraffe = Animal(name: "Giraffe")
let giraffeSound = Sound(soundMade: "despite the many animal docs I have watched I have never heard an a Girraffe make a sound", name: "giraffe")
let giraffeFeed = Feeding(feedingType: "Herbivore", name: "Giraffe")

giraffeSound.sound()
giraffe.nomenclature()
giraffeFeed.feeding()
