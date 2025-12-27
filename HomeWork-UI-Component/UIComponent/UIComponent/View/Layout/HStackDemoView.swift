import SwiftUI

struct HStackDemoView: View{
    var body: some View{
        HStack(spacing: 16){
            Color.red.frame(width: 50, height: 50)
            Color.green.frame(width: 50, height: 50)
            Color.blue.frame(width: 50, height: 50)
        }
        .navigationTitle("HStack")
    }
}
