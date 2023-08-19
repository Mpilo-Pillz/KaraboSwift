import UIKit


// @:?!()$#,./\
let text = "\\"
//let specialCharacterRegex = "[@:?!()$#,.\\/]+" //mine
let specialCharacterRegex = "[@:?!()$#,./\\\\]+" // enter 4 \ to escape it and escape it in the regex
text.range(of: specialCharacterRegex, options: .regularExpression) != nil
