//
//  LevelButton.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct LevelButton: View {
    @State var isSet: Bool = false
    
    var body: some View {
        ZStack {
            NavigationLink {
                ColorExtractor()
            } label: {
                Image("LevelOne")
                    .resizable()
                    .frame(width: 85,height: 85)
            }
            if isSet == true {
                
            }
        }
    }
}

struct LevelButtonTwo: View {
    @State var isSet: Bool = false
    
    var body: some View {
        ZStack {
            Button {
                isSet.toggle()
            } label: {
                Image("LevelTwo")
                    .resizable()
                    .frame(width: 85,height: 85)
            }
            if isSet == true {
                
            }
        }
    }
}

struct LevelButtonThree: View {
    @State var isSet: Bool = false
    
    var body: some View {
        ZStack {
            Button {
                isSet.toggle()
            } label: {
                Image("LevelThree")
                    .resizable()
                    .frame(width: 85,height: 85)
            }
            if isSet == true {
                
            }
        }
    }
}

#Preview {
    LevelButton()
}
