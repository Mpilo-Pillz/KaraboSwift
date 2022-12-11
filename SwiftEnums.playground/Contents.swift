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
