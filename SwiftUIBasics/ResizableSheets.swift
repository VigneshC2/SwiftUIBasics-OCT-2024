//
//  ResizableSheets.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 05/09/24.
//

import SwiftUI

struct ResizableSheets: View {
    @State var showSheet : Bool = false ;
    @State var detents : PresentationDetent = .medium
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Button {
                        showSheet.toggle()
                    } label: {
                        Text("Press Me")
                    }
        }
        .sheet(isPresented: $showSheet, content: {
            MyView(detents: $detents)
//                .presentationDetents([.medium , .large])
                .presentationDetents([.medium,.large,.fraction(0.7),.fraction(0.9)], selection: $detents)
        })
        //        if(showSheet){
//            MyView()
//        }
    }
}

struct MyView: View {
    @Binding var detents : PresentationDetent
    var body: some View {
        
        ZStack {
            
            Color.yellow.ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .frame(width: 300 ,height: 200)
                .foregroundStyle(Color.blue)
                .shadow(color: .green, radius: 10)
            Text("My name is Vignesh")
            
            
        }
    }
}


#Preview {
    ResizableSheets()
}
