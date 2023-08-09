import UIKit

protocol Duck {
    var flyBahavior: FlyBehavior { get };
    var quackBehavior: QuackBehavior { get };
    
    func swim();
    
    
}

protocol FlyBehavior {
    func fly()
        
    
}

protocol QuackBehavior {
    func quack()
}

struct FlyWithWings: FlyBehavior {
    func fly() {
        print("I'm flying")
    }
}

struct FlyNoWay: FlyBehavior {
    func fly() {
        print("I can't fly")
    }
}

struct Quack: QuackBehavior {
    func quack() {
        print("Quack")
    }
}

struct MuteQuack: QuackBehavior {
    func quack() {
        print("<< Silence >>")
    }
}

struct Squeak: QuackBehavior {
    func quack() {
        print("Squeak")
    }
}



extension Duck  {
    func performQuack() {
        quackBehavior.quack()
    }
    func performFly() {
        flyBahavior.fly()
    }
    
   func swim() {
       print("All ducks float, even decoys")
   }
    
    func display() {
        print("I am a Duck still")
    }
}

class RubberDuck {
//    var delegate: Duck
   let quackBehavior = Quack()
        
    func display() {
        print("I am a rubber duck")
    }
}

//TODO - fix after learning more about wift delegates, extensions protocols etc
//let rubberDuck = Duck()
//rubberDuck.performQuack()
    
