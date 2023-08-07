//  /*
//
//  Project: MovieBookingApp
//  File: HomeView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct HomeView: View {
    var body: some View {

        ZStack {
            VStack {
                
                Text("Choose Movie")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("back"), Color("back1")], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
