//
//  ContentView.swift
//  mockapp2
//
//  Created by Jose H on 8/5/24.
//

import SwiftUI


struct User  {
    
    //lots of things missing
    var name: String
    var profilepic:Image = Image(systemName: "person.crop.circle.fill")
    
    //id
    //username
    var friends_list: [User]?       // maybe change it later to a list of strings containing user ids or something like that
    var lana_ex: [LanaExchange]? // list of lana exchanges involving the user -- maybe also just a list of ids of transactions
    
}

/*  //I tried to make the struct user hashable.  found a way to use navlink wihout hashing
extension User {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name && lhs.profilepic == rhs.profilepic
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        
    }
}
*/

struct LanaExchange: Identifiable{
    
    let id = UUID()
    let user: User
    let recipient: User
    let amount: String // TODO: float or string?
    let message: String
    let isPayment: Bool
    //var likes   ---> a list of  users
    //var comments ---> dictionary of users as key and comments,timestap,likes as value
}

/*
extension LanaExchange {
    static func == (lhs: LanaExchange, rhs: LanaExchange) -> Bool {
        return lhs.user.name == rhs.user.name && lhs.user.profilepic == rhs.user.profilepic
        &&  lhs.recipient.name == rhs.recipient.name && lhs.recipient.profilepic == rhs.recipient.profilepic
        &&  lhs.amount == rhs.amount && lhs.message == rhs.message && lhs.isPayment == rhs.isPayment
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(user)
        hasher.combine(recipient)
        hasher.combine(amount)
        hasher.combine(message)
        hasher.combine(isPayment)
    }
}
*/


struct ContentView: View {
    var body: some View {
        VStack {
            Text("LANA")
            
            NavigationStack{
                
                ScrollView{
                        
                    ExchangeRow(exchange: dummyExchange)
                    Divider()
                    ExchangeRow(exchange: dummyExchange2)
                    

    
   
                }
            }
            
        
            
        }
        .padding()
        .frame(minWidth: 400, minHeight: 500) //might change
        //.background(Color.white)
    }
}


#Preview {
    ContentView()
}









// ############ DUMMY VARIABLES #############
var dummyuser1: User = User(name: "user1")
var dummyuser2: User = User(name: "user2")

var dummyExchange: LanaExchange = LanaExchange(user: dummyuser1, recipient: dummyuser2, amount:"23.3", message:"woah dud, far outtt", isPayment: true)
var dummyExchange2: LanaExchange = LanaExchange(user: dummyuser2, recipient: dummyuser1, amount:"23.3", message:"that is so crazy", isPayment: false)
// ########### DUMMY VARIABLES ##############


