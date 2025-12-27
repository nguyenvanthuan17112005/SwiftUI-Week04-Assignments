import SwiftUI

struct SpacerDemoView: View {
    var body: some View {
        VStack{
            Text("Top")
                .font(.headline)
            
            Spacer()
            
            Text("Center")
                .font(.headline)
            
            Spacer()
            
            Button("Botomm Button"){
                print("Tapped")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationBarTitle("Spacer")
    }
}
