//  /*
//
//  Project: MovieBookingApp
//  File: Tickets.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct Tickets: View {
    
    @State  var tickets: [TicketModel] = [
        
        TicketModel(image: "jhon", title: "Jhon4Wick", subtitle: "Chapter 4", top: "jhon-top", bottom: "jhon-bottom"),
        TicketModel(image: "oppenheimer", title: "Oppenheimer", subtitle: "A Film by Christopher Nolan", top: "oppenheimer-top", bottom: "oppenheimer-bottom"),
        TicketModel(image: "mission", title: "Mission Impossible 7", subtitle: "Dead Reckoning Part One", top: "mission-top", bottom: "mission-bottom"),
    ]
    
    var body: some View {
        
        ZStack {
            ForEach(tickets) { ticket in
                
                InfiniteStackView(tickets: $tickets, ticket: ticket)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct Tickets_Previews: PreviewProvider {
    static var previews: some View {
        Tickets()
    }
}

struct InfiniteStackView: View {
    
    @Binding var tickets: [TicketModel]
    var ticket: TicketModel
    
    @State var height: CGFloat = 0
    
    var body: some View {
        
        VStack {
            Ticket(title: ticket.title, subtitle: ticket.subtitle, top: ticket.top, bottom: ticket.bottom, height: $height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .zIndex(Double(CGFloat(tickets.count) - getIndex()))
    }
    
    func getIndex() -> CGFloat {
        let index = tickets.firstIndex { ticket in
            return self.ticket.id == ticket.id
        } ?? 0
        
        return CGFloat(index)
    }
}
