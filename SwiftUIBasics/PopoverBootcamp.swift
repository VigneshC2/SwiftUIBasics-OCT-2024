//
//  PopoverBootcamp.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 17/08/24.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var newPage : Bool = false ;
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    newPage.toggle()
                } label: {
                    Text("Button")
                        .font(.title)
                        .foregroundColor(.red)
            }
                if(newPage){
                    NewScreen(showScreen: $newPage)
                        .transition(.move(edge: .bottom))
                        //.animation(.spring())
                }
            }
//            .fullScreenCover(isPresented: $newPage, content: {
//                NewScreen()
//            })
            
        }
    }
    
}
struct NewScreen : View {
    @Environment(\.dismiss) var dismissScreen
    @Binding var showScreen : Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            Button {
                dismissScreen()
                showScreen.toggle()
            } label: {
                Image(systemName: "arrowshape.backward")
                    .foregroundColor(.white)
                    .padding()
                
            }

        }
    }
}
#Preview {
    PopoverBootcamp()
    //NewScreen()
}
