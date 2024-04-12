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
                ProgressBar(progressValue: manager.progress)
                
                Text("\(manager.index + 1) / \(manager.length)")
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundStyle(Color(.lightGray))
            }
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text(manager.question)
                    .font(.system(size: 22))
                    .foregroundStyle(Color(.black))
                    .bold()
                    .multilineTextAlignment(.center)
                
                ForEach(manager.answerChoices, id: \.id) { answer in
                    AnswerField(answer: answer)
                        .environmentObject(manager)
                }
            }
            
            Spacer()
            
            Button {
                manager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background:
                                manager.answerSelected ? Color("Green") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!manager.answerSelected)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color("AccentColor"))
        .navigationBarHidden(true)
    }
}

#Preview {
    QuestionScreen()
        .environmentObject(QuizzoManager())
}
