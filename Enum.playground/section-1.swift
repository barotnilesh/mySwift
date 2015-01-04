// Playground - noun: a place where people can play

import UIKit

enum Speed: Int {
    case Slow = 10
    case Medium = 50
    case Fast = 100
}
Speed.Slow
var turtleSpeed = Speed.Slow.rawValue
turtleSpeed = Speed.Medium.rawValue
turtleSpeed

enum Day: Int {
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func daysTillWeekend(day: Day) -> Int {
    return Day.Saturday.rawValue - day.rawValue
}

daysTillWeekend(Day.Tuesday)