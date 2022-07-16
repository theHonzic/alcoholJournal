//
//  Onboarding3View.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 15.07.2022.
//

import SwiftUI

struct Onboarding3View: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    @AppStorage("onboardingItem") var onboardingItem: Int = 3

    var body: some View {
        
        VStack{
            Text("Onboarding 3!")
            CapsuleButton(color: .gray, action: {
                isOnboardingActive = false
                onboardingItem = 1
            }, text: "Onboarding done")
        }
        
    }
}

struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
