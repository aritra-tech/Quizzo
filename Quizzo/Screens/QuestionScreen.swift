//
//  QuestionScreen.swift
//  Quizzo
//
//  Created by Aritra on 07/04/24.
//

import SwiftUI

struct QuestionScreen: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("General Knowledge")
                    .font(.title2)
                    .foregroundStyle(Color(.black))
                
                Spacer()
                
                Text("1 out of 10")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(.black))
            }
            
            ProgressBar(progressValue: 90)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("In World of Warcraft the default UI color that signifies Druid is what?")
                    .font(.system(size: 18))
                    .bold()
                    .foregroundStyle(Color(.gray))
                    .multilineTextAlignment(.center)
                
                AnswerField(answer: Answer(text: "True", isCorrect: false))
                AnswerField(answer: Answer(text: "False", isCorrect: true))
            }
            
            PrimaryButton(text: "Next")
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    QuestionScreen()
}
