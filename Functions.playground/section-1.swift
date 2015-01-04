// Functions 

import UIKit

println("Swift Functions") //Default println function
func calculateArea(hight: Int, width: Int) -> Int { //Local parameters
    return hight * width
}
calculateArea(22, 10)

func fullName(firstname: String, lastname: String) -> String {
    return ("\(firstname) \(lastname)")
}

fullName("Nilesh", "Barot")


// Functions  named parameters

func calculateArea(#height: Int, #width: Int) -> Int {
    return height * width
}

println("Area = \(calculateArea(height: 20, width:40))")


func greeting(#person: String) -> String {
    return ("Hello \(person)")
}
greeting(person: "Tom")
