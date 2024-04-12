//
//  WelcomeScreen.swift
//  Quizzo
//
//  Created by Aritra on 07/04/24.
//

import SwiftUI

struct WelcomeScreen: View {
    @StateObject var quizzoManager =  QuizzoManager()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 30) {
                    Text("Q")
                        .font(.system(size: 50, weight: .heavy,design: .default))
                    
                    
                    Text("Welcome to Quizzo")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("Are you ready to text out your knowledge and learn some important stuffs")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .fontWeight(.regular)
                }
                NavigationLink {
                    ResultScreen()
                        .environmentObject(quizzoManager)
                } label: {
                    PrimaryButton(text: "Let's get started!")
                        .frame(maxWidth: 550)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color("AccentColor"))
        }
    }
}

#Preview {
    WelcomeScreen()
}
