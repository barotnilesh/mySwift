// Playground - noun: a place where people can play

import UIKit

class Person {
    
    var Name:String = "Initial Name"
    init () {
        
    }
    func walk() {
        println("I'm walking")
    }
}

var a = Person()
a.Name = "Alice"
a.walk()

class superHuman:Person {
    var alterEgoName:String = "Clark"
    func Fly() {
        println("I am flying")
    }
    override func walk() {
        println("I am walking really fast")
    }
}
var b = superHuman()
b.Name = "Bob"
b.walk()
b.Fly()

