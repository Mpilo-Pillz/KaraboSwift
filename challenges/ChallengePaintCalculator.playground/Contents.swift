/**
 A single Bucket of paint convers 1.5sqm
 */
import UIKit

var width: Float = 1.5
var height: Float = 2.3
var areaOneBucketCovers: Float = 1.5

var bucketsOfPaint: Float  {
    get {
        return (height * width) / areaOneBucketCovers
    }
    
}

print("you will need \(bucketsOfPaint) buckets")

