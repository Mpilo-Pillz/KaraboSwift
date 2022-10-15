import UIKit

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
     
}

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

func printWithoutCountingDeeper(string: String) {
   printAndCount(string: string)
}

func runApp() -> () {
    // () represents void
    print(greet(person: "Karabo"))
    print(greet(person: "Nikita", alreadyGreeted: true))
    print(printAndCount(string: "Fikasentani"))
    print(printWithoutCounting(string: "Thulani"))
    print(printWithoutCountingDeeper(string: "Mpilo"))
    
    
}
runApp()





// Multiple Return Values and Tuples
let myTuple = (me: "Mpilo", myLady: "Thapelo")

print(myTuple.me)
print(myTuple.myLady)
print(myTuple.0)
print(myTuple.1)

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}


//let bounds = minMax(array: [18, -40, 100, 20, 10, 77, 87, 35])
//print("min is \(bounds.min) and max is \(bounds.max)")

// optional binding
if let safeBounds = minMax(array: [18, -40, 100, 20, 10, 77, 87, 35]) {
    print("min is \(safeBounds.min) and max is \(safeBounds.max)")
}

// Implicit return
// equivalent to const = mbingelelo(person) => "Kunjani, " + person + "!"
func mbingelelo(for person: String) -> String {
    "Kunjani, " + person + "!"
}

print(mbingelelo(for: "Nomthandazo"))

func dumedisa(mung motho: String) -> String {
    return "Ashe, " + motho + "!"
}

print(dumedisa(mung: "Hunadi"))





