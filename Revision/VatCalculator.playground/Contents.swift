import Foundation

func getTotal(isVatRegistered: Bool) -> ( Double, Int) -> Double {
    func totalWithVat(price: Double, quantity: Int) -> Double {
        let totalWithoutVat = price * Double(quantity);
        let vatAmount = totalWithoutVat * 0.15;
        return totalWithoutVat + vatAmount
    }
    
    func totalForNonVatRegistered(price: Double, quantity: Int) -> Double {
        return price * Double(quantity)
    }
    
    return isVatRegistered ? totalWithVat : totalForNonVatRegistered
    
}

let totalWithoutVat = getTotal(isVatRegistered: false)
print("The total without VAT is R\(totalWithoutVat(800, 160))")

let totalWithVat = getTotal(isVatRegistered: true)
print("The total with VAT is R\(totalWithVat(800, 160))")
