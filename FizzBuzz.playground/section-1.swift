// Playground - noun: a place where people can play

import UIKit

var x = 15
var fizz = x % 3
var buzz = x % 5

if fizz == 0 && buzz == 0  {
    println("FizzBuzz")
} else if buzz == 0 {
    println("Buzz")
} else if fizz == 0 {
    println("Fizz")
} else {
    println("Number is not divisible by 3 or 5")
}

let num = 1...100
for n in num {
    if (n % 2 == 0 ){
        println("Even")
    } else {
        println("odd")
    }
}

