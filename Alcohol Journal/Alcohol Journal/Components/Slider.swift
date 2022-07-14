//
//  Slider.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 14.07.2022.
//

import SwiftUI

struct Slider: View {
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 60
    @State private var buttonOffset: CGFloat = 0
    var text: String
    var primaryColor: String
    var secondaryColor: String
    let hapticFeedback = UINotificationFeedbackGenerator()
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color(self.primaryColor))
            Capsule()
                .fill(Color(self.secondaryColor))
                .padding(8)
            Text(self.text)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
            HStack{
                Capsule()
                    .fill(Color(self.primaryColor))
                    .frame(width: buttonOffset + 80)
                Spacer()
            }
            HStack{
                ZStack{
                    Circle()
                        .fill(Color(self.primaryColor))
                    Circle()
                        .fill(Color(self.secondaryColor))
                        .padding(8)
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                }
                .frame(width: 80, height: 80, alignment: .center)
                .offset(x:buttonOffset)
                .gesture(
                    DragGesture()
                        .onChanged{
                            gesture in
                            if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80{
                                buttonOffset = gesture.translation.width
                            }
                        }
                        .onEnded{ _ in
                            withAnimation((Animation.easeOut(duration: 0.4))){
                                if buttonOffset > buttonWidth/2{
                                    hapticFeedback.notificationOccurred(.success)
                                    buttonOffset = buttonWidth - 80
                                    //přejít na další onboarding
                                } else {
                                    buttonOffset = 0
                                    hapticFeedback.notificationOccurred(.warning)
                                }
                            }
                        }
                )
                Spacer()
            }
        }
        .frame(width: buttonWidth, height: 80, alignment: .center)
        .opacity(1)
        .offset(y: 0)
        .padding()
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider(text: "",primaryColor: "",secondaryColor: "")
    }
}
