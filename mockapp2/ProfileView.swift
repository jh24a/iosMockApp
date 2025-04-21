//
//  ProfileView.swift
//  mockapp2
//
//  Created by Jose H on 8/14/24.
//

import SwiftUI

struct ProfileView: View {
    
    var user: User

    var body: some View {
        ScrollView{
            VStack {
                user.profilepic
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(40)
                Text(user.name).padding()
                
                NavigationStack{
                    HStack{
                        
                        Text("Add Friend")
                        Text("Friends")
                        
                    }
                    
                    ExchangeRow(exchange: dummyExchange)
                    Divider()
                    ExchangeRow(exchange: dummyExchange2)
                    
                }
            }
        }
        
    }
}

#Preview {
    ProfileView(user: dummyuser1)
}
