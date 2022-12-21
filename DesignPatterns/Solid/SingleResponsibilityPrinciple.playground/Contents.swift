import UIKit

class Book {
    var name: String
    var authorName: String
    var year: Int
    var price: Double
    var isbn: String
    
    init(name: String, authorName: String, year: Int, price: Double, isbn: String) {
        self.name = name
        self.authorName = authorName
        self.price = price
        self.year = year
        self.isbn = isbn
    }
}

let pianoForBeginners = Book(name: "Piano For Beginners", authorName: "Mpilo Pillz", year: 2022, price: 500.00, isbn: "1234567890" );

print(pianoForBeginners.name)


class Invoice {
    var book: Book
    var quantity: Int
    var discountRate: Double
    var taxRate: Double
    var _total: Double!
    var total: Double { return _total}
    
    
    
    func calculatedTotal() -> Double {
        let price = ((book.price - book.price * discountRate) * Double(self.quantity))
        let priceWithTaxes = price * (1 + taxRate)
        return priceWithTaxes
    }
    
//    func printInvoice() {
//        print("R\(quantity) x \(book.name) \(book.price)")
//    }
//
//    func saveToFile(filename: String) {
//        print("Book saved as \(filename)")
//    }
    
    init(book: Book, quantity: Int, discountRate: Double, taxRate: Double) {
        self.book = book
        self.quantity = quantity
        self.discountRate = discountRate
        self.taxRate = taxRate
        self._total = self.calculatedTotal();
        
    }
}

let invoice = Invoice(book: pianoForBeginners, quantity: 1, discountRate: 0.10, taxRate: 0.15)

print(invoice.total)

class InvoicePrinter {
    var invoice: Invoice
    
    init(invoice: Invoice) {
        self.invoice = invoice
    }
    
    func printInvoice() {
                print("\(invoice.quantity) x \(invoice.book.name) \(invoice.book.price) \(invoice.book.price) R");
                print("Discount Rate: \(invoice.discountRate)");
                print("Tax Rate: \(invoice.taxRate)" );
                print("Total: \(invoice.total) $");
    }
}

class InvoicePersistence {
    var invoice: Invoice
    
    init(invoice: Invoice) {
        self.invoice = invoice
    }
    
    func saveToFile(fileName: String) {
        print("Book saved as \(fileName)")
    }
}


