//
//  PrimaryButton.swift
//  Quizzo
//
//  Created by Aritra on 07/04/24.
//

import SwiftUI

struct PrimaryButton: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundStyle(Color(.white))
            .padding()
            .padding(.horizontal)
            .background(.black)
            .cornerRadius(40)
            .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
