import SwiftUI

struct ChooseListTypeView: View{
    var body: some View{
        NavigationStack{
            VStack(spacing: 20){
                Spacer()
                
                NavigationLink{
                    ColumnView()
                } label: {
                    Text("Column (1,000,000 item)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                NavigationLink{
                    LazyColumnView()
                } label: {
                    Text("Lazy Column (1,000,000 item)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Choose List Type")
        }
    }
}


