// Dictionary 

import UIKit

let favoriteSong = [
    "title": "Prabhatia",
    "artist": "Praful Dave",
    "album": "Prabhatia1"
]


func returnTuple(songDict: [String: String]) -> (title: String, artist: String, album: String) {
    
    return (songDict["title"]!, songDict["artist"]!, songDict["album"]!)
    
}

let song = returnTuple(favoriteSong)
song.title
song.artist
song.album

