//
//  Initializers.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 10/08/24.
//

import SwiftUI

struct Initializers: View {
    let title : String
    let count : Int
    //let backgroundColor : Color
    
    init(count: Int, fruit : Fruit) {
        self.count = count
        if (fruit == .apple){
            self.title = "Apple"
            
        }
        else{
            self.title = "Orange"
        }
    }
    enum Fruit{
        case apple
        case orange
    }
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200 ,height: 200)
                    .foregroundColor(.orange)
                    //.shadow(color : .red,radius: 10 )
                VStack (spacing : 12){
                    Text("\(count)")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                        .underline()
                        
                    Text(title)
                        .fontWeight(.bold)
                        .font(.headline)
                }
                .foregroundColor(.white)
                            }
            
        }
        
        
        
    }
    
}

#Preview {
    Initializers(count: 45, fruit: .orange)
}
