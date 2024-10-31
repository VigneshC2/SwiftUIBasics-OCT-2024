//
//  TransitionUse.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 16/08/24.
//

import SwiftUI

struct TransitionUse: View {
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 500)
                        .ignoresSafeArea(.all)
                        
        }
        
    }
}

#Preview {
    TransitionUse()
}
