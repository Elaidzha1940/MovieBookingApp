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
    
    TicketModel(image: "jhon", title: "Jhon4Wick", subtitle: "Chapter 4", top: "jhon-top", bottom: "jhon-bottom"),
    TicketModel(image: "oppenheimer", title: "Oppenheimer", subtitle: "A Film by Christopher Nolan", top: "oppenheimer-top", bottom: "oppenheimer-bottom"),
    TicketModel(image: "mission", title: "Mission Impossible 7", subtitle: "Dead Reckoning Part One", top: "mission-top", bottom: "mission-bottom"),
]
