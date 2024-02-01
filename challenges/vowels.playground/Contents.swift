import UIKit

func countVowels(word: String) {
    let voewls = ["a", "e", "i", "o", "u"]
    var count = 0
    
    for char in word {
        print(char)
        for voewl in voewls {
            if voewl == char {
                count++
            }
        }
    }
    return count
}

print(countVowels(word: "Mbuzlwane"))

