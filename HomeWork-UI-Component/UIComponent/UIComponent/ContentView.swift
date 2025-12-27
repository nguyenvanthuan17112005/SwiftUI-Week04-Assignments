
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ComponentMenuView()
                .navigationTitle("Swift Components")
        }
    }
}

#Preview {
    ContentView()
}
