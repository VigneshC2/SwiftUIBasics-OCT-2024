//
//  ContextMenuSwiftUI.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 23/08/24.
//

import SwiftUI

struct ContextMenuSwiftUI: View {
    @State var isLike : Bool = false ;
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 300,height: 200)
                .foregroundColor(.blue)
            VStack{
                Image(systemName: "globe") ;
                Text("Hello!!");
                    
                
            }
            .foregroundColor(.white)
            
            
        }
        .contextMenu(ContextMenu(menuItems: {
            Button {
                isLike.toggle()
            } label: {
                if(isLike){
                    Text("Liked")
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .foregroundColor(.red)
                }
                else{
                    Text("Like")
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }
                    
            }
//            Button {
//                isLike.toggle()
//            } label: {
//                if(isLike){
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .frame(width: 25,height: 25)
//                        .foregroundColor(.red)
//                }
//                else{
//                    Image(systemName: "heart")
//                        .foregroundColor(.red)
//                }
//                    
//            }
            
            

            
        }))
        Text("Long Press on the above figure")
    }
}

#Preview {
    ContextMenuSwiftUI()
}
