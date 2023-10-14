import UIKit

let myOptional: String?

myOptional = "Thulani"

struct OptionalStruct {
    var property = 123
    func method() {
        print("This is a behavior")
    }
}


//1. Force Unwrapping
let text: String = myOptional! // becuase String and String? are 2 different types
/*
 * Dangerous cos if the value is nil we will get a runtime error
 **/

//2. Check for nl value

if myOptional != nil {
    let safeText: String = myOptional!
    print(safeText)
} else {
    print("myOptional was nil")
}
/**
 * We still have to force unwrap it
 * Too wordy
 * There is a short hand using Optional binding
 */

//3. Optional Binding
if let safeOptional = myOptional {
    let optionalBindedText = safeOptional
    print(optionalBindedText)
} else {
    print("myOptional was nil")
}

/**
 * Skips and goes to the else block if nill.
 * What if we want to set a default value
 * Use Nil Coalescing operator
 */

// 4. Nil Coalescing
let coalesedText = myOptional ?? "use this text if nil aka default value"
print(text)

// 5. Optional chaining
let optionalStruct = OptionalStruct?
optionalStruct = OptionalStruct()
print(
    optionalStruct?.property
)

