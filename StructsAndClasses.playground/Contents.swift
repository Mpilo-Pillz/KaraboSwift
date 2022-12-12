import UIKit

struct Resolution {
    // value tye stored properties
    var width = 0
    var height = 0
}

class VideoMode {
    // reference type stored properties
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"

// Drilling to resolution from Video mode
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"

let vga = Resolution(width: 640, height: 480)
print("FrameRateBeofre \(someVideoMode.frameRate)")
someVideoMode.frameRate = 60.0
let someOtherVideoNowMessedUpByReference = VideoMode()
print("FrameRateAfter \(someVideoMode.frameRate)")
print("FrameRateAfterFor some  ViewMode \(someOtherVideoNowMessedUpByReference.frameRate)")

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

/**
 This example declares a constant called hd and sets it to a Resolution instance initialized with the width and height of full HD video (1920 pixels wide by 1080 pixels high).

 It then declares a variable called cinema and sets it to the current value of hd. Because Resolution is a structure, a copy of the existing instance is made, and this new copy is assigned to cinema. Even though hd and cinema now have the same width and height, they’re two completely different instances behind the scenes.

 Next, the width property of cinema is amended to be the width of the slightly wider 2K standard used for digital cinema projection (2048 pixels wide and 1080 pixels high):
 */
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
// Prints "cinema is now 2048 pixels wide"
print("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"



