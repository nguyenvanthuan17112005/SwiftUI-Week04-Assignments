import SwiftUI

struct NavigationStackDemoView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 20){
                Text("NavigationStack Demo")
                    .font(.title)
                    .bold()
                
                NavigationLink("Go to Detail"){
                    DetailView()
                }
                
            }
            .navigationTitle("NavigationStack")
        }
    }
}

struct DetailView : View {
    var body: some View {
        VStack{
            Text("Detail Screen")
                .font(.largeTitle)
        }
        .navigationTitle("Detail")
    }
}
