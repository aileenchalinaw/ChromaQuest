//
//  GuidanceButton.swift
//  ChromaQuest
//
//  Created by Aileen Chalina Wijaya on 29/04/24.
//

import SwiftUI

struct GuidanceButton: View {
    @State var isSet: Bool = false
    
    var body: some View {
        ZStack {
            Button {
                isSet.toggle()
            } label: {
                Image("Guidance")
            }
            if isSet == true {
                
            }
        }
    }
}

#Preview {
    GuidanceButton()
}
