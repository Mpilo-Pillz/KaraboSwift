import UIKit

func steps(numSteps: Int) {
    for row in 0...numSteps {
        var stairs = ""
        for column in 0...numSteps {
            if (column <= row) {
                stairs += "#"
            } else {
                stairs += " "
            }
        }
        print(stairs)
    }
           
}

steps(numSteps: 5)
//#
//##
//###
