// struct

import UIKit
struct Contact {
    var firstName: String
    var lastName: String
    var type: String
    
    init (fname: String, lname: String) {
        self.firstName = fname
        self.lastName = lname
        self.type = "Friend"
    }
    func fullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}
var person = Contact(fname: "Nilesh", lname: "Barot")
person.fullName()
person.firstName = "Nisarg"
person.fullName()

struct Expense {
    var description: String
    var amount: Double = 0.0
    
    init (description: String) {
        self.description = "This is description"
    }
    
    func calculateTaxes (percentage: Double) -> Double {
        return (self.amount * (percentage/100))
    }
}
var item = Expense(description: "This is the first")
item.amount = 100.00
item.calculateTaxes(10.00)
var taxes = item.calculateTaxes(7.5)


enum Coin: Int {
    case Penny = 1, Nickel = 5, Dime = 10, Quarter = 25
    init () {
    self = .Quarter
    }
    func isGreater(currentValue: Coin, newValue: Coin) -> Bool {
        return currentValue.rawValue > newValue.rawValue
    }
}





























