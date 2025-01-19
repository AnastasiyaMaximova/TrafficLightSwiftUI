//
//  ContentView.swift
//  TrafficLight
//
//  Created by Anastasya Maximova on 19.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var redAlpha = 0.6
    @State private var yellowAlpha = 0.6
    @State private var greenAlpha = 0.6
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    var body: some View {
        VStack() {
            CircleLightView(color: .red, alpha: redAlpha)
            CircleLightView(color: .yellow, alpha: yellowAlpha)
            CircleLightView(color: .green, alpha: greenAlpha)
            
            Spacer()
            
            Button(action:{changeColor()})
            {
                Text(buttonTitle)
                    .font(.largeTitle)
            }
            .foregroundStyle(.white)
            .frame(width: 200, height: 60)
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(.blue)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(Color.white, lineWidth: 6)
            )
            .padding(.bottom, 20)
        }
        .padding()
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}


//-MARK: changeColor func

extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
    
    private enum ChangeLight: Double {
        case on = 0.0
        case off = 0.6
    }
    
    func changeColor() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .red:
            redAlpha = ChangeLight.on.rawValue
            greenAlpha = ChangeLight.off.rawValue
            currentLight = .yellow
        case .yellow:
            redAlpha = ChangeLight.off.rawValue
            yellowAlpha = ChangeLight.on.rawValue
            currentLight = .green
        case .green:
            greenAlpha = ChangeLight.on.rawValue
            yellowAlpha = ChangeLight.off.rawValue
            currentLight = .red
        }
    }
}
