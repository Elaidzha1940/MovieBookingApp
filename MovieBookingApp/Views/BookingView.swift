//  /*
//
//  Project: MovieBookingApp
//  File: BookingView.swift
//  Created by Elaidzha Shchukin
//  Date: 08.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct BookingView: View {
    
    @State var gradient = [Color("blur").opacity(0.6), Color("blur"), Color("back"), Color("blur")]
    
    var body: some View {

        ZStack {
            Image("booking")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .topTrailing)
            
            VStack {
                LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomLeading)
                    .frame(height: 600)
            }
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            
            VStack(spacing: 0.0) {
                
                HStack {
                    
                }
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .background(Color("blur"))
        .ignoresSafeArea()
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
