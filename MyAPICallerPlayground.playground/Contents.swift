import UIKit

var greeting = "Hello, playground"

struct Response: Codable {
let isAuthenticated: Bool
let message: String
}

func makePostRequest() {
    guard let url = URL(string: "http://localhost:4000/api/v1/auth/login") else {
        return
    }
    
    var request = URLRequest(url: url)
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let body: [String: AnyHashable] = [
        "email": "thulani@karabo.co.za",
    "password": "Thapelo"
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    // Make request
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil else {
            return
        }
        
        do {
            let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print("success: \(response)")
        } catch {
            print(error)
        }
    }
    task.resume()
}

func makeCodablePostRequest() {
    guard let url = URL(string: "http://localhost:4000/api/v1/auth/login") else {
        return
    }
    
    var request = URLRequest(url: url)
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let body: [String: AnyHashable] = [
        "email": "invalid@login.co.za",
    "password": "notAuth"
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    // Make request
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil else {
            return
        }
        
        do {
            let response = try JSONDecoder().decode(Response.self, from: data)
            print("success: \(response)")
        } catch {
            print(error)
        }
    }
    task.resume()
}

//makePostRequest()
makeCodablePostRequest()
