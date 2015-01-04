// Playground - noun: a place where people can play

import UIKit

class NetSalary {
    var totalSalary:Double
    let noDiduction:Double
    let noTaxable:Double
    var taxableSalary: Double
    var annualTax: Double
    var totalTax: Double
    var nI: Double
    init () {
        self.totalSalary = 0.00
        self.noDiduction = 7748.0
        self.noTaxable = 9440.00
        self.taxableSalary = 00.00
        self.annualTax = 00.00
        self.totalTax = 00.00
        self.nI =  00.00
    }
    
    func taxOnSalary(totalSalary:Double) -> Double {
        taxableSalary = totalSalary - noTaxable
        return taxableSalary
    }
    func taxCalculation(taxableSalary:Double) -> Double {
        if taxableSalary <= 32010.0 {
           var annualTax = ((taxableSalary) * 20.0 / 100)
    } else if taxableSalary >= 32011.00 && taxableSalary <= 100000.00
        {
            
            var annualTax1 = ((taxableSalary) * 40.0 / 100)
        }
        return annualTax
    }
    
    func nICalculation(totalSalary:Double) -> Double {
        return ((totalSalary - noDiduction) * 12 / 100)
    }
    
}
var t1 = NetSalary()
var taxableSalary = t1.taxOnSalary(60000.00)
var totalTax = t1.taxCalculation(taxableSalary)
var totalSalary = 60000.0
var t2 : String = "\(t1.taxOnSalary(totalSalary))"
var nationalInsurance = t1.nICalculation(totalSalary)