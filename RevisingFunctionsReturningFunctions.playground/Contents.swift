import UIKit

func countDown(num: Int) -> Int {
    return num - 1
}

func countUp(num: Int) -> Int {
    return num + 1
}

func determineCountDirection(isLessThanZero: Bool) -> (_ num: Int) -> Int {
    return isLessThanZero ? countUp : countDown
}

//var currentValue = 10
var currentValue = -10
let moveNearerToZero = determineCountDirection(isLessThanZero: currentValue < 0)

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")
