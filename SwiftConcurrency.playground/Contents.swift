import UIKit

let photoNames: [String] = ["Beach", "Mountains", "Ocean", "Sea", "Landscape"]

func show(photo: String) {
    print(photoNames)
}

//listPhotos(inGallery: "Summer Vacation") { photoNames in
//    let sortedNames = photoNames.sorted()
//    let name = sortedNames[0]
//    downloadPhoto(named: name) { photo in
//        show(photo)
//    }
//}

func listPhotos(inGallery name: String) async -> [String] {
    let result = ["some value that comes form a newtwork call"];
    return result
}

let photoNames = await listPhotos(inGallery: "Summer Vacation")
let sortedNames = photoNames.sorted()
let name = sortedNames[0]
let photo = await downloadPhoto(named: name)
show(photo: photo)

func listPhotos(inGallery name: String) async throws -> [String] {
    try await Task.sleep(until: .now + .seconds(2), clock: .continuous)
    return ["IMG001", "IMG99", "IMG0404"]
}
