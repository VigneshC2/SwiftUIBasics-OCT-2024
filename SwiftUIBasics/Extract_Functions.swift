//
//  Extract_Functions.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 12/08/24.
//
// Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))
import SwiftUI

struct Extract_Functions: View {
    @State var backgroundcolor = Color.pink;
    
    var body: some View {
        ZStack {
            backgroundcolor.edgesIgnoringSafeArea(.all)
            Button {
                        ButtonPressed()
                    } label: {
                        Text("Press Me")
                            .frame(width: 100 , height: 100)
                            .background(.orange)
                            .cornerRadius(25.0)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
        }
        
            
    }
    
    func ButtonPressed()->Void{
        if(backgroundcolor == .pink){
            backgroundcolor = .red
        }
        else if(backgroundcolor == .red){
            backgroundcolor = .blue
        }
        else if(backgroundcolor == .blue){
            backgroundcolor = .pink
        }
    }
}

#Preview {
    Extract_Functions()
}
