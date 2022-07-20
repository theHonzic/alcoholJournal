//
//  Onboarding3ViewModel.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 19.07.2022.
//

import Foundation
import SwiftUI

extension Onboarding3View{
    @MainActor class ViewModel: ObservableObject{
        @Published var isBottomSheet1Presented: Bool = false
        @Published var isBottomSheet2Presented: Bool = false
        @Published var isBottomSheet3Presented: Bool = false
        
        
        var backroundCircle1Y: Double = -350
        var bacroundCircle1X: Double = -260
        var backroundCircle2Y: Double = -400
        var bacroundCircle2X: Double = 0
        var backroundCircle3Y: Double = -180
        var bacroundCircle3X: Double = -260
        
        var diameter1: Double = 300
        var diameter2: Double = 320
        var diameter3: Double = 260
        
        func getImageToName(name: String) -> Image{
            var img: Image = Image("plus")
            
            Constants.Drinks.drinkList.forEach{drink in
                if (drink.name == name){
                    img = Image(drink.image)
                }
            }
            
            return img
        }
        
        func displayBottomSheet(which: Int){
            switch which{
            case 1:
                isBottomSheet1Presented = true
            case 2:
                isBottomSheet2Presented = true
            case 3:
                isBottomSheet3Presented = true
            default:
                print("fas")
            }
        }
    }
}
