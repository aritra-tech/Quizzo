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
                
                Image("Quizzo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240)
                
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
        .background(Color("AccentColor"))
    }
}

#Preview {
    SplashScreen()
}
