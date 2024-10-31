//
//  Use TextField.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 23/08/24.
//

import SwiftUI

struct Use_TextField: View {
    
    @State var draftData : String = ""
    @State var AllData : [String] = []
    @State var isValid : Bool = false ;
    var body: some View {
        
        NavigationStack {
            TextField("Type something ...", text: $draftData)
                .padding()
                .background(Color.gray.opacity(0.3))
            .cornerRadius(10)
            .navigationTitle("Comment")
            
            Button {
                SavingDraft()
            } label: {
                Text("Save")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity,maxHeight: 55)
                    .background((isTextValid()) ? .blue : .gray)
                    .cornerRadius(10)
                
            }
            .disabled(!isTextValid())
            
            if(!isTextValid()){
                Text("Minimum 3 characters required")
            }
            
            if(!AllData.isEmpty){
                Button {
                    AllData.removeAll()
                } label: {
                    Text("Clear")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity,maxHeight: 55)
                        .background(.red)
                        .cornerRadius(10)
                }
            }
        Spacer()
            Text("Saved comments")
                .fontWeight(.bold)
            ForEach(AllData , id: \.self){  data in
                Text(data)
                
            }
        }
        
        
        
    }
    func isTextValid()->Bool{
        return (draftData.count > 2)
    }
    func SavingDraft(){
        AllData.append(draftData)
        draftData = ""
    }
}

#Preview {
    Use_TextField()
}
