
import SwiftUI
struct TextFieldDemoView: View {
    @State private var text = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("TextField Demo")
                .font(.title)

            TextField("Enter text", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()

            Text("You typed: \(text)")
        }
        .padding()
    }
}

