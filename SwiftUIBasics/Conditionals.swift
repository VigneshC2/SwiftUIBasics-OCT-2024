//
//  Conditionals.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 14/08/24.
//

import SwiftUI

struct Conditionals: View {
    @State var showShadow : Bool = true ;
    @State var text1 : String = "Loading" ;
    @State var isLoading : Bool = true ;
    
    var body: some View {
        //Text("hello")
        
        Button {
            if(isLoading){
                text1 = "Paused" ;
            }
            else{
                text1 = "Loading" ;
            }
            isLoading.toggle()
        } label: {
            Text("\(text1)")
                .font(.system(size: 25))
            
            if(isLoading){
                ProgressView()
            }
        }

        
//        ZStack {
//            if showShadow{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200 ,height: 100)
//                    .foregroundColor(.red)
//                    .shadow(color: .black, radius: 10)
//            }
//            else{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200 ,height: 100)
//                    .foregroundColor(.blue)
//
//            }
//            Button {
//                if(showShadow){
//                    text1 = "Add shadow"
//                }
//                else{
//                    text1 = "Remove shadow"
//                }
//                showShadow.toggle()
//            } label: {
//                Text("\(text1)")
//                    .foregroundColor(.white)
//        }
//        }
        //.frame(minWidth: .infinity,minHeight: .infinity)
        //.background(.red)

    }
}

#Preview {
    Conditionals()
}
