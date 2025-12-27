import SwiftUI

struct VStackDemoView: View {
    var body: some View{
        VStack(spacing: 20){
            Text("Top")
            Text("Middle")
            Text("Bottom")
        }
        .navigationTitle("VStack")
    }
}
