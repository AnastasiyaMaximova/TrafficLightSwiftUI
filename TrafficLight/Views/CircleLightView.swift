//
//  CircleLightView.swift
//  TrafficLight
//
//  Created by Anastasya Maximova on 19.01.2025.
//

import SwiftUI

struct CircleLightView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .fill(color).brightness(alpha)
            .frame(width: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
            . padding(.bottom, 10)
    }
}

#Preview {
    CircleLightView(color: .red, alpha: 1)
}
