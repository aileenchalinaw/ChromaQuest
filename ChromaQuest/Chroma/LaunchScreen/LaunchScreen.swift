//
//  LaunchScreen.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Image("Background")
                .ignoresSafeArea()
         
            ZStack {
                //LottieView(name: "Sparkle", loopMode: .loop) .offset(y:-254)
                Image("Hex")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 393).offset(y:160)
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
