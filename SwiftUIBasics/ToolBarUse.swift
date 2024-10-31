//
//  ToolBarUse.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 31/08/24.
//

import SwiftUI

struct ToolBarUse: View {
    @State var paths : [String] = []
    @State var isLiked = false
    var body: some View {
        NavigationStack(path: $paths){
            VStack{
                ScrollView{
                    ForEach(0..<20){ index in
                        Rectangle()
                            .frame(width: 300 , height: 200)
                            .cornerRadius(25)
                            .foregroundStyle(.red)
                    }
                }
            }
            .navigationTitle("Views")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        paths.append("Hello")
                    } label: {
                        Image(systemName: "gear")
                    }
                    
                }
            }
            .toolbarTitleMenu {
                VStack {
                    Button {
                        paths.append("Screen 1")
                    } label: {
                        Text("Screen 1 ")
                }
                    Button {
                                        paths.append("Screen 2")
                                    } label: {
                                        Text("Screen 2 ")
                                    }
                }
                
                

            }
            .navigationDestination(for: String.self, destination: { i in
                Text("New \(i)")
            })
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button {
                            isLiked.toggle()
                        } label: {
                            Image(systemName: (isLiked) ? "heart.fill" : "heart")
                                .foregroundStyle(.red)
                                .animation(.easeInOut, value: 1)
                        }

                        Spacer()
                        
                        Image(systemName: "house.fill")
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ToolBarUse()
}
