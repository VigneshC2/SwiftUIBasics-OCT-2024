//
//  Alert IN SwiftUI.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 22/08/24.
//

import SwiftUI

struct Alert_IN_SwiftUI: View {
    
    @State var showAlert : Bool = false ;
    var body: some View {
        //Text("Hello, World!") ;
        Button {
            showAlert.toggle()
        } label: {
            Text("Click here to download")
        }
        .alert(Text("Downloading"), isPresented: $showAlert) {
//            Alert(title: Text("Keep Downloading"), message:  nil , primaryButton: .destructive(Text("Yes")) , secondaryButton: .cancel())
        }

        
    }
}

#Preview {
    Alert_IN_SwiftUI()
}
