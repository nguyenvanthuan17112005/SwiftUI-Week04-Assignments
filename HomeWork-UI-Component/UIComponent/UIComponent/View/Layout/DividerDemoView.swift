import SwiftUI

struct DividerDemoView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Divider Demo")
                .font(.title)
                .bold()
            
            Text("Section 1")
                .font(.headline)
            
            Divider()
            
            Text("Section 2")
                .font(.headline)
            
            Divider()
                .background(Color.blue)
            
            HStack{
                Text("Left")
                Divider()
                Text("Right")
            }
            .frame(height: 40)
        }
        .padding()
        .navigationTitle("Divider")
    }
}
