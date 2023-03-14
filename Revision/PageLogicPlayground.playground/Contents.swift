import UIKit

protocol PagerControlLogic {
    var currentPage: Int { get }
    var hasNextPage: Bool { get }
    var hasPreviousPage: Bool { get }
    var startingIndexForNextPage: Int? { get }
    var startingIndexForPreviousPage: Int? { get }
    var currentPageDescription: String { get }

    init?(numberOfListings: Int, listingsPerPage: Int)

    func nextPage()
    func previousPage()
}

class PagerControl: PagerControlLogic {
    private let numberOfListings: Int
    private let listingsPerPage: Int
    var currentPage: Int { 0 }
    var hasNextPage: Bool { true }
    var hasPreviousPage: Bool { true }
    var startingIndexForNextPage: Int? { nil }
    var startingIndexForPreviousPage: Int? { nil }
    var currentPageDescription: String { "" }
    
    required init?(numberOfListings: Int, listingsPerPage: Int) {
        self.numberOfListings = numberOfListings
        self.listingsPerPage = listingsPerPage
    }
    func nextPage() {
        
    }
    func previousPage() {
        
       
    }
}

#if !RunTests

var pager = PagerControl(numberOfListings: 35, listingsPerPage: 10)
print(pager != nil)
print(pager!.currentPage == 0)
print(pager!.startingIndexForNextPage != nil)
print(pager!.startingIndexForNextPage == 10)
print(pager!.startingIndexForPreviousPage == nil)
pager!.nextPage()

print(pager!.currentPage == 1)
print(pager!.startingIndexForNextPage != nil && pager!.startingIndexForNextPage! == 20) //, "A starting index test failed")
print(pager!.startingIndexForPreviousPage != nil && pager!.startingIndexForPreviousPage! == 0) //, "A starting index test failed")
pager!.nextPage()
pager!.nextPage()
print(pager!.currentPage == 3)
print(pager!.startingIndexForNextPage == nil)
print(pager!.startingIndexForPreviousPage != nil)
print(pager!.startingIndexForPreviousPage == 20)

pager = PagerControl(numberOfListings: 35, listingsPerPage: 10)
pager!.nextPage()
pager!.nextPage()
pager!.nextPage()
pager!.nextPage()
print(pager!.currentPage == 3)
print(pager!.currentPageDescription == "Items 31 to 35")
pager!.previousPage()
print(pager!.currentPageDescription == "Items 21 to 30")
pager!.previousPage()
pager!.previousPage()
pager!.previousPage()
print(pager!.currentPage == 0)
print(pager!.currentPageDescription == "Items 1 to 10")

pager = PagerControl(numberOfListings: 15, listingsPerPage: 15)
print(pager != nil)
print(pager!.currentPageDescription == "Items 1 to 15")
print(pager!.hasNextPage == false)
print(pager!.hasPreviousPage == false)
#endif
