import UIKit

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")
letters.insert("a")

var favoriteGenres: Set<String> = ["House", "Lofi", "AmaPiano", "Hip Hop", "Gqom"]


if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("Ihave particular music preferences")
}

if let removedGenre = favoriteGenres.remove("AmaPiano") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot")
} else {
    print("It's too funky in here")
}

/** ITERATING OVER A SET */
for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
