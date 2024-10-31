//
//  Safe Area.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 11/08/24.
//

import SwiftUI

struct Safe_Area: View {
    var body: some View {
        ZStack {
            Text("Namaste 🙏🏼")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(.blue)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.largeTitle)
                .edgesIgnoringSafeArea(.all) // This function is not useful 
                
        }
    }
}

#Preview {
    Safe_Area()
}
