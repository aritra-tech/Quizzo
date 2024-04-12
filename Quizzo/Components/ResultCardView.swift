//
//  ResultCardView.swift
//  Quizzo
//
//  Created by Aritra on 12/04/24.
//

import SwiftUI

struct ResultCardView: View {
    
    let card: CardData
    var body: some View {
        HStack {
            Text(card.title)
                .font(.system(size: 16, weight: .medium))
            
            Spacer()
            
            Text("\(card.value)")
                .font(.system(size: 16, weight: .bold))
            
        }
        .padding()
        .background(Color("CardColor"))
        .cornerRadius(8)
    }
}

#Preview {
    ResultCardView(card: CardData(title: "Total Number of questions", value: 10))
}
