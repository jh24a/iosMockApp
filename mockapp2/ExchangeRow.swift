//
//  ExchangeRow.swift
//  mockapp2
//
//  Created by Jose H on 8/14/24.
//

import SwiftUI

struct ExchangeRow: View {
    
    var exchange: LanaExchange
    
    var body: some View {
        VStack{
            HStack{
                //Image of user
                NavigationLink(destination: ProfileView(user: exchange.user)){
                    exchange.user.profilepic.resizable().frame(width:35, height:35)
                }.buttonStyle(PlainButtonStyle())
                
                //user
                NavigationLink(destination: ProfileView(user: exchange.user),
                               label: {Text(exchange.user.name).bold() }
                ).buttonStyle(PlainButtonStyle())
            
                //charged or paid
                Text(exchange.isPayment ? "paid" : "charged")
                //recipient
                NavigationLink(destination: ProfileView(user: exchange.recipient)){
                    Text(exchange.recipient.name)
                }.buttonStyle(PlainButtonStyle())
                
                

            }
            
            Text(exchange.message)
            
            

        }.padding()
                
                
    }
}

#Preview {
    ExchangeRow(exchange: dummyExchange)
}
