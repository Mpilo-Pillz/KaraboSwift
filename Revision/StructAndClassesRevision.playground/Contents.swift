import UIKit

var greeting = "Hello, playground"

class Laptop {
    let name: String
    let model: String
    let storage: Int
    
    init(name: String, model: String, storage: Int) {
        self.name = name
        self.storage = storage
        self.model = model
    }
}

struct Phone {
    var name:  String
    var model: String
    var storage: String
    
    init(name: String, model: String, storage: String) {
        self.name = name
        self.storage = storage
        self.model = model
    }
}

var sisekosLaptop = Laptop(name: "Apple Intel", model: "Mac Book Pro 16", storage: 512)
var mpilosLaptop = Laptop(name: "Apple Intel", model: "Mac Book Pro 13", storage: 256)
var BandilesLAptop = Laptop(name: "Apple Silicone", model: "Mac Book Pro 14", storage: 512)

var athisLaptop = sisekosLaptop


