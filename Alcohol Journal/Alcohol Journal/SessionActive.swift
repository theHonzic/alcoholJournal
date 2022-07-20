//
//  SessionActive.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 20.07.2022.
//

import SwiftUI

struct SessionActive: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    @AppStorage("onboardingItem") var onboardingItem: Int = 1
    @AppStorage("sessionActive") var sessionActive: Bool = true
    var body: some View {
        
        VStack{
            Text("On boarding done!, active")
            CapsuleButton(color: .gray, action: {
                sessionActive = false
            }, text: "stop drinking")
            CapsuleButton(color: .gray, action: {
                isOnboardingActive = true
                onboardingItem = 1
            }, text: "Here we go again")
        }
        
    }
}

struct SessionActive_Previews: PreviewProvider {
    static var previews: some View {
        SessionActive()
    }
}
