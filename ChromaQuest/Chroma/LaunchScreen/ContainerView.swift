//
//  ContainerView.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct ContainerView: View {
    @State private var isSplashScreenViewPresented = true
    
    var body: some View {
        if !isSplashScreenViewPresented {
            ContentView()
        } else {
            LaunchScreen()
        }
    }
}

#Preview {
    ContainerView()
}
