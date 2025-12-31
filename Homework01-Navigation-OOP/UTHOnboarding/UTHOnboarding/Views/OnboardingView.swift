import SwiftUI

struct OnboardingView: View {
    @State private var index = 0
    let pages = OnboardingData.pages
    var body: some View {
        VStack{
            Spacer()
            
            OnboardingItemView(page: pages[index])
            
            Spacer()
            
            HStack{
                if index > 0{
                    Button("Back"){
                        index -= 1
                    }
                }
                Spacer()
                
                if index < pages.count - 1{
                    Button("Next"){
                        index += 1
                    }
                }else {
                    NavigationLink("Get Started"){
                        HomeView()
                    }
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}
