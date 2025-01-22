//
//  CircleLightView.swift
//  TrafficLight
//
//  Created by Anastasya Maximova on 19.01.2025.
//

import SwiftUI

struct CircleLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .fill(color)
            .opacity(opacity)
            .frame(width: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
    }
}

#Preview {
    CircleLightView(color: .red, opacity: 1)
}
