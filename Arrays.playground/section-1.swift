// Array and Dictionary

import UIKit

var todo = ["Return Calls","Check emails", "Write blogpost"]
todo += ["Learn Swift","Develop ios app"]
todo[4]

todo.append("Item 1")
todo.insert("Item 2", atIndex: 2)

"ICICI Bank, Ground Floor, Sthapana complex, Opp GHB Complex, Ankur Road, Naranpura, Ahmedabad, 380013 "

let currencies = [  "US" : "Dollar",
                    "UK" : "Pound",
                    "JP" : "Yen"]

let ukCurrency = currencies["UK"]

var SongArray = [["title1":"Title1",
                "artist1":"Artist1",
                "albumb1":"Albumb1"],
                ["title2":"Title2",
                "artist2":"Artist2",
                "albumb2":"Albumb2"],
                ]

SongArray[0]
SongArray[1]

for i in 1...10 {
    println("\(i) * 7 = \(i*7)")
}



