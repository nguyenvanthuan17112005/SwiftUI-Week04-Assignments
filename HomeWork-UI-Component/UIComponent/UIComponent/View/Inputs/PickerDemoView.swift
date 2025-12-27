import SwiftUI

struct PickerDemoView: View{
    @State private var selected: String = "Red"
    let colors = ["Red", "Green", "Blue"]
    var body: some View{
        VStack(spacing: 20){
            Text("Picker Demo")
                .font(.title)
            
            Picker("Color", selection: $selected){
                ForEach(colors, id: \.self){
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            Text("Selection: \(selected)")
        }
        .padding()
    }
}
