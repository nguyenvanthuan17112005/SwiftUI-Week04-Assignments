import SwiftUI

struct LabelDemoView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Label Demo")
                .font(.title)
            
            Label("Favorites", systemImage: "start.fill")
                .foregroundColor(.yellow)
            
            Label {
                Text("Settings")
            } icon: {
                Image(systemName: "gear")
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}
