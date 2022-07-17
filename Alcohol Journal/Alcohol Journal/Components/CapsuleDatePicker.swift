//
//  CapsuleDatePicker.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 17.07.2022.
//

import SwiftUI

struct CapsuleDatePicker: View {
    @State private var capsuleWidth: Double = UIScreen.main.bounds.width - 80
    @Binding var dateValue: Date
    var placeholder: String
    var color: Color
    var body: some View {
        ZStack{
            Capsule()
                .fill(color)
                .frame(width: self.capsuleWidth, height: 80, alignment: .center)
            DatePicker(placeholder, selection: $dateValue, displayedComponents: .date)
                .frame(width: self.capsuleWidth-50, height: 80, alignment: .center)
        }
    }
}

