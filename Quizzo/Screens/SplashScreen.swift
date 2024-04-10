//
//  SplashScreen.swift
//  Quizzo
//
//  Created by Aritra on 10/04/24.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive {
                WelcomeScreen()
            } else {
                Text("Quizzo")
                    .font(.largeTitle)
                    .italic()
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(.white)
    }
}

#Preview {
    SplashScreen()
}
