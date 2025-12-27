import SwiftUI

struct ScrollViewDemoView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                ForEach(1...20, id: \.self){ index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("ScollView")
    }
}

#Preview {
    ScrollViewDemoView()
}
