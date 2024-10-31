//
//  Navigation Stack Basics.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 21/08/24.
//

import SwiftUI

struct Navigation_Stack_Basics: View {
    var Fruit : [String] = ["apple","banana"]
    var body: some View {
            ZStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(maxWidth: .infinity,maxHeight: .infinity)
//                .edgesIgnoringSafeArea(.all)
//                
            NavigationStack {
//                NavigationLink {
//                    newScreenNavi()
//                } label: {[
//                    Text("Click me")
//                }

                ScrollView {
//                    ForEach(0..<101){ index in
//                        RoundedRectangle(cornerRadius: 25.0)
//                            .frame(width: 300 , height: 100)
//                            .foregroundColor(.blue)
//                        
//                    }
//                    .navigationTitle("Rectangle")
                    ForEach(Fruit,id: \.self){ index in
                        NavigationLink {
                            newScreenNavi(fruitName: index)
                        } label: {
                            Text(index.capitalized)
                        }
                        
                    }
                }.navigationTitle("Fruits")
            }
            
        }
            .background(Color.brown)
    }
}
struct newScreenNavi : View {
    let fruitName : String
    var body: some View {
        ZStack{
            if(fruitName == "apple" ) {
                Rectangle()
                    .frame(maxWidth: .infinity ,maxHeight: .infinity)
                    .foregroundColor(.red)
                .edgesIgnoringSafeArea(.all)
            }
            else{
                Rectangle()
                    .frame(maxWidth: .infinity ,maxHeight: .infinity)
                    .foregroundColor(.yellow)
                .edgesIgnoringSafeArea(.all)

            }
            Text(fruitName.capitalized)
                .font(.title)
                .fontWeight(.bold)
                
        }
    }
}
#Preview {
    Navigation_Stack_Basics()
}
