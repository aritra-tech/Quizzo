//
//  AnswerField.swift
//  Quizzo
//
//  Created by Aritra on 08/04/24.
//

import SwiftUI

struct AnswerField: View {
    
    var answer: Answer
    
    @State private var isSelected = false
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "circle")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundStyle(Color(answer.isCorrect ? green : red))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.lightGray))
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray ,radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
    }
}

#Preview {
    AnswerField(answer: Answer(text: "Question", isCorrect: false))
}
