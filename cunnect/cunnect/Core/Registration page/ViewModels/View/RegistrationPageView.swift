//
//  ContentView.swift
//  cunnect
//
//  Created by Upashna Shahi on 3/29/23.
//

import SwiftUI

struct Userr: Decodable {
    let id: Int
    let email: String
    let password: String
    let firstName: String
    let lastName: String
}
var isRegistrationComplete = false // move the variable declaration to this level
func loadRegistration() {
    if let path = Bundle.main.path(forResource: "registration", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let users = try decoder.decode([Userr].self, from: data)
            print(users)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

 struct RegistrationPage: View {
     @State private var showingAlert = false
     @State private var alertTitle: String = ""
     @State private var alertMessage = ""

     @State private var showAlert = false
     @State private var isRegistrationComplete: Bool = false
     struct HomePage: View {
         var body: some View {
             Text("Welcome to Connect!")
         }
     }
   
     @State private var email: String = ""
     @State private var username: String = ""
     @State private var password: String = ""
     @State private var confirmPassword: String = ""
     @State private var firstName: String = ""
     @State private var lastName: String = ""
     @State private var major: String = ""
     @State private var cunyCampus: String = ""
     @State private var graduationYear: String = ""
     @State private var birthDate: Date = Date()
    @State private var isNextButtonTapped: Bool = false
     
     init() {
         loadRegistration()
     }
     var body: some View {
         NavigationView {
             VStack {
                 Text("Register")
                     .font(.title)
                 Divider()
                     .frame(height: 01.0)
                     .background(Color.black)
                 Spacer()
                     .padding(-1.0)
                 Text("EMAIL")
                     .font(.title2)
                     .padding(.trailing, 285.00)
                 Text("Enter your CUNY email address")
                     .font(.body)
                     .foregroundColor(Color.gray)
                     .padding(.trailing, 110.0)
                 TextField("@cuny.edu", text: $email)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("USERNAME")
                     .font(.title2)
                     .padding(.trailing, 255.00)
                 TextField("Username", text: $username)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("PASSWORD")
                     .font(.title2)
                     .padding(.trailing, 253.00)
                 SecureField("Password", text: $password)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("CONFIRM PASSWORD")
                     .font(.title2)
                     .padding(.trailing, 180.00)
                 SecureField("Confirm Password", text: $confirmPassword)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("FIRST NAME")
                     .font(.title2)
                     .padding(.trailing, 250.00)
                 TextField("First Name", text: $firstName)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("LAST NAME")
                     .font(.title2)
                     .padding(.trailing, 250.00)
                 TextField("Last Name", text: $lastName)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 
                 Text("MAJOR")
                     .font(.title2)
                     .padding(.trailing, 275.00)
                 TextField("Major", text: $major)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                 Text("USERNAME")
                     .font(.title2)
                     .padding(.trailing, 270.00)
                 TextField("Username", text: $username)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("FIRST NAME")
                     .font(.title2)
                     .padding(.trailing, 250.00)
                 TextField("First Name", text: $firstName)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("LAST NAME")
                     .font(.title2)
                     .padding(.trailing, 250.00)
                 TextField("Last Name", text: $lastName)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("PASSWORD")
                     .font(.title2)
                     .padding(.trailing, 256.00)
                 SecureField("Password", text: $password)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("CONFIRM PASSWORD")
                     .font(.title2)
                     .padding(.trailing, 195.00)
                 SecureField("Confirm Password", text: $confirmPassword)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("MAJOR")
                     .font(.title2)
                     .padding(.trailing, 280.00)
                 TextField("Major", text: $major)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("CUNY CAMPUS")
                     .font(.title2)
                     .padding(.trailing, 245.00)
                 TextField("CUNY Campus", text: $cunyCampus)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("GRADUATION YEAR")
                     .font(.title2)
                     .padding(.trailing, 190.00)
                 TextField("Graduation Year", text: $graduationYear)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 Text("BIRTHDATE")
                     .font(.title2)
                     .padding(.trailing, 258.00)
                 TextField("MM/DD/YYYY", text: $birthDate)
                     .padding(.vertical, 5.0)
                     .background(Color(.systemGray6))
                     .frame(width: 350, height: 50)
                     .cornerRadius(15.0)
                 NavigationLink(destination: RegistrationPage3(), isActive: $isNextButtonTapped) {
                     EmptyView()
                 }
                 Button(action: {
                     self.isNextButtonTapped = true
                 }) {
                     Text("Next")
                         .font(.title2)
                         .padding(.trailing, 250.0)
                     TextField("Password", text: $password)
                         .padding(.vertical, 5.0)
                         .background(Color(.systemGray6))
                         .frame(width: 350, height: 50)
                         .cornerRadius(15.0)
                         .padding(.bottom, 10)
                     Text("CONFIRM PASSWORD")
                         .font(.title2)
                         .padding(.trailing, 180.0)
                     TextField("Confirm Password", text: $confirmPassword)
                         .padding(.vertical, 5.0)
                         .background(Color(.systemGray6))
                         .frame(width: 350, height: 50)
                         .cornerRadius(15.0)
                         .padding(.bottom, 10)
                     Text("MAJOR")
                         .font(.title2)
                         .padding(.trailing, 295.0)
                     TextField("Enter your Major", text: $major)
                         .padding(.vertical, 5.0)
                         .background(Color(.systemGray6))
                         .frame(width: 350, height: 50)
                         .cornerRadius(15.0)
                         .padding(.bottom, 10)
                     Text("CUNY CAMPUS")
                         .font(.title2)
                         .padding(.trailing, 220.0)
                     TextField("Enter your CUNY Campus", text: $cunyCampus)
                         .padding(.vertical, 5.0)
                         .background(Color(.systemGray6))
                         .frame(width: 350, height: 50)
                         .cornerRadius(15.0)
                         .padding(.bottom, 10)
                     Text("GRADUATION YEAR")
                         .font(.title2)
                     TextField("Enter your Graduation Year", text: $graduationYear)
                         .padding(.vertical, 5.0)
                         .background(Color(.systemGray6))
                         .frame(width: 350, height: 50)
                         .cornerRadius(15.0)
                         .padding(.bottom, 10)
                     Text("BIRTHDATE")
                         .font(.title2)
                         .padding(.trailing, 260.0)
                     DatePicker(
                         "Enter your Birthdate",
                         selection: $birthDate,
                         displayedComponents: [.date]
                     )
                     .padding(.bottom, 20.0)
                     NavigationLink(destination: HomePage(), isActive: $isRegistrationComplete) {
                         EmptyView()
                     }
                     // ... (previous code)

                     // Button to proceed to the next page
                     Button(action: {
                         // Validate input fields before proceeding
                         if email.isEmpty || password.isEmpty || firstName.isEmpty || lastName.isEmpty || confirmPassword.isEmpty || major.isEmpty || cunyCampus.isEmpty || graduationYear.isEmpty || birthDate == nil {
                             showingAlert = true
                             alertTitle = "Error"
                             alertMessage = "Please fill in all required fields."
                         } else if password != confirmPassword {
                             showingAlert = true
                             alertTitle = "Error"
                             alertMessage = "Passwords do not match."
                         } else {
                             // Proceed to the next page
                             isNextButtonTapped = true
                         }
                     }) {
                         Text("Next")
                             .font(.headline)
                             .foregroundColor(.white)
                             .multilineTextAlignment(.center)
                             .padding()
                             .frame(width: 285, height: 36)
                             .background(Color(red: 0.09803921568627451, green: 0.19215686274509805, blue: 0.5333333333333333))
                             .cornerRadius(15.0)
                     }
                     .padding(.bottom, 500.0)

                     Spacer()

                     // ... (other views)

                     .navigationBarBackButtonHidden(true)
                     .navigationBarItems(
                         leading: Button(action: {
                             // Handle back button logic here
                         }) {
                             Image(systemName: "chevron.left")
                                 .foregroundColor(.black)
                                 .padding(.top, 10.0)
                                 .font(.title2)
                         }
                     )
                     .padding(.bottom, 70.0)

                     // ... (remaining code)



                                                                           showingAlert = true
                                                                           alertTitle = "Error"
                                                                           alertMessage = "Please fill in all required fields."
                                                                       } else if password != confirmPassword {
                                                                           showingAlert = true
                                                                           alertTitle = "Error"
                                                                           alertMessage = "Passwords do not match."
                                                                       } else {
                                                                           // Proceed to the next page
                                                                           isNextButtonTapped = true
                                                                       }
                                                                   }) {
                                                                       Text("Next")
                                                                           .font(.headline)
                                                                           .foregroundColor(.white)
                                                                           .multilineTextAlignment(.center)
                                                                           .padding()
                                                                           .frame(width: 285, height: 36)
                                                                           .background(Color(red: 0.09803921568627451, green: 0.19215686274509805, blue: 0.5333333333333333))
                                                                           .cornerRadius(15.0)
                                                                   }
                                                                   .padding(.bottom, 500.0)
                                                                   Spacer()
                                                                   }
                                                                   .alert(isPresented: $showingAlert) {
                                                                       Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                                                                   }
                                                                   .navigationBarBackButtonHidden(true)
                                                                   .navigationBarItems(
                                                                       leading: Button(action: {
                                                                           // Handle back button logic here
                                                                       }) {
                                                                           Image(systemName: "chevron.left")
                                                                               .foregroundColor(.black)
                                                                               .padding(.top, 10.0)
                                                                               .font(.title2)
                                                                       }
                                                                   )
                                                                   }
                                                                   .padding(.bottom, 70.0)
                                                                   }

                                                                   struct RegistrationPage_Previews: PreviewProvider {
                                                                       static var previews: some View {
                                                                           RegistrationPage()
                                                                       }
                                                                   }
