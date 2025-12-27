import SwiftUI

struct LinkDemoView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Link Demo")
                .font(.title)
            
            Link("Open Apple", destination: URL(string: "https://apple.com")!)
            
            Link(destination: URL(string: "https://github.com")!){
                Label("Open Github", systemImage: "link")
            }
        }
        .padding()
    }
}
