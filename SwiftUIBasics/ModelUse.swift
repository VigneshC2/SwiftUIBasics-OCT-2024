//
//  ModelUse.swift
//  SwiftUIBasics
//
//  Created by Vignesh Rajesh Chaurasia on 29/08/24.
//

struct UserModel : Identifiable{
    let id : String
    let displayName : String
    let username : String
    let followerCount : Int
    let isVeified : Bool
}
import SwiftUI
var Users : [UserModel] = [
    UserModel(id: "10", displayName: "Vignesh", username: "VighneshC2", followerCount: 111, isVeified: true),
    UserModel(id: "11", displayName: "Krishna", username: "vkrishna", followerCount: 113, isVeified: true),
    UserModel(id: "13", displayName: "Lalit", username: "mjolnir83", followerCount: 108, isVeified: false),
]
struct ModelUse: View {
    var body: some View {
        NavigationStack{
            List{
                ForEach(Users){user in
                    HStack(spacing: 10){
                        Circle()
                            .frame(width: 25,height: 25)
                        VStack{
                            Text("\(user.displayName)")
                            Text("@\(user.username)")
                                .font((.caption))
                                
                        }
                        Spacer()
                        
                        if user.isVeified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                        }
                    }

                }
            }
            .navigationTitle(
                Text("Users")
                
            )
            
        }
    }
}

#Preview {
    ModelUse()
}
