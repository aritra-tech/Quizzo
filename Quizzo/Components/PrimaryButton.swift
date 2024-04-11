//
//  PrimaryButton.swift
//  Quizzo
//
//  Created by Aritra on 07/04/24.
//

import SwiftUI

struct PrimaryButton: View {
    
    var text: String
    var background: Color = Color("Green")
    
    var body: some View {
        Text(text)
            .frame(width: 300, height: 30)
            .foregroundStyle(Color(.white))
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(8)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
