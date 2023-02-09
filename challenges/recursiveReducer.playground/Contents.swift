import UIKit

func recursiveSum(num: Int) -> Int {
    if(num > 0) {
        return num + recursiveSum(num: num - 1)
    }
     
    
    return num
}

print(
    recursiveSum(num: 5)
)

