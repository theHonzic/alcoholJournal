//
//  PickThreeBottomSheet.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 19.07.2022.
//

import SwiftUI

struct PickADrinkBottomSheet: View {
    @State var count: Int = 0
    @Binding var presented: Bool
    var addWhich: Int
    var body: some View {
        ScrollView(.vertical){
            Text("Pick a drink. (\(count))")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70, maximum: 80), spacing: 40)]){
                ForEach(Constants.Drinks.drinkList, id: \.self){drink in
                    RoundButtonWithCaption(diameter: Constants.Dimensions.roundButtonDiameter, image: Image("\(drink.image)"), caption: drink.name, action: {
                            count += 1
                        presented = false
                    }, selectable: true, addWhich: self.addWhich)
                }
            }
        }
    }
}

struct PickThreeBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        PickADrinkBottomSheet(presented: .constant(true), addWhich: 2)
    }
}
