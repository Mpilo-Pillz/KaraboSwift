/**
 A single Bucket of paint convers 1.5sqm
 */
import UIKit

var width: Float = 1.5
var height: Float = 2.3


var bucketsOfPaint: Int  {
    get {
        let area = height * width
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceil(numberOfBuckets)
        return  Int(roundedBuckets)
    }
    
}

print("you will need \(bucketsOfPaint) buckets")

