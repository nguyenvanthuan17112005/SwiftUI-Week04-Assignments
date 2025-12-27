import SwiftUI

struct TextDemoView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 16){
            Text("Swift Text Demo")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("This is normal text")
                .font(.body) // normal text
            Text("Bold & Colored Text")
                .font(.headline) // headline
                .foregroundColor(.blue) // color text
            Text("Italic Text")
                .italic() // italic text
            Text("Multiline text example. Multiline text example. Multiline text example")
                .lineLimit(2)
                .truncationMode(.tail)
            Text ("Underline & Strikethrough")
                .underline()
                .strikethrough()
            Text("Custom Font Size")
                .font(.system(size: 22, weight: .semibold))
        }
        .padding()
        .navigationTitle("Text")
    }
}
#Preview {
    TextDemoView()
}
