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
            VStack {
                Text("Congratulations you have completed the game ! 🎉")
                
                Text("Your score is \(manager.score) out of \(manager.length)")
                
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
