// Playground - noun: a place where people can play

import UIKit

enum Status: String {
    case Doing = "Doing"
    case Pending = "Pending"
    case Completed = "Completed"

    init (Status: String) {
        self = .Pending
    }
}
struct Tasks {
    var taskDescription: String
    
    init (taskDescription: String, status: Status) {
        self.taskDescription = taskDescription
    }
}
var task1 = Tasks(taskDescription: "First Task", status: .Doing)

enum Coin: Int {
    case Penny = 1, Nickel = 5, Dime = 10, Quarter = 25
    init {
    self = .Quarter
    }
    func isGreater(currentValue: Coin, newValue: Coin) -> Bool {
        return currentValue.rawValue > newValue.rawValue
    }
}