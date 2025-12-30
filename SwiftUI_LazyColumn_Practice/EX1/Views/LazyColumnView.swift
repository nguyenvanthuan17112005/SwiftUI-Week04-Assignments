import SwiftUI

struct LazyColumnView: View {

    let items = Array(1...1_000_000)

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(items, id: \.self) { item in
                    RowItemView(index: item)
                }
            }
            .padding()
        }
        .navigationTitle("LazyColumn")
    }
}

