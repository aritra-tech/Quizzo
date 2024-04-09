//
//  TriviaScreen.swift
//  Quizzo
//
//  Created by Aritra on 08/04/24.
//

import SwiftUI

struct TriviaScreen: View {
    @EnvironmentObject var manager: QuizzoManager
    
    var body: some View {
        QuestionScreen()
            .environmentObject(manager)
    }
}

#Preview {
    TriviaScreen()
        .environmentObject(QuizzoManager())
}
