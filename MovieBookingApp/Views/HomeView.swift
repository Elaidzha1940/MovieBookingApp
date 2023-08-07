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
    
    @State var animate = false
    
    @State var posters: [String] = ["poster", "poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    @State var posters1: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]
    
    @State var posters2: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]
    
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
            
            VStack(spacing: 0) {
                Text("Choose Movie")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ScrollSection(title: "Now Playing", posters: posters)
                        ScrollSection(title: "Coming soon", posters: posters1)
                        ScrollSection(title: "Top Movies", posters: posters2)
                        ScrollSection(title: "Favorite", posters: posters)
                    }
                }
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
