//
//  AnimationUse.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 16/08/24.
//

import SwiftUI

struct AnimationUse: View {
    @State var isAnimated : Bool = false
    @State var customcColor : Color = Color.black
    @State var showAnimation:Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity , maxHeight: .infinity)
                .ignoresSafeArea()
                .foregroundColor(isAnimated ? .yellow : .orange)
            VStack {
                Button {
//                    withAnimation(.easeIn){
//                        isAnimated.toggle()
//                    }
                    isAnimated.toggle()
                    showAnimation.toggle()
                    
                } label: {
                    Text("Button")
                        .foregroundColor(.blue)
                        .font(.title)
            }
                Spacer()
                RoundedRectangle(cornerRadius:  25)
                    .foregroundColor(isAnimated ? Color.green : .pink)
                                .frame(
                                    width: (isAnimated) ? 50 : 300 ,
                                    height: 100                                 )
                                .animation(.linear, value: showAnimation)
                RoundedRectangle(cornerRadius:  25)
                    .foregroundColor(isAnimated ? Color.green : .red)
                                .frame(
                                    width: isAnimated ? 50 : 300 ,
                                    height:   100                                 )
                                .animation(.easeOut, value: showAnimation)
                
                RoundedRectangle(cornerRadius:  25)
                    .foregroundColor(isAnimated ? Color.green : .blue)
                                .frame(
                                    width: isAnimated ? 50 : 300 ,
                                    height: 100
                                )
                                .animation(.easeIn, value: showAnimation)
                
                
                RoundedRectangle(cornerRadius:  25)
                    .foregroundColor(isAnimated ? Color.green : .white)
                                .frame(
                                    width: isAnimated ? 50 : 300 ,
                                    height: 100                                 )
                                .animation(.spring(response: 0.5,dampingFraction: 0.5, blendDuration: 2.0), value: showAnimation)
                                
                Spacer()

            }

                    }
            }
}

#Preview {
    AnimationUse()
}
