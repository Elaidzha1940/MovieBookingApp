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
    
    TicketModel(image: "", title: "", subtitle: "", top: "", bottom: "")
    TicketModel(image: "", title: "", subtitle: "", top: "", bottom: "")
    TicketModel(image: "", title: "", subtitle: "", top: "", bottom: "")
]
