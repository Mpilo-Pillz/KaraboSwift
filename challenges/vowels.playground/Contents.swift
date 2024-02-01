import UIKit

func countVowels(word: String) -> Int {
    let voewls: [Character] = ["a", "e", "i", "o", "u"]
    var count = 0
    
    for char in word.lowercased() {
        for voewl in voewls {
            if voewl == char {
                count += 1
            }
        }
    }
    return count
}

print(countVowels(word: "Mbuzlwane"))
print(countVowelsSwiftly(word: "MbuzuMbuzu"))

func countVowelsSwiftly(word: String) -> Int {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    var count = 0
    
    for char in word.lowercased() {
        if vowels.contains(char) {
            count += 1
        }
    }
    return count
}

