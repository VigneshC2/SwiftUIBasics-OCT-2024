//
//  Grid.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 10/08/24.
//

import SwiftUI

struct Grid: View {
    let column1 : [GridItem] = [
                GridItem(.fixed(100), spacing: nil, alignment: nil) ,

                GridItem(.fixed(100), spacing: nil, alignment: nil) ,
                GridItem(.fixed(100), spacing: nil, alignment: nil) ,
                GridItem(.fixed(100), spacing: nil, alignment: nil)
            ]
    var body: some View {
        ScrollView{
            VStack {
                
                LazyVGrid(columns: column1){                                ForEach(0..<52){index in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 100,height: 100)
                                            .cornerRadius(25)
                                            .foregroundColor(.yellow)
                                            .shadow(color: .blue, radius:10)
                                            .padding()
                                        Text("\(index)")
                                    }
                        }
                    }
                }
            }
        }
    }
    


#Preview {
    Grid()
}
