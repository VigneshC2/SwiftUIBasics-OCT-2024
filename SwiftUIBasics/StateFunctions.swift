//
//  StateFunctions.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 11/08/24.
//

import SwiftUI

struct StateFunctions: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(1..<28){ index in
                    Section {
                        Text("Section \(index)")
                    }
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 300,height: 200)
                        .foregroundColor(.orange)
                }
            }
        }
        
    }
}

#Preview {
    StateFunctions()
}
