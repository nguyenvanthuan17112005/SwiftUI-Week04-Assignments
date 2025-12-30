import SwiftUI

struct RowItemView: View {
    let index: Int
    var body: some View {
        HStack{
            Text("\(index)")
                .font(.headline)
            
            VStack(alignment: .leading){
                Text("The only way to do great work")
                    .font(.subheadline)
                Text("is to love what to do")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.blue.opacity(0.2))
        .cornerRadius(10)
    }
}
