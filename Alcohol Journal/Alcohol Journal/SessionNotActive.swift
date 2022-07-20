//
//  SessionNotActive.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 20.07.2022.
//

import SwiftUI

struct SessionNotActive: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    @AppStorage("onboardingItem") var onboardingItem: Int = 1
    @AppStorage("sessionActive") var sessionActive: Bool = false
    var body: some View {
        
        VStack{
            Text("On boarding done!, not active")
            CapsuleButton(color: .gray, action: {
                sessionActive = true
            }, text: "start drinking")
            CapsuleButton(color: .gray, action: {
                isOnboardingActive = true
                onboardingItem = 1
            }, text: "Here we go again")
        }
        
    }
}

struct SessionNotActive_Previews: PreviewProvider {
    static var previews: some View {
        SessionNotActive()
    }
}
