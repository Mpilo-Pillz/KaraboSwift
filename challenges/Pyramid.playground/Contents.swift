import UIKit

func pyramid(numOfLevels: Int) {
    
}

func step(numOfLevels: Int) {
    for row in 0..<numOfLevels {
        var step = ""
        for column in 0..<numOfLevels {
            column <= row ? step += "#" : step += " "
            step += column <= row ? "#" : " "
            
            if column <= row {
                            step += "#"
                        } else {
                            step += " "
                        }
        }
        print(step)
    }
}

step(numOfLevels: 4)


