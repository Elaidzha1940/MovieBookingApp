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
    
    var backgroundColors = [Color("some"), Color("blur"), Color("blur1")]
    
    var gradientCircle = [Color("some"), Color("some").opacity(0.1), Color("some")]
    
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button  {
                        withAnimation(.easeInOut) {
                            currentTab = tab
                        }
                    } label: {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .offset(y: currentTab == tab ? -15 : 0)
                           
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(alignment: .leading) {
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 80, height: 80)
                    .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 0)
                    .overlay(
                    Circle()
                        .trim(from: 0, to: CGFloat(0.5))
                        .stroke(
                            LinearGradient(colors: gradientCircle, startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 2)
                        )
                        .rotationEffect(.degrees(135))
                        .frame(width: 80, height: 80)
                    )
            }
        }
        .frame(height: 25)
        .padding(.top, 30)
        .background(.ultraThinMaterial)
        .background(LinearGradient(colors: backgroundColors, startPoint: .leading, endPoint: .trailing))
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
