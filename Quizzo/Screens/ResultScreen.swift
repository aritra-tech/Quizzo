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
            VStack(spacing: 20) {
                Text("Congratulations you have completed the game ! 🎉")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text("Your score is \(manager.score) out of \(manager.length)")
                    .font(.title2)
                    .bold()
                
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
