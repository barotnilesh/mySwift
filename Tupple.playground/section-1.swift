// Tuple

import UIKit

func searchNames (#name: String) -> (found: Bool,description: String) {
    let names = ["Nilesh","Ash","Dra","Linux","Swift"]
    
    var found = (false, "Name \(name), NOT in the list")
    
    for n in names {
        if n == name {
            found = (true, "Hurrey, Name \(name) is in the list ")
        }
    }
    return found
}

let (found,description) = searchNames(name: "Jagdish")

found
description

let result = searchNames(name: "Linux")
result.found
result.description

func greeting(person: String) -> (greeting: String,language: String) {
    let language = "English"
    let greeting = "Hello \(person)"
    return (greeting,language)
}

let res = greeting("Tom")
res.greeting
res.language


//Write a function that accepts a Dictionary as parameter and returns a named tuple. The dictionary should contain the following keys: title, artist and album.


func titleArtistAlbum(Dictionary,) -> (title: String, artist: String, album: String) {
var Dictionary = [["title":"Title1",
                "artist":"Artist1",
                "albumb":"Albumb1"],
                ["title":"Title2",
                "artist":"Artist2",
                "albumb":"Albumb2"],]
    return (title,artist,album)
}

let artres = titleArtistAlbum("title,artist,album")

artres.title
artres.artist







