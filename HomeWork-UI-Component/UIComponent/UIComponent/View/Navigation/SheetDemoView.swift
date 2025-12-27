import SwiftUI

struct SheetDemoView: View{
    @State private var showSheet = false
    var body: some View{
        Button("Show Sheet"){
            showSheet = true
        }
        .sheet(isPresented: $showSheet){
            Text("This is a Sheet")
                .font(.title)
        }
    }
}
