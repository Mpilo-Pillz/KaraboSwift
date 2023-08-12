import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

print(calculator(n1: 2, n2: 3, operation: add))
print(calculator(n1: 7, n2: 6, operation: multiply))

print(calculator(n1: 8, n2: 4, operation: {(no1: Int, no2: Int) -> Int in return no1 / no2 }))

// can convert the above into a single line using type inference and anonymous parameter names

let result = calculator(n1: 9, n2: 5, operation: {$0 - $1})
print(result)

let ifTheLastParameterIsAClosure  = calculator(n1: 1, n2: 0) {$0 + $1}
print(ifTheLastParameterIsAClosure) // aka trailing closure

