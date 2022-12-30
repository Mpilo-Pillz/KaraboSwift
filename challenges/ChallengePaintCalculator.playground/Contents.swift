/**
 A single Bucket of paint convers 1.5sqm
 */
import UIKit

var width: Float = 1.5
var height: Float = 2.3
let areaCoveredPerBucket: Float = 1.5

var bucketsOfPaint: Int  {
    get {
        let area = height * width
        
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceil(numberOfBuckets)
        return  Int(roundedBuckets)
    }
    
    set {

        let amountThatCanBeCovered = Double(newValue) * Double(areaCoveredPerBucket)
        print("We have \(newValue) buckets")
        print("This amount of paint can cover \(amountThatCanBeCovered)")
    }
    
}

print("you will need \(bucketsOfPaint) buckets")

bucketsOfPaint = 8
