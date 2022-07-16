//
//  onDone.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 15.07.2022.
//

import SwiftUI

struct onDone: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    @AppStorage("onboardingItem") var onboardingItem: Int = 1
    var body: some View {
        
        VStack{
            Text("On boarding done!")
            CapsuleButton(color: .gray, action: {
                isOnboardingActive = true
                onboardingItem = 1
            }, text: "Here we go again")
        }
        
    }
}

struct onDone_Previews: PreviewProvider {
    static var previews: some View {
        onDone()
    }
}
