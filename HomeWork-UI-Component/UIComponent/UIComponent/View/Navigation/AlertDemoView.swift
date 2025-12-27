import SwiftUI

struct AlertDemoView: View{
    @State private var showAlert: Bool = false
    var body: some View{
        Button("Show Alert"){
            showAlert = true
        }
        .alert("Warning", isPresented: $showAlert){
            Button("OK", role: .cancel){}
        } message: {
            Text("This is a Alert")
        }
    }
}
