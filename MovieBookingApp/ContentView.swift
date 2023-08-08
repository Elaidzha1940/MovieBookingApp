//  /*
//
//  Project: MovieBookingApp
//  File: ContentView.swift
//  Created by Elaidzha Shchukin
//  Date: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                
                TabView(selection: $currentTab) {
                    
                    HomeView()
                        .tag(Tab.home)
                    
                    Text("Location")
                        .tag(Tab.location)

                    TicketView()
                        .tag(Tab.ticket)
                    
                    Text("Category")
                        .tag(Tab.categoty)

                    Text("Profile")
                        .tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
