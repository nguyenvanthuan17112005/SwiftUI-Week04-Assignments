import SwiftUI

struct ImageDemoView: View {
    var body: some View {
        VStack(spacing: 8){
            Text("Remote Image (URL) ")
                .font(.headline)
            let imageURL = "https://picsum.photos/400"
            AsyncImage(url: URL(string: imageURL))
            { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(height: 180)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .clipped()
                        .cornerRadius(12)
                case .failure:
                    Image(systemName: "photo")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                    
                @unknown default:
                    EmptyView()
                }
            }
            Link(
                imageURL,
                destination: URL(string: imageURL)!
            )
            .font(.footnote)
            .foregroundColor(.blue)
            .lineLimit(1)
            .truncationMode(.middle)
        }
        
        VStack(spacing: 8){
            Text("In app")
                .font(.headline)
                .foregroundColor(.gray)
            
            Image("swiftUI")
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .clipped()
                .cornerRadius(12)
        }
        .padding()
    }
}

#Preview {
    ImageDemoView()
}
