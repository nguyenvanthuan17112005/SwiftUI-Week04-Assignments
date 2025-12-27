import SwiftUI

struct StepperDemoView: View{
    @State private var quantity = 1
    var body: some View{
        VStack(spacing: 20){
            Text("Stepper Demo")
                .font(.title)
            
            Stepper("Quantity: \(quantity)", value: $quantity, in: 1...10) // struct of Stepper()
        }
        .padding()
    }
}
