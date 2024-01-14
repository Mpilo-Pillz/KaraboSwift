import UIKit

func pyramid(numOfLevels: Int) {
    let midpoint = floor((numOfLevels + 1) / 2)
    
    for row in 0..<(2 * numOfLevels - 1) {
        var step = ""
        
        if midpoint - row <= column && midpoint + row >= column {
        step += "#"
    } else {
        step += " "
    }
    }
    
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
pyramid(numOfLevels: 4)

