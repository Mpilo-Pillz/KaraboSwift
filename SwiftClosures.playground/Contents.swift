import Foundation

// Normal Func
let names = ["Kagiso", "Katlego", "Tumelo", "Neo", "Paleo"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

func forward(_ s1: String, s2: String) -> Bool {
    return s1 < s2
}

var reversedNames = names.sorted(by: backward)
var forwaredNames = names.sorted(by: forward)

print(reversedNames)
print(forwaredNames)

// Closure

