//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 09/08/24.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
       
        HStack{
            Rectangle()
                            .frame(width: 150 ,height: 150)
                            .foregroundColor(.blue)
                            
                        Rectangle()
                            .frame(width: 100 ,height: 100)
                            .foregroundColor(.red)
                        Rectangle()
                            .frame(width: 50 ,height: 50)
                            .foregroundColor(.green)
                        Rectangle()
                            .frame(width: 25 ,height: 25)
                            .foregroundColor(.indigo)

        }
        
        
    }
}

#Preview {
    Stacks()
}
