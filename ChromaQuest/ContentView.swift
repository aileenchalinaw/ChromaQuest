//
//  ContentView.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var login:Bool = false
    
    var body: some View {
        if login {
            NavigationStack {
                LevelDetail()
            }
        } else {
            LaunchScreen()
                .onAppear {
                    Task {
                        try? await Task.sleep(for: .seconds(3))
                        login = true
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
