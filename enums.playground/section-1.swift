// Days in week

import UIKit

let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

func weekdayOrWeekend(dayOfWeek: String) -> String {
    switch dayOfWeek {
        case "Monday","Tuesday","Wednesday","Thursday","Friday" :
            return "It's Weekday"
        case "Saturday","Sunday":
            return "Hurray, its weekend"
        default:
            return "Not Valid day"
    }
}

enum Speed: Int {
    case Slow = 10
    case Medium = 50
    case Fast = 100
}
var turtleSpeed = Speed.Slow.rawValue