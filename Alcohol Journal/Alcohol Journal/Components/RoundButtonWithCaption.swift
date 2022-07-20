//
//  RoundButtonWithCaption.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 19.07.2022.
//

import SwiftUI

struct RoundButtonWithCaption: View {
    
    @AppStorage("selected1") var selected1: String = ""
    @AppStorage("selected2") var selected2: String = ""
    @AppStorage("selected3") var selected3: String = ""
    
    //75 diameter looks ideal to me
    var diameter: Double
    @State var image: Image
    @State var caption: String
    let action: () -> Void
    
    var selectable: Bool
    
    var addWhich: Int?
    
    @State var selected: Bool = false
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(.gray)
                    .frame(width: self.diameter, height: self.diameter, alignment: .center)
                Ellipse()
                    .stroke(.black, lineWidth: 3)
                    .frame(width: self.diameter, height: self.diameter, alignment: .center)
                self.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: self.diameter - 20, height: self.diameter - 20, alignment: .center)
                
                if selectable && selected{
                    Circle()
                        .fill(.green.opacity(0.4))
                        .frame(width: self.diameter, height: self.diameter, alignment: .center)
                    Ellipse()
                        .stroke(.green, lineWidth: 3)
                        .frame(width: self.diameter, height: self.diameter, alignment: .center)
                }
                
                Button(action: {
                    action()
                    onTap()
                }){
                    Text("")
                        .frame(width: self.diameter, height: self.diameter, alignment: .center)
                }
                
            }
            Text(caption)
                .font(.caption2)
                .multilineTextAlignment(.center)
                .frame(width: self.diameter, alignment: .center)
        }
        
    }
    
    func onTap(){
        selected.toggle()
        switch addWhich{
        case 1:
            if selected && selectable{
                selected1 = self.caption
                print("\(self.caption)selected at index \(self.addWhich ?? 666)")
            } else {
                selected1 = ""
                print("\(self.addWhich ?? 666) index cleared")
            }
        case 2:
            if selected && selectable{
                selected2 = self.caption
                print("\(self.caption)selected at index \(self.addWhich ?? 666)")
            } else {
                selected2 = ""
                print("\(self.addWhich ?? 666) index cleared")
            }
        case 3:
            if selected && selectable{
                selected3 = self.caption
                print("\(self.caption)selected at index \(self.addWhich ?? 666)")
            } else {
                selected3 = ""
                print("\(self.addWhich ?? 666) index cleared")
            }
        default:
            print("default")
        }
    }
}


