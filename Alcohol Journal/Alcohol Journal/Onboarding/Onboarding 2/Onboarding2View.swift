//
//  Onboarding2View.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 15.07.2022.
//

import SwiftUI

struct Onboarding2View: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    @AppStorage("onboardingItem") var onboardingItem: Int = 2
    @AppStorage("usersName") var usersName: String = "default"
    @AppStorage("usersBirthday") var usersBirthday: Date = Date()
    @State var name: String = ""
    @State var birthday: Date = Date()
    
    @StateObject private var viewModel = ViewModel()
    
    init(){
        _name = State(initialValue: usersName)
        _birthday = State(initialValue: usersBirthday)
    }
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("onboarding2background")
                    .resizable()
                    .scaledToFit()
            }
            .ignoresSafeArea()

            VStack(spacing: 20.0){
                Spacer()
                Spacer()
                Text("First things first. Let me know your name and birthday.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 5.0)
                Spacer()
                Spacer()

                CapsuleTextField(textValue: $name, placeholder: "Name", color: .gray.opacity(0.9))
                CapsuleDatePicker(dateValue: $birthday, placeholder: "Your birthday", color: .gray.opacity(0.9))
                Spacer()
                Spacer()
                Spacer()
            }
            
            VStack{
                Spacer()
                CapsuleButton(color: Color("ColorSliderBackground"), action: {
                    moveToNextOnboardingScreen()
                    saveName()
                    saveBirthday()
                }, text: "Let's get started.")
            }
            
            
        }
    }
    
    func moveToNextOnboardingScreen(){
        isOnboardingActive = true
        onboardingItem = 3
    }
    
    func saveName(){
        usersName = name
    }
    
    func saveBirthday(){
        usersBirthday = birthday
    }
}

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
