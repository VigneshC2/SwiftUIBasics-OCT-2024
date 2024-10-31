//
//  UseDatePicker.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 24/08/24.
//

import SwiftUI

struct UseDatePicker: View {
    @State var SelectedDate : Date = Date()
    

    
    var body: some View {
        DatePicker(selection: $SelectedDate,displayedComponents: [.date]) {
            Text("Enter Date")
        }
        .padding()
    }
}

#Preview {
    UseDatePicker()
}
