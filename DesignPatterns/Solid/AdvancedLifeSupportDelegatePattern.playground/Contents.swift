import UIKit

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me whats going on")
    }
    
    func takeCall() {
        print("anser emergency call")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The doctor does chest compressions, 30 per second")
    }
    
    func useStethescope() {
        print("Listening for heaet sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive while perform compressions")
    }
    
    func useElectricDrill() {
        print("Drilling")
    }
}

let emihle = EmergencyCallHandler()
//let phetsile = Paramedic(handler: emihle)
//let sanele = Surgeon(handler: emihle)
let dumisani = Doctor(handler: emihle)

emihle.assessSituation()
emihle.medicalEmergency()
