//
//  LevelDetail.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct LevelDetail: View {
    
    @State private var isPopUpViewPresented = false
    
    var body: some View {
        ZStack {
            Image("Map")
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    //                    Button {
                    //                        // Action for the button
                    //                    } label: {
                    //                        Image("Guidance")
                    //                            .resizable()
                    //                            .scaledToFit()
                    //                            .frame(width: 70)
                    //                            .padding()
                    //                    }
                    Spacer()
                    
                    Button(action: {
                        isPopUpViewPresented = true
                    }) {
                        Image("Guidance")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                        
                    }
                }
                .padding(.horizontal, 25)
                .padding(.top, 35.0)
                Spacer()
                VStack {
                    HStack{
                        //                        Spacer()
                        LevelButton().offset(x:120,y:-155)
                        
                        Spacer()
                        
                        LevelButtonTwo() .offset(x:120,y:-420)
                        
                        Spacer()
                        
                        LevelButtonThree() .offset(x:-280,y:-550)
                    }
                    
                    
                }
                .padding(.trailing, 2.0)
            }
            
        }
        .overlay {
            if isPopUpViewPresented {
                ZStack {
                    Color.black.opacity(0.5) .ignoresSafeArea()
                    
                    ZStack(alignment: .topLeading) {
                        Image("PopUpMap")
                        Button(action: {isPopUpViewPresented = false},
                               label: {
                        Image("CloseButton")
                                .resizable()
                                .frame(width: 45, height: 45)
                        })
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    LevelDetail()
}
