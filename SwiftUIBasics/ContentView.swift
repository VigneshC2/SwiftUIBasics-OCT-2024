//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 08/08/24.
//

import SwiftUI






struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                
                .foregroundStyle(.tint)
            Text("Hello, world! HI I am Vignesh a student of NIT Jamshedpur")
//                .font(.title)
//                .fontWeight(.semibold)
//                .foregroundColor(Color.orange)
//                .underline(false, color: Color.accentColor)
                .multilineTextAlignment(.center)
                .font(.system(size: 22))
                .fontDesign(.monospaced)
                .kerning(0.5)
                
        }
        .padding()
        
        // Create circle with color blue and red shading
        .background(Circle().fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        
    }
}

#Preview {
    ContentView()
}

// An enum representing a number of hobbies

