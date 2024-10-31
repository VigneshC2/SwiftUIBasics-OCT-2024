//
//  Buttons IN swift.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 11/08/24.
//

import SwiftUI

struct Buttons_IN_swift: View {
    @State var title : String = "Normal"
    @State var image1 : String = "heart"
    @State var color1 : Color = .blue
    var body: some View {
        
        VStack(spacing : 20){
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(self.color1)
                    .frame(width: 200,height: 200)
                Text(title)
                    .bold()
                .font(.largeTitle)
                
            }
            
            Button(action: {
                if(self.title == "Normal") {
                    self.title = "Liked"
                    self.image1 = "heart.fill"
                    self.color1 = .red
                }
                else{
                    self.title = "Normal"
                    self.image1 = "heart"
                    self.color1 = .blue
                }
            }
            , label: {
                Image(systemName: image1)
                    .resizable()
                    .bold()
                    .foregroundColor(.red)
                    .frame(width: 25,height: 25)
//                Text("Like")
//                    .tint(.red)
            })
        }
        
    }
}

#Preview {
    Buttons_IN_swift()
}
