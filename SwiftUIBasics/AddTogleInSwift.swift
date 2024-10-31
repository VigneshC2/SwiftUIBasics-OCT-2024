//
//  AddTogleInSwift.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 24/08/24.
//

import SwiftUI

struct AddTogleInSwift: View {
    
    @State var isTogglec : Bool = false
    @State var Status : String = ""
    
    var body: some View {
        
        VStack {
            HStack{
                Text("Wifi is")
                Text((isTogglec) ? "On" : "Off")
                    .fontWeight(.bold)
            }
            Toggle(isOn: $isTogglec) {
                Text("Wifi")
                
            }
            .toggleStyle(SwitchToggleStyle(tint: .orange))
        }
        .padding()
        .foregroundColor(.blue)
        Spacer()
        if(isTogglec){
            Text("Searching for networks")
            ProgressView()
        }
        Spacer()
        
    }
    
    func WifiStatus(){
        if(isTogglec){
            Status = "On"
        }
        else{
            Status = "Off"
        }
    }


}

#Preview {
    AddTogleInSwift()
}
