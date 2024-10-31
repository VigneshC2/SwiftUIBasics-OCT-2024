//
//  List use in SwiftUI.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 22/08/24.
//

import SwiftUI

struct List_use_in_SwiftUI: View {
    @State var Fruits = ["apple","banana","orange","papaya","mango","guava"] ;
    var body: some View {
        NavigationStack{
            Section(header : Text("Fruits")
                    , content:  {
                List{
                                ForEach( Fruits , id: \.self){ fruit in
                                    Text(fruit.capitalized)
                                    
                                }
                                .onDelete(perform: { indexSet in
                                    delete1(indexSet: indexSet)
                                })
                    
                }
                .navigationTitle("Grocery List")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                }
                
            })
            .navigationBarItems(trailing:
                                    Button("Add" ,action: {
                add() ;
            }))
        }
        //.navigationTitle("Grocery List")

            
                }
    func delete1(indexSet : IndexSet) -> Void{
                Fruits.remove(atOffsets: indexSet)

            }
    func add(){
        Fruits.append("Coconut")
        
    }
}

#Preview {
    List_use_in_SwiftUI()
}
