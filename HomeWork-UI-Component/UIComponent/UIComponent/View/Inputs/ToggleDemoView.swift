import SwiftUI

struct ToggleDemoView: View{
    @State private var isOn: Bool = false
    var body: some View{
        VStack(spacing: 20){
            Text("Toggle Demo")
                .font(.title)
            
            Toggle("Enable notification", isOn: $isOn)
                .padding()
            
            Text(isOn ? "ON" : "OFF")
                .foregroundColor(isOn ? .green : .red)
        }
        .padding()
    }
}
