import UIKit

var greeting = "Hello, playground"

class Laptop {
    var name: String
    var model: String
    var storage: Int
    
    init(name: String, model: String, storage: Int) {
        self.name = name
        self.storage = storage
        self.model = model
    }
}

struct Phone {
    var name:  String
    var model: String
    var storage: Int
    
    init(name: String, model: String, storage: Int) {
        self.name = name
        self.storage = storage
        self.model = model
    }
}

var sisekosLaptop = Laptop(name: "Apple Intel", model: "Mac Book Pro 16", storage: 512)
var pillzsLaptop = Laptop(name: "Apple Intel", model: "Mac Book Pro 13", storage: 256)
var BandilesLAptop = Laptop(name: "Apple Silicone", model: "Mac Book Pro 14", storage: 512)

print("Siseko uses a \(sisekosLaptop.name) model \(sisekosLaptop.model) and has storgae capacity of \(sisekosLaptop.storage)GB")
// Siseko uses a Apple Intel model Mac Book Pro 16 and has storgae capacity of 512GB

var athisLaptop = sisekosLaptop
athisLaptop.name = "Asus"
athisLaptop.model = "TUF Series"
athisLaptop.storage = 4000


print("Siseko uses a \(sisekosLaptop.name) model \(sisekosLaptop.model) and has storgae capacity of \(sisekosLaptop.storage)GB")
//prints - Siseko uses a Asus model TUF Series and has storgae capacity of 4000GB
 /*
  Now sisekos Laptop is no longer an Apple becuase when we created Athis's Laptop as a copy of Siseko's laptop it pointed to the reference of Sekos's laptop and did not copy thuse changing the details of Sekos Laptop
  */
  
  print("Athi  uses a \(athisLaptop.name) model \(athisLaptop.model) and has storgae capacity of \(athisLaptop.storage)GB")
// prints - Athi  uses a Asus model TUF Series and has storgae capacity of 4000GB

print("---------------------------------------------------------------------")
print("-------------------------------PHONE-------------------------------------")
print("---------------------------------------------------------------------")
var bandilesPhone = Phone(name: "Samsung", model: "S20", storage: 128)

print("Bandile's phone is a \(bandilesPhone.name) model \(bandilesPhone.model) and has storgae capacity of \(bandilesPhone.storage)GB")

var mpilosPhone = bandilesPhone

print("Mpilo's phone is copies Bandz phone being a \(mpilosPhone.name) model \(mpilosPhone.model) and has storgae capacity of \(mpilosPhone.storage)GB")
// prints - Mpilo's phone is copies Bandz phone being a Samsung model S20 and has storgae capacity of 128GB

mpilosPhone.name = "Samsung"
mpilosPhone.model = "S22 ultra"
mpilosPhone.storage = 256

print("Bandile's phone is still a \(bandilesPhone.name) model \(bandilesPhone.model) and has storgae capacity of \(bandilesPhone.storage)GB")
// prints - Bandile's phone is still a Samsung model S20 and has storgae capacity of 128GB

print("Mpilo's phone is now a \(mpilosPhone.name) model \(mpilosPhone.model) and has storgae capacity of \(mpilosPhone.storage)GB")
// prints - Mpilo's phone is now a Samsung model S22 ultra and has storgae capacity of 256GB

/**
 Mpilos phone was a separate copy of the data of Bandile's Phone that is why Bandiles phone details were not changed when Mpilos phone details changed
 */


