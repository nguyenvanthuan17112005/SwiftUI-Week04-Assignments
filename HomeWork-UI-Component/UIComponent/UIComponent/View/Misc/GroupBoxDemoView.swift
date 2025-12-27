import SwiftUI

struct GroupBoxDemoView: View{
    var body: some View{
        VStack(spacing: 20){
            Text("Group Box Demo")
                .font(.title)
            
            GroupBox(label: Label("Account Info", systemImage: "person.circle")){
                VStack(alignment: .leading, spacing: 8){
                    Text("Name: Thuan")
                    Text("Email: nguyenvanthuan17112005@gmail.com")
                }
                .padding(.top, 8)
            }
        }
        .padding()
    }
}
