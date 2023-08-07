//  /*
//
//  Project: MovieBookingApp
//  File: Ticket.swift
//  Created by: Elaidzha Shchukin
//  Dtae: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */


import SwiftUI

struct Ticket: View {
    
    @State var image = "jhon"
    @State var title = "Jhon4Wick"
    @State var subtitle = "Chapter 4"
    @State var top = "jhon"
    @State var bottom = "jhon-bottom"
    
    @Binding var height: CGFloat
    
    var gradient = [Color("some"), Color("some").opacity(0), Color("some").opacity(0)]
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            VStack(spacing: 4.0) {
                
                Text(title)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text(subtitle)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image(top)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(top)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(30, corners: [.topLeft, .topRight])
            
            Spacer(minLength: height)
            
            VStack(spacing: 10) {
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                    .frame(width: 200, height: 1)
                    .opacity(0.6)
                
                HStack(spacing: 20) {
                    HStack(spacing: 4) {
                        Text("Date:")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                            .foregroundColor(Color("some"))
                        Text("August 6")
                            .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 4) {
                        Text("Time:")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                            .foregroundColor(Color("some"))
                        Text("August 3 p.m.")
                            .foregroundColor(.black)
                    }
                }
                
                HStack(spacing: 20) {
                    HStack(spacing: 4) {
                        Text("Row:")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                            .foregroundColor(Color("some"))
                        Text("2")
                            .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 4) {
                        Text("Seats:")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                            .foregroundColor(Color("some"))
                        Text("7, 8")
                            .foregroundColor(.black)
                    }
                }
                
                Image("code")
                    
            }
            .frame(width: 270, height: 135, alignment: .top)
            .background(.ultraThinMaterial)
            .background(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        }
        .frame(width: 460)
        .shadow(radius: 10)
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket(height: .constant(0))
    }
}
