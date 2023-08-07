//  /*
//
//  Project: MovieBookingApp
//  File: TicketView.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */

import SwiftUI

struct TicketView: View {
    
    @State var animate = false
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .background(Color("blur"))
                .blur(radius: animate ? 30 : 110)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            Circle()
                .background(Color("blur1"))
                .blur(radius: animate ? 30 : 110)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            VStack(spacing: 30) {
                
                Text("Mobile Ticket")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.")
                    .frame(maxWidth: 250)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("back"), Color("back2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
