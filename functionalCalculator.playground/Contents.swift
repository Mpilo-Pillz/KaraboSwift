import UIKit


func multiply(x: Int, y: Int) -> Int {
    return x * y
}

func square(x: Int) -> Int {
    return multiply(x: x, y: x)
}

func isRightAngleTriangle() -> Bool {
    return square(x: 3) + square(x: 4) == square(x: 5)
}

print(multiply(x: 2, y: 3))
print(square(x: 4))
print(isRightAngleTriangle())



