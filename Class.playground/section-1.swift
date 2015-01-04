// Classes, Methods and properties

import UIKit

var str = "Hello, playground"

class Person{
    
    var Name: String = "Initial Name"
    
    init () {
        self.sayCheese()
    }
    
    func sayCheese () {
        println("Cheese")
    }
    
}

var firstPerson = Person()
firstPerson.sayCheese()
firstPerson.Name

firstPerson.Name = "Alice"
firstPerson.Name

var secondPerson = Person()
secondPerson.Name = "Bob"
secondPerson.Name
