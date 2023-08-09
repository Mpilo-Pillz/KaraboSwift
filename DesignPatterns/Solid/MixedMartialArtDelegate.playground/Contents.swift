import Foundation

protocol MartialArt {
    func performMartialArt()
}

class MartialArtHandler {
    var delegate: MartialArt?
    
    func martialArtContest(){
        delegate?.performMartialArt()
    }
}

struct KickBoxer: MartialArt {
    init(handler: MartialArtHandler) {
        handler.delegate = self
    }
    
    func performMartialArt() {
        print("The kick boxer punches and kicks but is not allowed to attack a downed opponent")
    }
}

class Boxer: MartialArt {
    
    init(handler: MartialArtHandler){
        handler.delegate = self
    }
    
    func performMartialArt() {
        print("The boxer punches wearing 20oZ gloves, no kicking, no knees, no elbos, no grappling")
    }
}

let mpilo = MartialArtHandler()
let karabo = KickBoxer(handler: mpilo)
let bandzile = Boxer(handler: mpilo)

karabo.performMartialArt()
bandzile.performMartialArt()
