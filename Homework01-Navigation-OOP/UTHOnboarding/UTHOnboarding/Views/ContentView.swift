//
//  ContentView.swift
//  UTHOnboarding
//
//  Created by Nguyễn Văn Thuận on 31/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            SplashView()
                .navigationDestination(isPresented: .constant(true)){
                    OnboardingView()
                }
        }
    }
}

#Preview {
    ContentView()
}
