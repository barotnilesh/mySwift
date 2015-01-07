// Playground - noun: a place where people can play
import UIKit
var taxYEar = ["2013-2014","2014-2015"]

class NetSalary {
    var totalSalary: Double
    var taxableSalaryLimit1: Double
    var taxableSalaryLimit2: Double
    var noDiduction: Double
    var noTaxable: Double
    var taxableSalary: Double
    var annualTax: Double
    var annualTax1: Double
    var annualTax2: Double
    var taxRate1: Double
    var taxRate2: Double
    var totalTax: Double
    var nILimit1: Double
    var nILimit2: Double
    var nIRate1: Double
    var nIRate2: Double
    var nI: Double
    var nI1: Double
    var nI2: Double
    
    init () {
        self.totalSalary = 0.0
        self.taxableSalaryLimit1 = 0.0
        self.taxableSalaryLimit2 = 0.0
        self.noDiduction = 0.0 // 7748.0
        self.noTaxable = 0.0 // 9440.0
        self.taxableSalary = 0.0
        self.annualTax = 0.0
        self.annualTax1 = 0.0
        self.annualTax2 = 0.0
        self.taxRate1 = 0.0
        self.taxRate2 = 0.0
        self.totalTax = 0.0
        self.nILimit1 = 0.0 // NI Starts from 7749.00
        self.nILimit2 = 0.0 // NI changes from 41444
        self.nI =  0.0
        self.nIRate1 = 0.0
        self.nIRate2 = 0.0
        self.nI1 = 0.0
        self.nI2 = 0.0
    }
    
    func taxOnSalary(totalSalary:Double) -> Double {
        taxableSalary = totalSalary - noTaxable
        return taxableSalary
    }
    func taxCalculation(taxableSalary:Double) -> Double {
        if taxableSalary <= taxableSalaryLimit1 {
            var annualTax = ((taxableSalary) * taxRate1 / 100)
            return annualTax
            
    } else if taxableSalary > taxableSalaryLimit1 && taxableSalary <= taxableSalaryLimit2
        {
            var annualTax1 = ((taxableSalaryLimit1) * taxRate1 / 100)
            var annualTax2 = ((taxableSalary - taxableSalaryLimit1) * taxRate2 / 100)
            var annualTax = annualTax1 + annualTax2
            return annualTax
        }
        return annualTax
    }
    
    func nICalculation(totalSalary:Double) -> Double {
        if totalSalary == 0.0 && totalSalary <= noDiduction {
            nI = 0.0
        } else if totalSalary == nILimit1 && totalSalary <= nILimit2 {
            nI = ((totalSalary - noDiduction) * nIRate1 / 100)
        } else if totalSalary > nILimit2 {
            var nI1 = ((nILimit2 - noDiduction ) * nIRate1 / 100)
            var nI2 = ((totalSalary - nILimit2) * nIRate2 / 100)
            nI = nI1 + nI2
        }
        return nI
    }
}

class Year20132014 : NetSalary {
    override init () {
        super.init()
        
        super.noDiduction = 7748.0
        super.noTaxable = 9440.0
        super.taxRate1 = 20.0
        super.taxRate2 = 40.0
        super.nILimit1 = 7449.0
        super.nILimit2 = 41444.0
        super.nIRate1 = 12.0
        super.nIRate2 = 2.0
        super.taxableSalaryLimit1 = 32010.0
        super.taxableSalaryLimit2 = 100000.0
    }
}
class Year20142015 : NetSalary {
    override init () {
        super.init()
        
        super.noDiduction = 7956.0
        super.noTaxable = 10000.0
        super.taxRate1 = 20.0
        super.taxRate2 = 40.0
        super.nILimit1 = 7957.0
        super.nILimit2 = 41860.0
        super.nIRate1 = 12.0
        super.nIRate2 = 2.0
        super.taxableSalaryLimit1 = 31865.0
        super.taxableSalaryLimit2 = 100000.0
    }
}

var yr201415 = Year20142015()
taxYEar.count
var curYear=taxYEar[0]
var totalSalary :Double = 60000.00
if curYear == "2013-2014" {
    println("\(curYear)")
    var yr201314 = Year20132014()
    var totalSalary :Double = 60000.00
    println(totalSalary)
    var taxableSalary = (yr201314.taxOnSalary(totalSalary))
    var x :Double = ("\(taxableSalary)" as NSString).doubleValue
    println("\(x)")
    var Tax:Double = (yr201314.taxCalculation(x))
    println(Tax)
    var nII = yr201314.nICalculation(totalSalary)
    var totalDiduction: Double = Tax + nII
    var totalTakeHome: Double = totalSalary - totalDiduction
    
} else if curYear == "2014-2015" {
    println("\(curYear)")
    var totalSalary :Double = 60000.00
    println(totalSalary)
    
    var taxableSalary = (yr201415.taxOnSalary(totalSalary))
    var x :Double = ("\(taxableSalary)" as NSString).doubleValue
    println("\(x)")
    var Tax:Double = (yr201415.taxCalculation(x))
    println(Tax)
    var nII = yr201415.nICalculation(totalSalary)
    var totalDiduction: Double = Tax + nII
    var totalTakeHome: Double = totalSalary - totalDiduction
} else {
    println("Select correct tax year")
}


//var totalSalary :Double = 60000.00
//println(totalSalary)
//
//var taxableSalary = (yr201415.taxOnSalary(totalSalary))
//var x :Double = ("\(taxableSalary)" as NSString).doubleValue
//println("\(x)")
//var Tax:Double = (yr201415.taxCalculation(x))
//println(Tax)
//var nII = yr201415.nICalculation(totalSalary)
//var totalDiduction: Double = Tax + nII
//var totalTakeHome: Double = totalSalary - totalDiduction
