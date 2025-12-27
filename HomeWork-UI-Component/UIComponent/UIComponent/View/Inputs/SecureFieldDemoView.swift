import SwiftUI

struct SecureFieldDemoView: View{
    @State private var password = ""
    var body: some View{
        VStack(spacing: 20){
            Text("SecureField Demo")
                .font(.title)
            SecureField("Enter password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Password length: \(password.count)")
        }
        .padding()
    }
}
