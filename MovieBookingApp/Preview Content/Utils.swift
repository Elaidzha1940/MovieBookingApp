//  /*
//
//  Project: MovieBookingApp
//  File: Utils.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.08.2023
//
//  Status: In progress | Decorated
//
//  */

import Foundation
import SwiftUI

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners))
    }
    
    func glow(color: Color = .red, radius: CGFloat = 20) -> some View {
        self
        
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
    }
}
