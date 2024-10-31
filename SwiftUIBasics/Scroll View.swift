//
//  Scroll View.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 10/08/24.
//

import SwiftUI

struct Scroll_View: View {
    var body: some View {
        ScrollView{
            
            VStack {
                ForEach(0..<10){ index in
                    VStack(spacing: 0 ){
                        Rectangle()
                            .frame(height: 100)
                            .foregroundColor(.orange)
                        ZStack {
                            Rectangle()
                                .frame(height: 100)
                                .foregroundColor(.white)
                            Image(systemName: "globe")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 100)
                        }
                        
                        Rectangle()
                            .frame(height: 100)
                            .foregroundColor(.green)
                        Text("I love my India")
                            .padding()
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    Scroll_View()
}
