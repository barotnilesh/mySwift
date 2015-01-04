// Playground - noun: a place where people can play

import UIKit

//The search function below returns a name if it is found in the array and an empty string if it is not found. Modify the search function to return an optional instead of just a String. In addition, you have to make sure the function returns a nil if the name is not found in the array.

func search(#name: String) -> String? {
    let names = ["Doc","Grumpy","Happy","Sleepy","Bashful","Sneezy","Dopey"]
    for n in names {
        if n == name {
            return n
        }
    }
    return nil
}

if let found = search(name: "Doc") {
    println("Found")
}


func sendNoticeTo(#aptNumber: Int){
    
}

func findApt (aptNumber : String) -> String? {
    let aptNumbers = ["101","202","404","501","534","745"]
    for tempAptNum in aptNumbers{
        if ( aptNumber == tempAptNum ) {
            return aptNumber
        }
    }
    return nil
}

if let culprit = findApt("101")?.toInt() {
    sendNoticeTo(aptNumber: culprit)
}


func divNum(num1: Int, num2: Int) -> Bool? {
    let result = (num1 % num2)
    if result == 0 {
     return true
    }
    return nil
}

if let try1 = divNum(999, 9) {
    println("Divisible")
} else {
    println("Not Divisible")
}

//isNotDivisible

//Given the isDivisible function, create another function called isNotDivisible which also takes in two parameters, namely the dividend and the divisor. It should also return a Bool. The goal of this new function is to let you know whether a dividend is NOT divisible by the divisor. (Note: the function should return only a Bool and not an optional.)

func isNotDivisible(#dividend: Int, #divisor: Int) -> Bool {
    if dividend % divisor != 0 {
        return true
    } else {
        return false
    }
}

isNotDivisible(dividend: 32, divisor: 4)













