import SwiftUI

struct ZStackDemoView: View{
    var body: some View {
        ZStack{
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            Text("ZStack")
                .font(.largeTitle)
                .bold()
        }
    }
}
