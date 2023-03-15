import UIKit

//var greeting = "Hello, playground"
//print(Int("2a") as Any)
//print(Int("a") as Any)



public class MaxSum {
    public static func findMaxSum(numbers: Array<Int>) -> Int {
        var highestNumer = 0
        var secondHighestNumber = 0
        
        for number in numbers {
            if number > highestNumer {
                secondHighestNumber = highestNumer
                highestNumer = number
                
            }
            if(number < highestNumer && number > secondHighestNumber) {
                secondHighestNumber = number
            }
            
        }
        print(highestNumer)
        print(secondHighestNumber)
        return highestNumer + secondHighestNumber
    }
}

#if !RunTests

print(MaxSum.findMaxSum(numbers: [ 5, 9, 7, 11 ]))

#endif


