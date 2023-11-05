import UIKit

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
//        return (width * height) / 1.5
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceil(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 8
