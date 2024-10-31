//
//  Use Tap Gesture.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 27/08/24.
//

import SwiftUI
/// MARK : Body
struct Use_Tap_Gesture: View {
    
    @State var colorChange : Bool = false
    var body: some View {
        VStack(spacing: 40){
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 300,height: 200)
                    .foregroundColor((colorChange) ? .red : .blue)
                    .onTapGesture(count: 2) {
                        colorChange.toggle()
                    }
                    
            }
            
            Button {
                colorChange.toggle()
            } label: {
                Text("Press Me")
                    .bold()
            }
            
            Text("Extra button")
                .onTapGesture(count: 2, perform: {
                    colorChange.toggle()
                })
            
            Button {
                
            } label: {
                Image(systemName: (!colorChange) ? "heart" : "heart.fill")
                    .foregroundColor(.red)
            }

        }
    }
}

#Preview {
    Use_Tap_Gesture()
}
