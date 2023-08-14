import UIKit
// extending Double becuase It does not work with round for rounding off
extension Double {
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

let myDouble = 3.14159

// this code is implemented above
//myDouble = myDouble * 1000
//myDouble.round()
//myDouble = myDouble / 1000

myDouble.round(to: 3)
myDouble.round(to: 2)
myDouble.round(to: 1) // decimal place

//let myRoundedDoubleRef = String(format: "%.1f", myDouble)

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.background = .red

// circle button
button.layer.cornerRadius = 25
button.clipsToBounds = true

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let circleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
circleButton.makeCircular()



