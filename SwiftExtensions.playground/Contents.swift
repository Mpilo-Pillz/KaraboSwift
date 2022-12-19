import UIKit

/**
 Computed Properties
 */

extension Double {
    var km: Double { return self * 1_000.00}
    var m: Double { return self }
    var cm: Double { return self / 100.0}
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
let tenKiloMeter = 10.km
print("10 km is \(tenKiloMeter) meters")
