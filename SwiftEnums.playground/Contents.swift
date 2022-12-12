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

/**
 Itertable enums
 */
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"

for beverage in Beverage.allCases {
    print(beverage)
}
// coffee
// tea
// juice

/**
 You can define Swift enumerations to store associated values of any given type, and the value types can be different for each case of the enumeration if needed. Enumerations similar to these are known as discriminated unions, tagged unions, or variants in other programming languages.
 */

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."

/**
 Raw Values

 The barcode example in Associated Values shows how cases of an enumeration can declare that they store associated values of different types. As an alternative to associated values, enumeration cases can come prepopulated with default values (called raw values), which are all of the same type.
 */

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

/**
 Implicitly Assigned Raw Values
 When you’re working with enumerations that store integer or string raw values, you don’t have to explicitly assign a raw value for each case. When you don’t, Swift automatically assigns the values for you.

 For example, when integers are used for raw values, the implicit value for each case is one more than the previous case. If the first case doesn’t have a value set, its value is 0.


 */

enum PlanetImplicit: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPointImplicit: String {
    case north, south, east, west
}

enum CompassPointExplicit: String {
    case north = "NORTH", south = "SOUTH", east = "EAST", west = "WEST"
}


/** You access the raw value of an enumeration case with its rawValue property: */
let earthsOrder = PlanetImplicit.earth.rawValue
// earthsOrder is 3

let sunsetDirection = CompassPointImplicit.west.rawValue
// sunsetDirection is "west"

print(
    ASCIIControlCharacter.tab
)
print(ASCIIControlCharacter.lineFeed.rawValue)
print(ASCIIControlCharacter.carriageReturn.rawValue)

print(CompassPointExplicit.west.rawValue)
print(CompassPointExplicit.north.rawValue)
print(CompassPointExplicit.south.rawValue)
print(CompassPointExplicit.east.rawValue)

