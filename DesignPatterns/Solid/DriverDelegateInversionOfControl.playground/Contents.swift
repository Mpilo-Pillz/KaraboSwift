import Foundation

/**
 * Whom Ever can take the user to a destination
 * Must implement the protocol (aka Interface in Java/TypeScript world
 */
protocol Transportationtype {
    func takeToDestination()
}

class NeedsTransport {
    var delegate: Transportationtype?
    
    func goingToDestination() {
        /**
         * This allows this object to be trnasporeted in any way possible
         * Eg By Plane, Boat, Uber, Chaffeur etc
         */
        delegate?.takeToDestination()
    }
}

struct Uber: Transportationtype {
    
    init(handler: NeedsTransport) {
        /**
         * Takes in someone who needs transport
         */
        handler.delegate = self // assign yourself as the delegate
       

    }

    func takeToDestination() {
        print("drives the user to the destination mentioned in the app")
    }
}

class AirplanePilot: Transportationtype {
    init(handler: NeedsTransport) {
        handler.delegate = self
    }
    
    func takeToDestination() {
        print("Takes passengers to the same destination by air")
    }
}



let nikiwe = NeedsTransport()
let umhle = Uber(handler: nikiwe) // Nikiwe needs a ride so take Nikiwe in
let anele = AirplanePilot(handler: nikiwe) // nikiwe need to fly to her destination, so take her in
nikiwe.goingToDestination()

