//
//  QuestionScreen.swift
//  Quizzo
//
//  Created by Aritra on 07/04/24.
//

import SwiftUI

struct QuestionScreen: View {
    @EnvironmentObject var manager: QuizzoManager
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("General Knowledge")
                    .font(.title2)
                    .foregroundStyle(Color(.black))
                
                Spacer()
                
                Text("\(manager.index + 1) out of \(manager.length)")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(.black))
            }
            
            ProgressBar(progressValue: manager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(manager.question)
                    .font(.system(size: 18))
                    .bold()
                    .foregroundStyle(Color(.gray))
                    .multilineTextAlignment(.center)
                
                ForEach(manager.answerChoices, id: \.id) { answer in
                    AnswerField(answer: answer)
                        .environmentObject(manager)
                }
            }
            Button {
                manager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background:
                                manager.answerSelected ? Color(.lightGray) : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!manager.answerSelected)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    QuestionScreen()
        .environmentObject(QuizzoManager())
}
