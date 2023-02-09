import UIKit

func chunk(arr: [Int], length: Int) -> [[Int]] {
    var chunked = [[Int]]()
    var lastItem =  [Any]()

    for item in arr {
        var intendedIndex = chunked.count - 1
        print("chunk count  \(chunked.count) + curre index \(intendedIndex)")
//        lastItem.append(item)
//        chunked.append([item])
//        print("->\(lastItem)")
//        print("but \(item)")
////        print("why \(lastItem.count)")
//
        if chunked.count > 0 {
            lastItem = chunked[chunked.count - 1]
            print("lastItem IS -->, \(lastItem)")
        }
        
        print("last it --> \(lastItem)")

        if lastItem.isEmpty || intendedIndex < 0  ||  lastItem.count == length {
            print("in chunk")
            chunked.append([item])
            print("chunke arr ->\(chunked)")
        } else {
            print("adds to last item")
            lastItem.append(item)
            print("after adding\(lastItem)")
        }

    }

    return chunked
}


//print(chunk(arr:[1,2,3,4,5], length:2))
print(chunk(arr:[1,2,3], length:2))


//extension Array {
//    func chunked(into size: Int) -> [[Element]] {
//        return stride(from: 0, to: count, by: size).map {
//            Array(self[$0 ..< Swift.min($0 + size, count)])
//        }
//    }
//}
//
//let numbers = Array(1...100)
//let result = numbers.chunked(into: 5)
//
//print(result)
