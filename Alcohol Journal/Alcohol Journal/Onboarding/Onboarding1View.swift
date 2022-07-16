//
//  Onboarding1View.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 14.07.2022.
//

import SwiftUI

struct Onboarding1View: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    @AppStorage("onboardingItem") var onboardingItem: Int = 1
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 60
    @State private var buttonOffset: CGFloat = 0
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("onboarding1background")
                    .resizable()
                    .scaledToFit()
            }
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Hey, welcome to your Alcohol Journal. Let's get started, shall we? 🤗")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 5.0)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            VStack{
                Spacer()
                Slider(action: {
                    isOnboardingActive = true
                    onboardingItem = 2
                }, text: "Swipe right.", primaryColor: Color("ColorSliderForeground"), secondaryColor: Color("ColorSliderBackground"))
            }
        }
    }
    
    struct Onboarding1View_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding1View()
        }
    }
}
