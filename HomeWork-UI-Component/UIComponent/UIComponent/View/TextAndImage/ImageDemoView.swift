import SwiftUI

struct ImageDemoView: View{
    var body: some View {
        VStack(spacing: 24){
            Text("SwiftUI Image Demo")
                .font(.title)
                .bold()
            
            VStack(spacing: 8){
                Text("Local Image (Assets)")
                    .font(.headline)
                
                Image("sample_image")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 180)
                    .cornerRadius(12)
                    .shadow(radius: 4)
            }
            
            VStack(spacing: 8){
                Text("Remote Image (URL)")
                    .font(.headline)
                
                AsyncImage(
                    url: URL(string: "https://picsum.photos/300")
                ){ phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable( )
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(12)
                        
                    case .failure:
                        Image(systemName: "photo")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                    
                    @unknown default:
                        EmptyView()
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Image")
    }
}
#Preview {
    ImageDemoView()
}
