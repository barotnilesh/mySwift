// Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var index = 0
while index < numbers.count {
    println(numbers[index])
    index++
}

let months = [1, 2, 3]
for month in months {
    if month == 1 {
        println ("January")
    } else if month == 2 {
        println ("February")
    } else if month == 3 {
        println ("March")
    }
}