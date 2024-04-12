//
//  TriviaScreen.swift
//  Quizzo
//
//  Created by Aritra on 08/04/24.
//

import SwiftUI

struct ResultScreen: View {
    @EnvironmentObject var manager: QuizzoManager
    
    var body: some View {
        if manager.reachedEnd {
            VStack(spacing: 30) {
                
                Image("Result_Illustration")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 143.78, height: 151.11)
                
                Text("Congratulations! 🎉")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Your score is \(manager.score) out of \(manager.length)")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button {
                    Task.init {
                        await manager.fetchQuestion()
                    }
                } label: {
                    PrimaryButton(text: "Play Again")
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AccentColor"))
            .navigationBarHidden(true)
        } else {
            QuestionScreen()
                .environmentObject(manager)
        }
    }
}

#Preview {
    ResultScreen()
        .environmentObject(QuizzoManager())
}
