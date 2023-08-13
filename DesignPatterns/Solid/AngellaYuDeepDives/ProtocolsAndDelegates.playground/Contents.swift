import UIKit

var greeting = "Hello, playground"

protocol LaptopDelegate {
   func useComputer()
}

class UserSlashHandler {
    let name: String
    var delegate: LaptopDelegate?
    
    init(name: String) {
        self.name = name
    }
    
    func useLaptop() {
        delegate?.useComputer()
    }
}

class FourteenInch: LaptopDelegate {
    let name: String
    
    init(name: String, handler: UserSlashHandler) {
        self.name = name
        handler.delegate = self
    }
    
    func useComputer() {
        print("\(name) is used to develop mobile and web applications")
    }
}

struct ThirteenInch: LaptopDelegate {
    let name: String
    
    init(name: String, handler: UserSlashHandler) {
        self.name = name
        handler.delegate = self
    }
    
    func useComputer() {
        print("Used to learn PRogramming Languages, Design Patters etc")
    }
}

let mpilo = UserSlashHandler(name: "Mpilz")
let blueBook = FourteenInch(name: "Blue Laptop", handler: mpilo)

let myfirstBook = ThirteenInch(name: "My first MacBook", handler: mpilo)

//mpilo.useLaptop()
mpilo.useLaptop()

