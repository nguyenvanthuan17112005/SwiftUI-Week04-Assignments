import SwiftUI

struct ProgressViewDemoView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("ProgressView Demo")
                .font(.title)
            
            ProgressView()
            
            ProgressView("Loading...", value: 0.6)
        }
        .padding()
    }
}
