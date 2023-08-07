//  /*
//
//  Project: MovieBookingApp
//  File: CustomTabBar.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var currentTab: Tab
    
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Image(tab.rawValue)
                    .renderingMode(.template)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity)
        .background(.red)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
