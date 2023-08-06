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
    var body: some View {
        
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                
                Text("Movie")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text("Movie1")
                    .font(.system(size: 20, weight: .regular, design: .rounded))

            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 20))
            .frame(width: 250, height: 330, alignment: .top)
        }
        .frame(width: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket()
    }
}