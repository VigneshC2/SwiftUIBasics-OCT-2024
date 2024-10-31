//
//  Sheet_In_SwiftUI.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 16/08/24.
//

import SwiftUI

struct Sheet_In_SwiftUI: View {
    @State var newSheet :Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.orange)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 130 , height: 75)
                    .foregroundColor(.blue)
                    .shadow(color: .black,radius: 10)
                Button {
                    newSheet.toggle()
                } label: {
                    Text("My Profile")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }
                .fullScreenCover(isPresented: $newSheet, content: {
                    SecondScreen()
                })
//                .sheet(isPresented: $newSheet, content: {
//                    SecondScreen()
//                })

            }
        }
    }
}

struct SecondScreen : View{
    @Environment(\.dismiss) var dismissScreen
    var body : some View{
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.red)

            VStack {
                HStack {
                    Text(" ")
                    Button {
                        dismissScreen()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                    }

                    
                    Spacer()
                }
                
                Spacer()
                Text("Hi , I am Vignesh Chaurasia")
                Spacer()
            }
        }
    }
}

#Preview {
    Sheet_In_SwiftUI()
    //SecondScreen()
}
