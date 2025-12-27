import SwiftUI

struct ButtonDemoView: View{
    @State private var count = 0
    var body: some View{
        VStack(spacing: 20){
            Text("Demo Button")
                .font(.title)
            
            Button("Increase"){
                count += 1
            }
            .buttonStyle(.borderedProminent)
            
            Text("Count \(count)")
        }
        .padding()
    }
}
