import UIKit

func chooseDirectionFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1}
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}

//var currentValue = -10
var currentValue = 10
let moveNearerToZero = chooseDirectionFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

print("Zero!")
