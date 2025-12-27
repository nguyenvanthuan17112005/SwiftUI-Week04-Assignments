import SwiftUI

struct FormDemoView: View {
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var receiveNews: Bool = false
    var body: some View {
        Form{
            Section("User Info"){
                TextField("Name", text: $name)
                    .autocapitalization(.none)
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
            }
            
            Section("Setting"){
                Toggle("Receive News Letter", isOn: $receiveNews)
            }
            
            Section{
                Button("Submit"){
                    print("Name: \(name)")
                    print("Email: \(email)")
                    print("Receive: \(receiveNews)")
                }
            }
        }
        .navigationTitle("Form")
    }
}

#Preview {
    FormDemoView()
}
