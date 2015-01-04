// Playground - noun: a place where people can play

import UIKit

class Person{
    var Name:String
    var Age:Int
    
    init() {
        self.Name = "Initial Name"
        self.Age = 10
    }
    
    func updateNameAndAge(name:String, age:Int){
        self.Name = name
        self.Age = age
    }
    func increaseAge(ageToIncreaseBy:Int) -> Int {
        self.Age += ageToIncreaseBy
        return self.Age
    }
    
    class func avgAge() -> Int {
        return 44
    }
}

var p1 = Person()
p1.updateNameAndAge("Alice", age: 14)
p1.Age = p1.increaseAge(5)

var p2 = Person()
p2.updateNameAndAge("James", age: 16)
Person.avgAge()
var avgage1 = Person.avgAge()

class NetSalary {
    var totalSalary:Double
    let noDiduction:Double
    let noTaxable:Double
    var taxableSalary: Double
    var totalTax: Double
    var nI: Double
    init () {
        self.totalSalary = 0.00
        self.noDiduction = 7748.0
        self.noTaxable = 9440.00
        self.taxableSalary = 00.00
        self.totalTax = 00.00
        self.nI =  00.00
    }
    
    func taxOnSalary(totalSalary:Double) -> Double {
        return totalSalary - noTaxable
    }
    func taxCalculation(taxableSalary:Double) -> Double {
        return ((taxableSalary) * 20.0 / 100)
    }
    func nICalculation(totalSalary:Double) -> Double {
        return ((totalSalary - noDiduction) * 12 / 100)
    }

}
var t1 = NetSalary()
var taxableSalary = t1.taxOnSalary(25000.00)
var totalTax = t1.taxCalculation(taxableSalary)
var totalSalary = 25000.0
var t2 : String = "\(t1.taxOnSalary(totalSalary))"
var nationalInsurance = t1.nICalculation(totalSalary)

