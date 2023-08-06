//  /*
//
//  Project: MovieBookingApp
//  File: TicketData.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */

import Foundation

struct TicketModel: Identifiable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
    var subtitle: String
    var top: String
    var bottom: String
}

var tickets: [TicketModel] = [
    
    TicketModel(image: "sherlok", title: "Sherlok", subtitle: "Sherlok", top: "sherlok-top", bottom: "sherlok-bottom"),
    TicketModel(image: "oppenheimer", title: "Oppenheimer", subtitle: "Oppenheimer", top: "oppenheimer-top", bottom: "oppenheimer-bottom"),
    TicketModel(image: "lioness", title: "Lioness", subtitle: "Special ops: Lioness", top: "lioness-top", bottom: "lioness-bottom"),
]
