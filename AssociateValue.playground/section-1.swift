// Playground - noun: a place where people can play

import UIKit

enum Status {
    case Success(String)
    case Failure(String)
}

let downloadStatus = Status.Failure("Downlaod failed")

switch downloadStatus {
case .Success(let success):
    println(success)
case .Failure(let failure):
    println(failure)

}


enum BookType {
    // Write your members with associated values here
    case Pdf(String)
    case Epub(String)
}
var book = BookType.Pdf("This is the book")

enum Coin: Int {
    case Penny = 1, Nickel = 5, Dime = 10, Quarter = 25
    
    func isGreater(newValue: Coin) -> Bool {
        return self.rawValue > newValue.rawValue
    }
}

var coin1 = Coin.Dime
coin1
