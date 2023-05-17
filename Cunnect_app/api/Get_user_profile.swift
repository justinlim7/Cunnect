import Foundation

let url = URL(string: "http://127.0.0.1:8000/UserProfile/")!

let task = URLSession.shared.dataTask(with: url) { data, response, error in
    guard let data = data, error == nil else {
        print("Error: \(error?.localizedDescription ?? "Unknown error")")
        return
    }
    
    if let httpResponse = response as? HTTPURLResponse {
        print("Status code: \(httpResponse.statusCode)")
    }
    
    do {
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        if let dict = json as? [String: Any] {
            print("User: \(dict["user"] ?? "")")
            print("Bio: \(dict["bio"] ?? "")")
            print("CUNY: \(dict["CUNY"] ?? "")")
            print("Major: \(dict["major"] ?? "")")
            print("Birth Date: \(dict["birth_date"] ?? "")")
            print("Profile Pic: \(dict["profile_pic"] ?? "")")
            print("Date User Joined: \(dict["date_user_joined"] ?? "")")
        }
    } catch {
        print("Error decoding JSON: \(error.localizedDescription)")
    }
}

task.resume()
