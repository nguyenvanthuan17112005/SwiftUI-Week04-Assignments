import Foundation

struct OnboardingData{
    static let pages: [OnboardingPage] = [
        OnboardingPage(
            imageName: "onboard1",
            title: "Easy Time Management",
            description: "Manage your tasks easily and effectively"
            
        ),
        
        OnboardingPage(
            imageName: "onboard2", title: "Increase Work Effectiveness", description: "Track progress and improve productivity"
        ),
        
        OnboardingPage(
            imageName: "onboard3", title: "Reminder Notificaiton", description: "Never miss your important tasks"
        ),
    ]
}
