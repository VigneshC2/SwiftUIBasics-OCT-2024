//
//  UseColorPicker.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 24/08/24.
//

import SwiftUI

struct UseColorPicker: View {
    
    @State var selectColor = Color.green
    var body: some View {
        
        ZStack{
            selectColor.ignoresSafeArea()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 300,height: 125)
                    .foregroundColor(.blue)
                    .shadow(color: .customColor1 ,radius: 10)
                ColorPicker(selection: $selectColor, supportsOpacity: true) {
                    Text("Choose Any Color")
                        .fontWeight(.bold)
                }
                .padding()
            }
            .frame(width: 300,height: 125)
            .padding()
        }
    }
}

#Preview {
    UseColorPicker()
}
