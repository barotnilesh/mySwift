// Playground - noun: a place where people can play

import UIKit

var totalSalary: Float = 25000.00
let noDiduction: Float = 5885.00
let noTaxable: Float = 10000.00
var taxableSalary: Float = totalSalary - noTaxable

if totalSalary < 10000 {
    taxableSalary = 0.00
    } else {
    taxableSalary = totalSalary - noTaxable
    }

var totalNI1 = ((totalSalary - noDiduction) * 10.69985/100)

var totalTax = ((totalSalary - noTaxable) * 20 / 100)
var totalDidu = (totalTax + totalNI1)
var netS = totalSalary - totalDidu