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
    
    var body: some View {
        
        VStack {
            
            TabView(selection: $currentTab) {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
