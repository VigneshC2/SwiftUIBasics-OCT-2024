//
//  Designing.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 10/08/24.
//

import SwiftUI

struct Designing: View {
    var body: some View {
        VStack{
            ZStack {
//                Rectangle()
//                    //.stroke(lineWidth: 5)
//                    .frame(height: 40)
//                    .foregroundColor(.pink)
                HStack{
                    Text(" ")
                    Image(systemName: "arrowshape.left.fill")
                        .resizable()
                        .frame(width: 25 ,height: 25)
                    Spacer()
                    Text("NIT Jamshedpur")
                        .bold()
                    Spacer()
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 25 ,height: 25)
                    Text(" ")

                }
            }
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.yellow)
                Rectangle()
                    .stroke(lineWidth: 10)
//                    .gesture(Magnificatio)
//                Text("Hi there🙂\n")
//                    .fontWeight(.semibold)
//                .font(.largeTitle)
                VStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 200 ,height: 200)
                            .foregroundColor(.pink)
                            .shadow(color : .red,radius: 10 )
                        
                        VStack (spacing : 12){
                            Text("10")
                                .fontWeight(.semibold)
                                .font(.largeTitle)
                                .underline()
                                
                            Text("August")
                                .fontWeight(.bold)
                                .font(.headline)
                        }
                        .foregroundColor(.white)
                                    }
                    
                    
                }
            }
            
            Text("Lets get started")
            
            
            Spacer()
            
            HStack{
                Text(" ")
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 25 ,height: 25)
                
                Image(systemName: "arrowshape.turn.up.forward.fill")
                    .resizable()
                    .frame(width: 25 ,height: 25)
                Spacer()
                Image(systemName: "play.display")
                    .resizable()
                    .frame(width: 25 ,height: 25)
                Image(systemName: "airtag")
                    .resizable()
                    .frame(width: 25 ,height: 25)
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 25 ,height: 25)
                Text(" ")

            }
        }    }
}

#Preview {
    Designing()
}
