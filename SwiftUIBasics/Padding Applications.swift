//
//  Padding Applications.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 09/08/24.
//

import SwiftUI

struct Padding_Applications: View {
    var body: some View {
        Spacer(minLength: 0)
        ZStack {
            Image(systemName: "rectangle.fill")
                            .resizable()
                            //.foregroundColor(.blue)
                            .frame(width: 300 ,height: 300)
                            .foregroundColor(.blue)
                            .shadow(color: .blue.opacity(0.5), radius: 15)
                            
            
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .background(.customColor1)
                .padding(.all, 10)
                .background(.green)
            
                
        }
        
        Spacer()
            
            
            
        
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 350,height: 200)
                .foregroundColor(.mint)
            .shadow(color: .green, radius: 10)
            
            Text("I love you Sara ♥️")
                .font(.largeTitle)
                .fontWeight(.bold)
                
        }
        Spacer()
    }
        
        
}

#Preview {
    Padding_Applications()
}
