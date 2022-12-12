import UIKit

enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Enums in a single line
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west

// Can shorten like so but only after if the above was delcared once:
directionToHead = .east

directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
// Prints "Watch out for penguins"

/**
 As described in Control Flow, a switch statement must be exhaustive when considering an enumeration’s cases. If the case for .west is omitted, this code doesn’t compile, because it doesn’t consider the complete list of CompassPoint cases. Requiring exhaustiveness ensures that enumeration cases aren’t accidentally omitted.
 */

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
// Prints "Mostly harmless"
