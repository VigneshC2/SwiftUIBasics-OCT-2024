//
//  Gradients.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 08/08/24.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        Text("Sara ♥️")
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.secondary)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                .linearGradient(colors: [.cyan
                                         ,.blue],
                                startPoint: .leading,
                                endPoint: .trailing)
            )
        
            .frame(width: 300 , height: 200)
    }
}

#Preview {
    Gradients()
}
