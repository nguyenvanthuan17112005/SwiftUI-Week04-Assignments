import SwiftUI

struct ListDemoView: View {
    let items = [
        "Apple",
        "Banana",
        "Orange",
        "Mango",
        "Pineapple"
    ]
    var body: some View {
        List(items, id: \.self){ item in
            Text(item)
        }
        .navigationTitle("List")
    }
}

#Preview {
    ListDemoView()
}
