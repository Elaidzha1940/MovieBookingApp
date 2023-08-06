//  /*
//
//  Project: MovieBookingApp
//  File: Ticket.swift
//  Created by: Elaidzha Shchukin
//  Dtae: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */


import SwiftUI

struct Ticket: View {
    
    var gradient = [Color("cyan"), Color("cyan").opacity(0), Color("cyan").opacity(0)]
    
    var body: some View {
        
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                
                Text("Sherlok")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text("Sherlok")
                    .font(.system(size: 20, weight: .regular, design: .rounded))
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
            Image("sherlok-top")
                .resizable()
                .aspectRatio(contentMode: .fill)
            )
            .mask (
                Image("sherlok-top")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(LinearGradient(colors: <#T##[Color]#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>))
            }
        }
        .frame(width: 460)
        .shadow(radius: 10)
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket()
    }
}
