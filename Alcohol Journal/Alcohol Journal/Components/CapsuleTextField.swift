//
//  CapsuleTextField.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 15.07.2022.
//

import SwiftUI

struct CapsuleTextField: View {
    @State private var capsuleWidth: Double = UIScreen.main.bounds.width - 80
    @Binding var textValue: String
    var placeholder: String
    var color: Color
    var body: some View {
        ZStack{
            Capsule()
                .fill(color)
                .frame(width: self.capsuleWidth, height: 80, alignment: .center)
            TextField(placeholder, text: $textValue)
                .frame(width: self.capsuleWidth-50, height: 80, alignment: .center)
        }
    }
}
