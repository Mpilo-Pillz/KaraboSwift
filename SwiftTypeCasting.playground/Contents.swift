import UIKit

class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Be Cool", director: "Sfiso Tshabedze"),
    Song(name: "Orchard", artist: "Abe M Beats ft HM Surf"),
    Movie(name: "Get Shorty", director: "Fezile Phatlane"),
    Song(name: "L'Automne", artist: "Keliris"),
    Movie(name: "Survival Guide to South Africa", director: "Shucks Tshabalala"),
    Song(name: "Just Keep Going", artist: "Tobi Lou"),
    Movie(name: "Bugsy Malone", director: "Phat Sam")
]
// the type of "library" is inferred to be [MediaItem]
/**
 The items stored in library are still Movie and Song instances behind the scenes. However, if you iterate over the contents of this array, the items you receive back are typed as MediaItem, and not as Movie or Song. In order to work with them as their native type, you need to check their type, or downcast them to a different type, as described below.
 */

/**
 Checking Type
 * use is to check if an instance is of a certain subclass
 */
var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

/**
 Downcasting

 A constant or variable of a certain class type may actually refer to an instance of a subclass behind the scenes. Where you believe this is the case, you can try to downcast to the subclass type with a type cast operator (as? or as!).
 
 In this example, each item in the array might be a Movie, or it might be a Song. You don’t know in advance which actual class to use for each item, and so it’s appropriate to use the conditional form of the type cast operator (as?) to check the downcast each time through the loop:
 */

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

/**
 Type Casting for Any and AnyObject

 Swift provides two special types for working with nonspecific types:

 Any can represent an instance of any type at all, including function types.

 AnyObject can represent an instance of any class type.
 */

var things: [Any] = []

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Song(name: "Mlazi Milano", artist: "Okmalumkoolkat"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}

let optionalNumber: Int? = 3
things.append(optionalNumber)        // Warning
things.append(optionalNumber as Any) // No warning

