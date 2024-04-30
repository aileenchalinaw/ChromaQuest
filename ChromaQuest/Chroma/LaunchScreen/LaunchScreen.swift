//
//  LaunchScreen.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI
import Lottie


struct LottieView: UIViewRepresentable {
    let loopMode: LottieLoopMode

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: "Sparkle")
        animationView.play()
        animationView.loopMode = loopMode
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Image("Background")
                .ignoresSafeArea()
         
            ZStack {
                Image("GifLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 330).offset(y:-200)
                    .padding()
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
