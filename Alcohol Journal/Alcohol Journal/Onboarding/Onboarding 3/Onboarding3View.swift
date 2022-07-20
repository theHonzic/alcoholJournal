//
//  Onboarding3.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 18.07.2022.
//

import SwiftUI

struct Onboarding3View: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    @AppStorage("onboardingItem") var onboardingItem: Int = 3
    @AppStorage("selected1") var selected1: String = ""
    @AppStorage("selected2") var selected2: String = ""
    @AppStorage("selected3") var selected3: String = ""
    
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            Circle()
                .offset(x: viewModel.bacroundCircle1X, y: viewModel.backroundCircle1Y)
                .fill(Color("ColorSliderBackground").opacity(0.63))
                .frame(width: viewModel.diameter1, height: viewModel.diameter1)
            Circle()
                .offset(x: viewModel.bacroundCircle2X, y: viewModel.backroundCircle2Y)
                .fill(Color("ColorSliderBackground").opacity(0.8))
                .frame(width: viewModel.diameter2, height: viewModel.diameter2)
            Circle()
                .offset(x: viewModel.bacroundCircle3X, y: viewModel.backroundCircle3Y)
                .fill(Color("ColorSliderBackground").opacity(0.76))
                .frame(width: viewModel.diameter3, height: viewModel.diameter3)
            
            VStack{
                
                Spacer()
                
                Text("Let us know, what drinks you enjoy the most! Plase pick three of your favorite ones. 🍸")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 5.0)
                
                Spacer()
                
                HStack(spacing: 30.0){
                    if selected1.isEmpty {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: Image("plus"), caption: "Add", action: {viewModel.displayBottomSheet(which: 1)}, selectable: false, addWhich: 1)
                            .sheet(isPresented: $viewModel.isBottomSheet1Presented){
                                PickADrinkBottomSheet(presented: $viewModel.isBottomSheet1Presented, addWhich: 1)
                            }
                    } else {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: viewModel.getImageToName(name: selected1), caption: selected1, action: {viewModel.displayBottomSheet(which: 1)}, selectable: false, addWhich: 1)
                        
                    }
                    
                    if selected2.isEmpty {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: Image("plus"), caption: "Add", action: {viewModel.displayBottomSheet(which: 2)},selectable: false, addWhich: 2)
                            .sheet(isPresented: $viewModel.isBottomSheet2Presented){
                                PickADrinkBottomSheet(presented: $viewModel.isBottomSheet2Presented, addWhich: 2)
                            }
                    } else {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: viewModel.getImageToName(name: selected2), caption: selected2, action: {
                            viewModel.displayBottomSheet(which: 2)
                        },selectable: false, addWhich: 2)
                        
                    }
                    
                    if selected3.isEmpty {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: Image("plus"), caption: "Add", action: {viewModel.displayBottomSheet(which: 3)},selectable: false, addWhich: 3)
                            .sheet(isPresented: $viewModel.isBottomSheet3Presented){
                                PickADrinkBottomSheet(presented: $viewModel.isBottomSheet3Presented, addWhich: 3)
                            }
                    } else {
                        RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: viewModel.getImageToName(name: selected2), caption: selected3, action: {viewModel.displayBottomSheet(which: 3)},selectable: false, addWhich: 3)
                    }
                    
                }
                
                Spacer()
                
                CapsuleButton(color: .red, action: {
                    finishOnboarding()
                }, text: "Lets start")
                
            }
        }
    }
    
    func finishOnboarding(){
        if (selected2.isEmpty || selected1.isEmpty || selected3.isEmpty){
            //dialog asi
        } else {
            isOnboardingActive = false
            onboardingItem = 1
        }
    }
    
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
