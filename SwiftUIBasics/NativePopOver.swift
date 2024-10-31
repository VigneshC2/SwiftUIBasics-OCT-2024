//
//  NativePopOver.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 30/08/24.
//

import SwiftUI

struct NativePopOver: View {
    
    @State var showPopOver : Bool = false
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
                    Button {
                        showPopOver.toggle()
                    } label: {
                        Text("Click Me")
                    }
                    .padding(20)
                    .background(Color.red)
                    .cornerRadius(20)
                    .foregroundStyle(Color.white)
                    .popover(isPresented: $showPopOver, content: {
                        Text("Helllo")
                            .presentationCompactAdaptation(.popover)
                    })
            

        }
        
        
    }
}

#Preview {
    NativePopOver()
}
