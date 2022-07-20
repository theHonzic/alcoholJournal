//
//  CapsuleButton.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 15.07.2022.
//

import SwiftUI

struct CapsuleButton: View {
    var color: Color
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    let action: () -> Void
    var text: String
    @State private var capsuleWidth: Double = UIScreen.main.bounds.width - 60
    var body: some View {
        ZStack{
            Capsule()
                .fill(color)
                .frame(width: self.capsuleWidth, height: 80, alignment: .center)
            Button(action: {
                action()
            }){
                Text("")
                    .frame(width: self.capsuleWidth, height: 80, alignment: .center)
            }
            
            Text(self.text)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
            
        }
    }
}

