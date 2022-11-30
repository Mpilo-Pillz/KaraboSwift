import Foundation

// Normal Func
let names = ["Kagiso", "Katlego", "Tumelo", "Neo", "Paleo"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

func forward(_ s1: String, s2: String) -> Bool {
    return s1 < s2
}

var reversedNamesFunc = names.sorted(by: backward)
var forwaredNamesFunc = names.sorted(by: forward)

print(reversedNamesFunc)
print(forwaredNamesFunc)

// Closure
var reversedNAmes = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2 } )
var inferredReveresedNAmes = names.sorted(by: { s1, s2 in s1 > s2 })
