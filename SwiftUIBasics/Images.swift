//
//  Images.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 08/08/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image(systemName: "globe")
            .resizable()
            .frame( width: 100,height: 100)
            .foregroundColor(.blue)
            
        
    }
}

#Preview {
    Images()
}
