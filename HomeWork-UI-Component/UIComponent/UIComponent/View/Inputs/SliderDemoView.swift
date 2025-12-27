import SwiftUI

struct SliderDemoView: View{
    @State private var value: Double = 50
    var body: some View{
        VStack(spacing: 20){
            Text("Slider Demo")
                .font(.title)
            
            Slider(value: $value, in: 0...100)
            
            Text("Value: \(Int(value))")
        }
        .padding()
    }
}
