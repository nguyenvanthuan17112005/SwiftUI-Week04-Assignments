//
//  ContentView.swift
//  BasicUISwiftUI
//
//  Created by Nguyễn Văn Thuận on 23/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var hasSayHi = false
    var body: some View {
        VStack {
            Text("My First App")
                .font(.system(size: 34, weight: .bold))
                .padding(.top, 80)
            Spacer()
            if hasSayHi{
                VStack(spacing: 8){
                    Text("I'm")
                        .font(.title3)
                    Text("Nguyen Văn Thuận")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }else{
                Text("Hello")
                    .font(.title2)
            }
            Spacer()
            Button(action:{
                hasSayHi = !hasSayHi
            }){
                Text("Say Hi!")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(Color(red: 0.15, green: 0.35, blue: 0.7))
                    .cornerRadius(12)
            }
            .padding(.bottom, 80)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        
    }
}

#Preview {
    ContentView()
}
