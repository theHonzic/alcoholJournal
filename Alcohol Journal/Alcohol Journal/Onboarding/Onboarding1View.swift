//
//  Onboarding1View.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 14.07.2022.
//

import SwiftUI

struct Onboarding1View: View {
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 60
    @State private var buttonOffset: CGFloat = 0
    let hapticFeedback = UINotificationFeedbackGenerator()
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
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            VStack{
                Spacer()
                Slider(text: "Swipe right.", primaryColor: "ColorSliderForeground", secondaryColor: "ColorSliderBackground")
            }
        }
    }
    
    struct Onboarding1View_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding1View()
        }
    }
}
