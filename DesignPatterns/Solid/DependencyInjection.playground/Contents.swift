import UIKit

class CoupledParentClass {
    let parentProp = "Parent Property"
    
    func parentMethod() {
        print("Coupled Method")
    }
}

class CoupledChildClass {
    let coupledParentClass = CoupledParentClass()
    
    func runParentMethod() {
        coupledParentClass.parentMethod()
    }
}

let coupledChild = CoupledChildClass()

coupledChild.runParentMethod()
