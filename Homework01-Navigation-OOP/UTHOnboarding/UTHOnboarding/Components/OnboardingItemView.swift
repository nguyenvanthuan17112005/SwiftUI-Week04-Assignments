import SwiftUI

struct OnboardingItemView: View {
    let page: OnboardingPage
    var body: some View {
        VStack(spacing: 20){
            Image(page.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
            
            Text(page.title)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(page.description)
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
